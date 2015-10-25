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
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.auth.RequestToken;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterLoginDialog, TwitterSocialNetworkHandler

private class <init> extends AsyncTask
{

    final TwitterLoginDialog this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient String doInBackground(String as[])
    {
        try
        {
            if (TwitterLoginDialog.access$200(TwitterLoginDialog.this) == null)
            {
                TwitterLoginDialog.access$202(TwitterLoginDialog.this, TwitterLoginDialog.access$300(TwitterLoginDialog.this).getOAuthRequestToken());
                TwitterSocialNetworkHandler.getInstance(getContext()).requestToken = TwitterLoginDialog.access$200(TwitterLoginDialog.this);
            }
            if (TwitterLoginDialog.access$400(TwitterLoginDialog.this) == null)
            {
                TwitterLoginDialog.access$402(TwitterLoginDialog.this, (new StringBuilder()).append(TwitterLoginDialog.access$200(TwitterLoginDialog.this).getAuthorizationURL()).append("&force_login=true").toString());
                TwitterSocialNetworkHandler.getInstance(getContext()).oauthURL = TwitterLoginDialog.access$400(TwitterLoginDialog.this);
            }
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            as.printStackTrace();
            mLoginError = as.getMessage();
            mLoginCompleted = false;
            dismiss();
        }
        return TwitterLoginDialog.access$400(TwitterLoginDialog.this);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((String)obj);
    }

    protected void onPostExecute(String s)
    {
        if (s != null)
        {
            Log.e("URL", s);
            TwitterLoginDialog.access$500(TwitterLoginDialog.this).loadUrl(s);
            TwitterLoginDialog.access$500(TwitterLoginDialog.this).setWebChromeClient(new WebChromeClient());
            TwitterLoginDialog.access$500(TwitterLoginDialog.this).setWebViewClient(new WebViewClient() {

                boolean authComplete;
                final TwitterLoginDialog.TokenGet this$1;

                public void onPageStarted(WebView webview, String s1, Bitmap bitmap)
                {
                    super.onPageStarted(webview, s1, bitmap);
                }

                public void onReceivedError(WebView webview, int i, String s1, String s2)
                {
                    Log.e("TwitterLogin", (new StringBuilder()).append("onReceivedError: [").append(i).append("] ").append(s1).toString());
                }

                public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
                {
                    sslerrorhandler.proceed();
                }

                public boolean shouldOverrideUrlLoading(WebView webview, String s1)
                {
                    if (!s1.startsWith("http://www.google.com/callback"))
                    {
                        return false;
                    }
                    if (!s1.contains("oauth_verifier") || authComplete) goto _L2; else goto _L1
_L1:
                    authComplete = true;
                    webview = Uri.parse(s1);
                    TwitterLoginDialog.access$602(this$0, webview.getQueryParameter("oauth_verifier"));
                    TwitterSocialNetworkHandler.getInstance(getContext()).oauthVerifier = TwitterLoginDialog.access$600(this$0);
                    (new TwitterLoginDialog.AccessTokenGet(this$0, null)).execute(new String[0]);
_L4:
                    return true;
_L2:
                    if (s1.contains("denied"))
                    {
                        mLoginCompleted = false;
                        mLoginError = "Sorry !, Permission Denied";
                        dismiss();
                    } else
                    if (s1.contains("error"))
                    {
                        mLoginCompleted = false;
                        mLoginError = "Login Error";
                        dismiss();
                    }
                    if (true) goto _L4; else goto _L3
_L3:
                }

            
            {
                this$1 = TwitterLoginDialog.TokenGet.this;
                super();
                authComplete = false;
            }
            });
            return;
        } else
        {
            mLoginError = "Sorry !, Network Error or Invalid Credentials";
            mLoginCompleted = false;
            dismiss();
            return;
        }
    }

    private _cls1.authComplete()
    {
        this$0 = TwitterLoginDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
