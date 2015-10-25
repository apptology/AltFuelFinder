// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.util.Log;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterLoginDialog, TwitterSocialNetworkHandler

class authComplete extends WebViewClient
{

    boolean authComplete;
    final  this$1;

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
        TwitterLoginDialog.access$602(_fld0, webview.getQueryParameter("oauth_verifier"));
        TwitterSocialNetworkHandler.getInstance(getContext()).oauthVerifier = TwitterLoginDialog.access$600(_fld0);
        (new Get(_fld0, null)).execute(new String[0]);
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

    Get()
    {
        this$1 = this._cls1.this;
        super();
        authComplete = false;
    }
}
