// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterOAuthView

private class <init> extends AsyncTask
{
    private class LocalWebViewClient extends WebViewClient
    {

        final TwitterOAuthView.TwitterOAuthTask this$1;

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
            if (android.os.Build.VERSION.SDK_INT < 11 && shouldOverrideUrlLoading(webview, s))
            {
                stopLoading();
            }
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            Log.e("TwitterOAuthView", (new StringBuilder()).append("onReceivedError: [").append(i).append("] ").append(s).toString());
            notifyAuthorization();
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
        {
            sslerrorhandler.proceed();
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (!s.startsWith(callbackUrl))
            {
                return false;
            }
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", (new StringBuilder()).append("Detected the callback URL: ").append(s).toString());
            }
            webview = Uri.parse(s);
            verifier = webview.getQueryParameter("oauth_verifier");
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", (new StringBuilder()).append("oauth_verifier = ").append(verifier).toString());
            }
            notifyAuthorization();
            return dummyCallbackUrl;
        }

        private LocalWebViewClient()
        {
            this$1 = TwitterOAuthView.TwitterOAuthTask.this;
            super();
        }

        LocalWebViewClient(TwitterOAuthView._cls1 _pcls1)
        {
            this();
        }
    }


    private AccessToken accessToken;
    private volatile boolean authorizationDone;
    private String callbackUrl;
    private boolean dummyCallbackUrl;
    private requestToken listener;
    private RequestToken requestToken;
    final TwitterOAuthView this$0;
    private Twitter twitter;
    private volatile String verifier;

    private void authorize()
    {
        publishProgress(new Void[0]);
    }

    private boolean checkCancellation(String s)
    {
        if (!isCancelled())
        {
            return false;
        }
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", (new StringBuilder()).append("Cancellation was detected in the context of ").append(s).toString());
        }
        return true;
    }

    private void clearTaskReference()
    {
        synchronized (TwitterOAuthView.this)
        {
            if (TwitterOAuthView.access$200(TwitterOAuthView.this) == this)
            {
                TwitterOAuthView.access$202(TwitterOAuthView.this, null);
            }
        }
        return;
        exception;
        twitteroauthview;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private transient void debugDoInBackground(Object aobj[])
    {
        Log.d("TwitterOAuthView", (new StringBuilder()).append("CONSUMER KEY = ").append((String)aobj[0]).toString());
        Log.d("TwitterOAuthView", (new StringBuilder()).append("CONSUMER SECRET = ").append((String)aobj[1]).toString());
        Log.d("TwitterOAuthView", (new StringBuilder()).append("CALLBACK URL = ").append((String)aobj[2]).toString());
        Log.d("TwitterOAuthView", (new StringBuilder()).append("DUMMY CALLBACK URL = ").append((Boolean)aobj[3]).toString());
        System.setProperty("twitter4j.debug", "true");
    }

    private void fireOnFailure(this._cls0 _pcls0)
    {
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", (new StringBuilder()).append("Calling Listener.onFailure, result = ").append(_pcls0).toString());
        }
        listener.e(TwitterOAuthView.this, _pcls0);
    }

    private void fireOnSuccess()
    {
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", "Calling Listener.onSuccess");
        }
        listener.s(TwitterOAuthView.this, accessToken);
    }

    private AccessToken getAccessToken()
    {
        AccessToken accesstoken;
        try
        {
            accesstoken = twitter.getOAuthAccessToken(requestToken, verifier);
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", (new StringBuilder()).append("Got an access token for ").append(accesstoken.getScreenName()).toString());
            }
        }
        catch (TwitterException twitterexception)
        {
            twitterexception.printStackTrace();
            Log.e("TwitterOAuthView", "Failed to get an access token.", twitterexception);
            return null;
        }
        return accesstoken;
    }

    private RequestToken getRequestToken()
    {
        RequestToken requesttoken;
        try
        {
            requesttoken = twitter.getOAuthRequestToken();
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", "Got a request token.");
            }
        }
        catch (TwitterException twitterexception)
        {
            twitterexception.printStackTrace();
            Log.e("TwitterOAuthView", "Failed to get a request token.", twitterexception);
            return null;
        }
        return requesttoken;
    }

    private void notifyAuthorization()
    {
        authorizationDone = true;
        this;
        JVM INSTR monitorenter ;
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", "Notifying that the authorization step was done.");
        }
        notify();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean waitForAuthorization()
    {
_L4:
        if (authorizationDone)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        if (checkCancellation("waitForAuthorization()"))
        {
            return true;
        }
        this;
        JVM INSTR monitorenter ;
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", "Waiting for the authorization step to be done.");
        }
        wait();
_L2:
        this;
        JVM INSTR monitorexit ;
        continue; /* Loop/switch isn't completed */
        Object obj;
        obj;
        this;
        JVM INSTR monitorexit ;
        throw obj;
        obj;
        if (!isDebugEnabled()) goto _L2; else goto _L1
_L1:
        Log.d("TwitterOAuthView", "Interrupted while waiting for the authorization step to be done.");
          goto _L2
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", "Finished waiting for the authorization step to be done.");
        }
        return false;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected transient checkCancellation doInBackground(Object aobj[])
    {
        if (checkCancellation("doInBackground() [on entry]"))
        {
            return ON;
        }
        String s = (String)aobj[0];
        String s1 = (String)aobj[1];
        callbackUrl = (String)aobj[2];
        dummyCallbackUrl = ((Boolean)aobj[3]).booleanValue();
        listener = (listener)aobj[4];
        if (isDebugEnabled())
        {
            debugDoInBackground(aobj);
        }
        twitter = (new TwitterFactory()).getInstance();
        twitter.setOAuthConsumer(s, s1);
        requestToken = getRequestToken();
        if (requestToken == null)
        {
            return KEN_ERROR;
        }
        authorize();
        if (waitForAuthorization())
        {
            return ON;
        }
        if (verifier == null)
        {
            return ION_ERROR;
        }
        if (checkCancellation("doInBackground() [before getAccessToken()]"))
        {
            return ON;
        }
        accessToken = getAccessToken();
        if (accessToken == null)
        {
            return EN_ERROR;
        } else
        {
            return EN_ERROR;
        }
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground(aobj);
    }

    protected void onCancelled()
    {
        super.onCancelled();
        fireOnFailure(ON);
        clearTaskReference();
    }

    protected void onPostExecute(clearTaskReference cleartaskreference)
    {
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", (new StringBuilder()).append("onPostExecute: result = ").append(cleartaskreference).toString());
        }
        clearTaskReference cleartaskreference1 = cleartaskreference;
        if (cleartaskreference == null)
        {
            cleartaskreference1 = ON;
        }
        if (cleartaskreference1 == ON)
        {
            fireOnSuccess();
        } else
        {
            fireOnFailure(cleartaskreference1);
        }
        clearTaskReference();
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((onPostExecute)obj);
    }

    protected void onPreExecute()
    {
        setWebViewClient(new LocalWebViewClient(null));
    }

    protected volatile void onProgressUpdate(Object aobj[])
    {
        onProgressUpdate((Void[])aobj);
    }

    protected transient void onProgressUpdate(Void avoid[])
    {
        if (checkCancellation("onProgressUpdate()"))
        {
            return;
        }
        avoid = (new StringBuilder()).append(requestToken.getAuthorizationURL()).append("&force_login=true").toString();
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", (new StringBuilder()).append("Loading the authorization URL: ").append(avoid).toString());
        }
        loadUrl(avoid);
    }





/*
    static String access$502(LocalWebViewClient localwebviewclient, String s)
    {
        localwebviewclient.verifier = s;
        return s;
    }

*/


    private LocalWebViewClient()
    {
        this$0 = TwitterOAuthView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
