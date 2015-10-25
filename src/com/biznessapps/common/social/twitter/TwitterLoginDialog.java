// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler, TwitterUserInfo

public class TwitterLoginDialog extends Dialog
{
    private class AccessTokenGet extends AsyncTask
    {

        final TwitterLoginDialog this$0;

        protected transient Boolean doInBackground(String as[])
        {
            try
            {
                mAccessToken = mTwitter.getOAuthAccessToken(mRequestToken, mOAuthVerifier);
                TwitterSocialNetworkHandler.getInstance(getContext()).accessToken = mAccessToken;
                mUserInfo.accessToken = mAccessToken.getToken();
                mUserInfo.accessTokenSecret = mAccessToken.getTokenSecret();
                as = mTwitter.showUser(mAccessToken.getUserId());
                mUserInfo.userName = as.getName();
                mUserInfo.userID = as.getId();
                mUserInfo.imgURL = as.getProfileImageURL();
                TwitterSocialNetworkHandler.getInstance(getContext()).saveUserInfo(mUserInfo);
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                as.printStackTrace();
                mLoginError = as.getErrorMessage();
                return Boolean.valueOf(false);
            }
            return Boolean.valueOf(true);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            if (boolean1.booleanValue())
            {
                mLoginCompleted = true;
                mLoginError = "";
            } else
            {
                mLoginCompleted = false;
            }
            dismiss();
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
        }

        private AccessTokenGet()
        {
            this$0 = TwitterLoginDialog.this;
            super();
        }

    }

    private class TokenGet extends AsyncTask
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
                if (mRequestToken == null)
                {
                    mRequestToken = mTwitter.getOAuthRequestToken();
                    TwitterSocialNetworkHandler.getInstance(getContext()).requestToken = mRequestToken;
                }
                if (mOAuthURL == null)
                {
                    mOAuthURL = (new StringBuilder()).append(mRequestToken.getAuthorizationURL()).append("&force_login=true").toString();
                    TwitterSocialNetworkHandler.getInstance(getContext()).oauthURL = mOAuthURL;
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
            return mOAuthURL;
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
                mWebView.loadUrl(s);
                mWebView.setWebChromeClient(new WebChromeClient());
                mWebView.setWebViewClient(new WebViewClient() {

                    boolean authComplete;
                    final TokenGet this$1;

                    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
                    {
                        super.onPageStarted(webview, s, bitmap);
                    }

                    public void onReceivedError(WebView webview, int i, String s, String s1)
                    {
                        Log.e("TwitterLogin", (new StringBuilder()).append("onReceivedError: [").append(i).append("] ").append(s).toString());
                    }

                    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
                    {
                        sslerrorhandler.proceed();
                    }

                    public boolean shouldOverrideUrlLoading(WebView webview, String s)
                    {
                        if (!s.startsWith("http://www.google.com/callback"))
                        {
                            return false;
                        }
                        if (!s.contains("oauth_verifier") || authComplete) goto _L2; else goto _L1
_L1:
                        authComplete = true;
                        webview = Uri.parse(s);
                        mOAuthVerifier = webview.getQueryParameter("oauth_verifier");
                        TwitterSocialNetworkHandler.getInstance(getContext()).oauthVerifier = mOAuthVerifier;
                        (new AccessTokenGet()).execute(new String[0]);
_L4:
                        return true;
_L2:
                        if (s.contains("denied"))
                        {
                            mLoginCompleted = false;
                            mLoginError = "Sorry !, Permission Denied";
                            dismiss();
                        } else
                        if (s.contains("error"))
                        {
                            mLoginCompleted = false;
                            mLoginError = "Login Error";
                            dismiss();
                        }
                        if (true) goto _L4; else goto _L3
_L3:
                    }

            
            {
                this$1 = TokenGet.this;
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

        private TokenGet()
        {
            this$0 = TwitterLoginDialog.this;
            super();
        }

    }


    private static final String TAG = "TwitterLogin";
    private AccessToken mAccessToken;
    public boolean mLoginCompleted;
    public String mLoginError;
    private String mOAuthURL;
    private String mOAuthVerifier;
    private RequestToken mRequestToken;
    private Twitter mTwitter;
    private TwitterUserInfo mUserInfo;
    private WebView mWebView;

    protected TwitterLoginDialog(Context context)
    {
        super(context);
        mRequestToken = null;
    }

    protected TwitterLoginDialog(Context context, int i)
    {
        super(context, i);
        mRequestToken = null;
    }

    protected TwitterLoginDialog(Context context, boolean flag, android.content.DialogInterface.OnCancelListener oncancellistener)
    {
        super(context, flag, oncancellistener);
        mRequestToken = null;
    }

    private void initTwitter()
    {
        mTwitter = TwitterSocialNetworkHandler.getInstance(getContext()).twitter;
        mRequestToken = TwitterSocialNetworkHandler.getInstance(getContext()).requestToken;
        mOAuthURL = TwitterSocialNetworkHandler.getInstance(getContext()).oauthURL;
        mOAuthVerifier = TwitterSocialNetworkHandler.getInstance(getContext()).oauthVerifier;
        mAccessToken = TwitterSocialNetworkHandler.getInstance(getContext()).accessToken;
        mUserInfo = TwitterSocialNetworkHandler.getInstance(getContext()).userInfo;
    }

    private void initUI()
    {
        mWebView = (WebView)findViewById(com.biznessapps.layout.R.id.webview);
        mWebView.getSettings().setJavaScriptEnabled(true);
        mWebView.getSettings().setCacheMode(2);
        mWebView.getSettings().setBuiltInZoomControls(true);
        if (mOAuthVerifier == null)
        {
            (new TokenGet()).execute(new String[0]);
            return;
        } else
        {
            (new AccessTokenGet()).execute(new String[0]);
            return;
        }
    }

    public static TwitterLoginDialog newInstance(Context context)
    {
        context = new TwitterLoginDialog(context, com.biznessapps.layout.R.style.FullScreenDialogTheme);
        context.setContentView(com.biznessapps.layout.R.layout.twitter_login_view_v2);
        context.setCancelable(true);
        context.show();
        return context;
    }

    public String getLoginError()
    {
        return mLoginError;
    }

    public boolean isLoginCompleted()
    {
        return mLoginCompleted;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initTwitter();
        initUI();
    }



/*
    static RequestToken access$202(TwitterLoginDialog twitterlogindialog, RequestToken requesttoken)
    {
        twitterlogindialog.mRequestToken = requesttoken;
        return requesttoken;
    }

*/




/*
    static String access$402(TwitterLoginDialog twitterlogindialog, String s)
    {
        twitterlogindialog.mOAuthURL = s;
        return s;
    }

*/




/*
    static String access$602(TwitterLoginDialog twitterlogindialog, String s)
    {
        twitterlogindialog.mOAuthVerifier = s;
        return s;
    }

*/



/*
    static AccessToken access$702(TwitterLoginDialog twitterlogindialog, AccessToken accesstoken)
    {
        twitterlogindialog.mAccessToken = accesstoken;
        return accesstoken;
    }

*/

}
