// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.conn.ssl;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.security.KeyManagementException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import javax.net.ssl.KeyManagerFactory;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;
import org.apache.http.conn.ConnectTimeoutException;
import org.apache.http.conn.scheme.HostNameResolver;
import org.apache.http.conn.scheme.LayeredSchemeSocketFactory;
import org.apache.http.conn.scheme.LayeredSocketFactory;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

// Referenced classes of package org.apache.http.conn.ssl:
//            AllowAllHostnameVerifier, BrowserCompatHostnameVerifier, StrictHostnameVerifier, TrustManagerDecorator, 
//            X509HostnameVerifier, TrustStrategy

public class SSLSocketFactory
    implements LayeredSchemeSocketFactory, LayeredSocketFactory
{

    public static final X509HostnameVerifier ALLOW_ALL_HOSTNAME_VERIFIER = new AllowAllHostnameVerifier();
    public static final X509HostnameVerifier BROWSER_COMPATIBLE_HOSTNAME_VERIFIER = new BrowserCompatHostnameVerifier();
    public static final String SSL = "SSL";
    public static final String SSLV2 = "SSLv2";
    public static final X509HostnameVerifier STRICT_HOSTNAME_VERIFIER = new StrictHostnameVerifier();
    public static final String TLS = "TLS";
    private volatile X509HostnameVerifier hostnameVerifier;
    private final HostNameResolver nameResolver;
    private final javax.net.ssl.SSLSocketFactory socketfactory;

    private SSLSocketFactory()
    {
        this(createDefaultSSLContext());
    }

    public SSLSocketFactory(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, HostNameResolver hostnameresolver)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this(createSSLContext(s, keystore, s1, keystore1, securerandom, null), hostnameresolver);
    }

    public SSLSocketFactory(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, TrustStrategy truststrategy, X509HostnameVerifier x509hostnameverifier)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this(createSSLContext(s, keystore, s1, keystore1, securerandom, truststrategy), x509hostnameverifier);
    }

    public SSLSocketFactory(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, X509HostnameVerifier x509hostnameverifier)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this(createSSLContext(s, keystore, s1, keystore1, securerandom, null), x509hostnameverifier);
    }

    public SSLSocketFactory(KeyStore keystore)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this("TLS", null, null, keystore, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keystore, String s)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this("TLS", keystore, s, null, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(KeyStore keystore, String s, KeyStore keystore1)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this("TLS", keystore, s, keystore1, null, null, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sslcontext)
    {
        this(sslcontext, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(SSLContext sslcontext, HostNameResolver hostnameresolver)
    {
        socketfactory = sslcontext.getSocketFactory();
        hostnameVerifier = BROWSER_COMPATIBLE_HOSTNAME_VERIFIER;
        nameResolver = hostnameresolver;
    }

    public SSLSocketFactory(SSLContext sslcontext, X509HostnameVerifier x509hostnameverifier)
    {
        socketfactory = sslcontext.getSocketFactory();
        hostnameVerifier = x509hostnameverifier;
        nameResolver = null;
    }

    public SSLSocketFactory(TrustStrategy truststrategy)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this("TLS", null, null, null, null, truststrategy, BROWSER_COMPATIBLE_HOSTNAME_VERIFIER);
    }

    public SSLSocketFactory(TrustStrategy truststrategy, X509HostnameVerifier x509hostnameverifier)
        throws NoSuchAlgorithmException, KeyManagementException, KeyStoreException, UnrecoverableKeyException
    {
        this("TLS", null, null, null, null, truststrategy, x509hostnameverifier);
    }

    private static SSLContext createDefaultSSLContext()
    {
        SSLContext sslcontext;
        try
        {
            sslcontext = createSSLContext("TLS", null, null, null, null, null);
        }
        catch (Exception exception)
        {
            throw new IllegalStateException("Failure initializing default SSL context", exception);
        }
        return sslcontext;
    }

    private static SSLContext createSSLContext(String s, KeyStore keystore, String s1, KeyStore keystore1, SecureRandom securerandom, TrustStrategy truststrategy)
        throws NoSuchAlgorithmException, KeyStoreException, UnrecoverableKeyException, KeyManagementException
    {
        String s2 = s;
        if (s == null)
        {
            s2 = "TLS";
        }
        KeyManagerFactory keymanagerfactory = KeyManagerFactory.getInstance(KeyManagerFactory.getDefaultAlgorithm());
        if (s1 != null)
        {
            s = s1.toCharArray();
        } else
        {
            s = null;
        }
        keymanagerfactory.init(keystore, s);
        s = keymanagerfactory.getKeyManagers();
        keystore = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        keystore.init(keystore1);
        keystore = keystore.getTrustManagers();
        if (keystore != null && truststrategy != null)
        {
            for (int i = 0; i < keystore.length; i++)
            {
                s1 = keystore[i];
                if (s1 instanceof X509TrustManager)
                {
                    keystore[i] = new TrustManagerDecorator((X509TrustManager)s1, truststrategy);
                }
            }

        }
        s1 = SSLContext.getInstance(s2);
        s1.init(s, keystore, securerandom);
        return s1;
    }

    public static SSLSocketFactory getSocketFactory()
    {
        return new SSLSocketFactory();
    }

    public Socket connectSocket(Socket socket, String s, int i, InetAddress inetaddress, int j, HttpParams httpparams)
        throws IOException, UnknownHostException, ConnectTimeoutException
    {
        InetSocketAddress inetsocketaddress = null;
        if (inetaddress != null || j > 0)
        {
            int k = j;
            if (j < 0)
            {
                k = 0;
            }
            inetsocketaddress = new InetSocketAddress(inetaddress, k);
        }
        if (nameResolver != null)
        {
            s = nameResolver.resolve(s);
        } else
        {
            s = InetAddress.getByName(s);
        }
        return connectSocket(socket, new InetSocketAddress(s, i), inetsocketaddress, httpparams);
    }

    public Socket connectSocket(Socket socket, InetSocketAddress inetsocketaddress, InetSocketAddress inetsocketaddress1, HttpParams httpparams)
        throws IOException, UnknownHostException, ConnectTimeoutException
    {
        if (inetsocketaddress == null)
        {
            throw new IllegalArgumentException("Remote address may not be null");
        }
        if (httpparams == null)
        {
            throw new IllegalArgumentException("HTTP parameters may not be null");
        }
        int i;
        int j;
        if (socket == null)
        {
            socket = new Socket();
        }
        if (inetsocketaddress1 != null)
        {
            socket.setReuseAddress(HttpConnectionParams.getSoReuseaddr(httpparams));
            socket.bind(inetsocketaddress1);
        }
        i = HttpConnectionParams.getConnectionTimeout(httpparams);
        j = HttpConnectionParams.getSoTimeout(httpparams);
        try
        {
            socket.setSoTimeout(j);
            socket.connect(inetsocketaddress, i);
        }
        // Misplaced declaration of an exception variable
        catch (Socket socket)
        {
            throw new ConnectTimeoutException((new StringBuilder()).append("Connect to ").append(inetsocketaddress).append(" timed out").toString());
        }
        inetsocketaddress1 = inetsocketaddress.toString();
        i = inetsocketaddress.getPort();
        httpparams = (new StringBuilder()).append(":").append(i).toString();
        inetsocketaddress = inetsocketaddress1;
        if (inetsocketaddress1.endsWith(httpparams))
        {
            inetsocketaddress = inetsocketaddress1.substring(0, inetsocketaddress1.length() - httpparams.length());
        }
        if (socket instanceof SSLSocket)
        {
            socket = (SSLSocket)socket;
        } else
        {
            socket = (SSLSocket)socketfactory.createSocket(socket, inetsocketaddress, i, true);
        }
        if (hostnameVerifier != null)
        {
            try
            {
                hostnameVerifier.verify(inetsocketaddress, socket);
            }
            // Misplaced declaration of an exception variable
            catch (InetSocketAddress inetsocketaddress)
            {
                try
                {
                    socket.close();
                }
                // Misplaced declaration of an exception variable
                catch (Socket socket) { }
                throw inetsocketaddress;
            }
        }
        return socket;
    }

    public Socket createLayeredSocket(Socket socket, String s, int i, boolean flag)
        throws IOException, UnknownHostException
    {
        socket = (SSLSocket)socketfactory.createSocket(socket, s, i, flag);
        if (hostnameVerifier != null)
        {
            hostnameVerifier.verify(s, socket);
        }
        return socket;
    }

    public Socket createSocket()
        throws IOException
    {
        return socketfactory.createSocket();
    }

    public Socket createSocket(Socket socket, String s, int i, boolean flag)
        throws IOException, UnknownHostException
    {
        return createLayeredSocket(socket, s, i, flag);
    }

    public Socket createSocket(HttpParams httpparams)
        throws IOException
    {
        return socketfactory.createSocket();
    }

    public X509HostnameVerifier getHostnameVerifier()
    {
        return hostnameVerifier;
    }

    public boolean isSecure(Socket socket)
        throws IllegalArgumentException
    {
        if (socket == null)
        {
            throw new IllegalArgumentException("Socket may not be null");
        }
        if (!(socket instanceof SSLSocket))
        {
            throw new IllegalArgumentException("Socket not created by this factory");
        }
        if (socket.isClosed())
        {
            throw new IllegalArgumentException("Socket is closed");
        } else
        {
            return true;
        }
    }

    public void setHostnameVerifier(X509HostnameVerifier x509hostnameverifier)
    {
        if (x509hostnameverifier == null)
        {
            throw new IllegalArgumentException("Hostname verifier may not be null");
        } else
        {
            hostnameVerifier = x509hostnameverifier;
            return;
        }
    }

}
