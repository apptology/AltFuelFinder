// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class  extends WebViewClient
{

    final WebView val$webView;

    public void onPageFinished(WebView webview, String s)
    {
        val$webView.setVisibility(0);
        val$webView.requestFocus(130);
    }

    (WebView webview)
    {
        val$webView = webview;
        super();
    }
}
