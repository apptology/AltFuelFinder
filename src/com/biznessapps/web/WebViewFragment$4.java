// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.web;

import android.content.Intent;
import android.net.Uri;
import android.webkit.DownloadListener;

// Referenced classes of package com.biznessapps.web:
//            WebViewFragment

class this._cls0
    implements DownloadListener
{

    final WebViewFragment this$0;

    public void onDownloadStart(String s, String s1, String s2, String s3, long l)
    {
        s1 = new Intent("android.intent.action.VIEW");
        s1.setType(s3);
        s1.setData(Uri.parse(s));
        startActivity(s1);
    }

    ()
    {
        this$0 = WebViewFragment.this;
        super();
    }
}
