// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.web;

import android.content.Intent;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;

// Referenced classes of package com.biznessapps.web:
//            WebViewFragment

class this._cls0 extends WebChromeClient
{

    final WebViewFragment this$0;

    public void onGeolocationPermissionsShowPrompt(String s, android.webkit.ions.Callback callback)
    {
        callback.invoke(s, true, false);
    }

    public void openFileChooser(ValueCallback valuecallback)
    {
        WebViewFragment.access$602(WebViewFragment.this, valuecallback);
        valuecallback = new Intent("android.intent.action.GET_CONTENT");
        valuecallback.addCategory("android.intent.category.OPENABLE");
        valuecallback.setType("*/*");
        startActivityForResult(Intent.createChooser(valuecallback, "Image Browser"), 1);
    }

    public void openFileChooser(ValueCallback valuecallback, String s)
    {
        openFileChooser(valuecallback);
    }

    public void openFileChooser(ValueCallback valuecallback, String s, String s1)
    {
        openFileChooser(valuecallback);
    }

    Callback()
    {
        this$0 = WebViewFragment.this;
        super();
    }
}
