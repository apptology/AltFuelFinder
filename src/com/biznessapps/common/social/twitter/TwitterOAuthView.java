// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;

public class TwitterOAuthView extends WebView
{
    public static interface Listener
    {

        public abstract void onFailure(TwitterOAuthView twitteroauthview, Result result);

        public abstract void onSuccess(TwitterOAuthView twitteroauthview, AccessToken accesstoken);
    }

    public static final class Result extends Enum
    {

        private static final Result $VALUES[];
        public static final Result ACCESS_TOKEN_ERROR;
        public static final Result AUTHORIZATION_ERROR;
        public static final Result CANCELLATION;
        public static final Result REQUEST_TOKEN_ERROR;
        public static final Result SUCCESS;

        public static Result valueOf(String s)
        {
            return (Result)Enum.valueOf(com/biznessapps/common/social/twitter/TwitterOAuthView$Result, s);
        }

        public static Result[] values()
        {
            return (Result[])$VALUES.clone();
        }

        static 
        {
            SUCCESS = new Result("SUCCESS", 0);
            CANCELLATION = new Result("CANCELLATION", 1);
            REQUEST_TOKEN_ERROR = new Result("REQUEST_TOKEN_ERROR", 2);
            AUTHORIZATION_ERROR = new Result("AUTHORIZATION_ERROR", 3);
            ACCESS_TOKEN_ERROR = new Result("ACCESS_TOKEN_ERROR", 4);
            $VALUES = (new Result[] {
                SUCCESS, CANCELLATION, REQUEST_TOKEN_ERROR, AUTHORIZATION_ERROR, ACCESS_TOKEN_ERROR
            });
        }

        private Result(String s, int i)
        {
            super(s, i);
        }
    }

    private class TwitterOAuthTask extends AsyncTask
    {

        private AccessToken accessToken;
        private volatile boolean authorizationDone;
        private String callbackUrl;
        private boolean dummyCallbackUrl;
        private Listener listener;
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
                if (twitterOAuthTask == this)
                {
                    twitterOAuthTask = null;
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

        private void fireOnFailure(Result result)
        {
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", (new StringBuilder()).append("Calling Listener.onFailure, result = ").append(result).toString());
            }
            listener.onFailure(TwitterOAuthView.this, result);
        }

        private void fireOnSuccess()
        {
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", "Calling Listener.onSuccess");
            }
            listener.onSuccess(TwitterOAuthView.this, accessToken);
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

        protected transient Result doInBackground(Object aobj[])
        {
            if (checkCancellation("doInBackground() [on entry]"))
            {
                return Result.CANCELLATION;
            }
            String s = (String)aobj[0];
            String s1 = (String)aobj[1];
            callbackUrl = (String)aobj[2];
            dummyCallbackUrl = ((Boolean)aobj[3]).booleanValue();
            listener = (Listener)aobj[4];
            if (isDebugEnabled())
            {
                debugDoInBackground(aobj);
            }
            twitter = (new TwitterFactory()).getInstance();
            twitter.setOAuthConsumer(s, s1);
            requestToken = getRequestToken();
            if (requestToken == null)
            {
                return Result.REQUEST_TOKEN_ERROR;
            }
            authorize();
            if (waitForAuthorization())
            {
                return Result.CANCELLATION;
            }
            if (verifier == null)
            {
                return Result.AUTHORIZATION_ERROR;
            }
            if (checkCancellation("doInBackground() [before getAccessToken()]"))
            {
                return Result.CANCELLATION;
            }
            accessToken = getAccessToken();
            if (accessToken == null)
            {
                return Result.ACCESS_TOKEN_ERROR;
            } else
            {
                return Result.SUCCESS;
            }
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground(aobj);
        }

        protected void onCancelled()
        {
            super.onCancelled();
            fireOnFailure(Result.CANCELLATION);
            clearTaskReference();
        }

        protected void onPostExecute(Result result)
        {
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", (new StringBuilder()).append("onPostExecute: result = ").append(result).toString());
            }
            Result result1 = result;
            if (result == null)
            {
                result1 = Result.CANCELLATION;
            }
            if (result1 == Result.SUCCESS)
            {
                fireOnSuccess();
            } else
            {
                fireOnFailure(result1);
            }
            clearTaskReference();
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Result)obj);
        }

        protected void onPreExecute()
        {
            setWebViewClient(new LocalWebViewClient());
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
        static String access$502(TwitterOAuthTask twitteroauthtask, String s)
        {
            twitteroauthtask.verifier = s;
            return s;
        }

*/


        private TwitterOAuthTask()
        {
            this$0 = TwitterOAuthView.this;
            super();
        }

    }

    private class TwitterOAuthTask.LocalWebViewClient extends WebViewClient
    {

        final TwitterOAuthTask this$1;

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

        private TwitterOAuthTask.LocalWebViewClient()
        {
            this$1 = TwitterOAuthTask.this;
            super();
        }

    }


    private static final boolean DEBUG = false;
    private static final String TAG = "TwitterOAuthView";
    private boolean cancelOnDetachedFromWindow;
    private boolean isDebugEnabled;
    private TwitterOAuthTask twitterOAuthTask;

    public TwitterOAuthView(Context context)
    {
        super(context);
        cancelOnDetachedFromWindow = true;
        isDebugEnabled = false;
        init();
    }

    public TwitterOAuthView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        cancelOnDetachedFromWindow = true;
        isDebugEnabled = false;
        init();
    }

    public TwitterOAuthView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        cancelOnDetachedFromWindow = true;
        isDebugEnabled = false;
        init();
    }

    private void cancelTask(TwitterOAuthTask twitteroauthtask)
    {
        if (twitteroauthtask == null)
        {
            return;
        }
        if (!twitteroauthtask.isCancelled())
        {
            if (isDebugEnabled())
            {
                Log.d("TwitterOAuthView", "Cancelling a task.");
            }
            twitteroauthtask.cancel(true);
        }
        twitteroauthtask;
        JVM INSTR monitorenter ;
        if (isDebugEnabled())
        {
            Log.d("TwitterOAuthView", "Notifying a task of cancellation.");
        }
        twitteroauthtask.notify();
        twitteroauthtask;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        twitteroauthtask;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void init()
    {
        WebSettings websettings = getSettings();
        websettings.setCacheMode(2);
        websettings.setJavaScriptEnabled(true);
        websettings.setBuiltInZoomControls(true);
        setScrollBarStyle(0);
    }

    public void cancel()
    {
        this;
        JVM INSTR monitorenter ;
        TwitterOAuthTask twitteroauthtask;
        twitteroauthtask = twitterOAuthTask;
        twitterOAuthTask = null;
        this;
        JVM INSTR monitorexit ;
        cancelTask(twitteroauthtask);
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean isCancelOnDetachedFromWindow()
    {
        return cancelOnDetachedFromWindow;
    }

    public boolean isDebugEnabled()
    {
        return isDebugEnabled;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (isCancelOnDetachedFromWindow())
        {
            cancel();
        }
    }

    public void setCancelOnDetachedFromWindow(boolean flag)
    {
        cancelOnDetachedFromWindow = flag;
    }

    public void setDebugEnabled(boolean flag)
    {
        isDebugEnabled = flag;
    }

    public void start(String s, String s1, String s2, boolean flag, Listener listener)
    {
        if (s == null || s1 == null || s2 == null || listener == null)
        {
            throw new IllegalArgumentException();
        }
        this;
        JVM INSTR monitorenter ;
        TwitterOAuthTask twitteroauthtask;
        TwitterOAuthTask twitteroauthtask1;
        twitteroauthtask = twitterOAuthTask;
        twitteroauthtask1 = new TwitterOAuthTask();
        twitterOAuthTask = twitteroauthtask1;
        this;
        JVM INSTR monitorexit ;
        cancelTask(twitteroauthtask);
        twitteroauthtask1.execute(new Object[] {
            s, s1, s2, Boolean.valueOf(flag), listener
        });
        return;
        s;
        this;
        JVM INSTR monitorexit ;
        throw s;
    }



/*
    static TwitterOAuthTask access$202(TwitterOAuthView twitteroauthview, TwitterOAuthTask twitteroauthtask)
    {
        twitteroauthview.twitterOAuthTask = twitteroauthtask;
        return twitteroauthtask;
    }

*/
}
