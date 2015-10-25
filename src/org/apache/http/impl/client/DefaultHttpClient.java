// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.impl.client;

import org.apache.http.HttpVersion;
import org.apache.http.client.protocol.RequestAddCookies;
import org.apache.http.client.protocol.RequestAuthCache;
import org.apache.http.client.protocol.RequestClientConnControl;
import org.apache.http.client.protocol.RequestDefaultHeaders;
import org.apache.http.client.protocol.RequestProxyAuthentication;
import org.apache.http.client.protocol.RequestTargetAuthentication;
import org.apache.http.client.protocol.ResponseAuthCache;
import org.apache.http.client.protocol.ResponseProcessCookies;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.params.SyncBasicHttpParams;
import org.apache.http.protocol.BasicHttpProcessor;
import org.apache.http.protocol.RequestContent;
import org.apache.http.protocol.RequestExpectContinue;
import org.apache.http.protocol.RequestTargetHost;
import org.apache.http.protocol.RequestUserAgent;
import org.apache.http.util.VersionInfo;

// Referenced classes of package org.apache.http.impl.client:
//            AbstractHttpClient

public class DefaultHttpClient extends AbstractHttpClient
{

    public DefaultHttpClient()
    {
        super(null, null);
    }

    public DefaultHttpClient(ClientConnectionManager clientconnectionmanager)
    {
        super(clientconnectionmanager, null);
    }

    public DefaultHttpClient(ClientConnectionManager clientconnectionmanager, HttpParams httpparams)
    {
        super(clientconnectionmanager, httpparams);
    }

    public DefaultHttpClient(HttpParams httpparams)
    {
        super(null, httpparams);
    }

    public static void setDefaultHttpParams(HttpParams httpparams)
    {
        HttpProtocolParams.setVersion(httpparams, HttpVersion.HTTP_1_1);
        HttpProtocolParams.setContentCharset(httpparams, "ISO-8859-1");
        HttpConnectionParams.setTcpNoDelay(httpparams, true);
        HttpConnectionParams.setSocketBufferSize(httpparams, 8192);
        Object obj = VersionInfo.loadVersionInfo("org.apache.http.client", org/apache/http/impl/client/DefaultHttpClient.getClassLoader());
        if (obj != null)
        {
            obj = ((VersionInfo) (obj)).getRelease();
        } else
        {
            obj = "UNAVAILABLE";
        }
        HttpProtocolParams.setUserAgent(httpparams, (new StringBuilder()).append("Apache-HttpClient/").append(((String) (obj))).append(" (java 1.5)").toString());
    }

    protected HttpParams createHttpParams()
    {
        SyncBasicHttpParams syncbasichttpparams = new SyncBasicHttpParams();
        setDefaultHttpParams(syncbasichttpparams);
        return syncbasichttpparams;
    }

    protected BasicHttpProcessor createHttpProcessor()
    {
        BasicHttpProcessor basichttpprocessor = new BasicHttpProcessor();
        basichttpprocessor.addInterceptor(new RequestDefaultHeaders());
        basichttpprocessor.addInterceptor(new RequestContent());
        basichttpprocessor.addInterceptor(new RequestTargetHost());
        basichttpprocessor.addInterceptor(new RequestClientConnControl());
        basichttpprocessor.addInterceptor(new RequestUserAgent());
        basichttpprocessor.addInterceptor(new RequestExpectContinue());
        basichttpprocessor.addInterceptor(new RequestAddCookies());
        basichttpprocessor.addInterceptor(new ResponseProcessCookies());
        basichttpprocessor.addInterceptor(new RequestAuthCache());
        basichttpprocessor.addInterceptor(new ResponseAuthCache());
        basichttpprocessor.addInterceptor(new RequestTargetAuthentication());
        basichttpprocessor.addInterceptor(new RequestProxyAuthentication());
        return basichttpprocessor;
    }
}
