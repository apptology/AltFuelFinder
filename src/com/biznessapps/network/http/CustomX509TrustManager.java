// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.network.http;

import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import javax.net.ssl.TrustManagerFactory;
import javax.net.ssl.X509TrustManager;

public class CustomX509TrustManager
    implements X509TrustManager
{

    private X509TrustManager standardTrustManager;

    public CustomX509TrustManager(KeyStore keystore)
        throws NoSuchAlgorithmException, KeyStoreException
    {
        standardTrustManager = null;
        TrustManagerFactory trustmanagerfactory = TrustManagerFactory.getInstance(TrustManagerFactory.getDefaultAlgorithm());
        trustmanagerfactory.init(keystore);
        keystore = trustmanagerfactory.getTrustManagers();
        if (keystore.length == 0)
        {
            throw new NoSuchAlgorithmException("Error: there are not trust manages");
        } else
        {
            standardTrustManager = (X509TrustManager)keystore[0];
            return;
        }
    }

    public void checkClientTrusted(X509Certificate ax509certificate[], String s)
        throws CertificateException
    {
        standardTrustManager.checkClientTrusted(ax509certificate, s);
    }

    public void checkServerTrusted(X509Certificate ax509certificate[], String s)
        throws CertificateException
    {
        if (ax509certificate != null && ax509certificate.length == 1)
        {
            ax509certificate[0].checkValidity();
            return;
        } else
        {
            standardTrustManager.checkServerTrusted(ax509certificate, s);
            return;
        }
    }

    public X509Certificate[] getAcceptedIssuers()
    {
        return standardTrustManager.getAcceptedIssuers();
    }
}
