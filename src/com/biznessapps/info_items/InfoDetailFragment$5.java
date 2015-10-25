// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.info_items;

import android.webkit.WebChromeClient;

// Referenced classes of package com.biznessapps.info_items:
//            InfoDetailFragment

class this._cls0 extends WebChromeClient
{

    final InfoDetailFragment this$0;

    public void onGeolocationPermissionsShowPrompt(String s, android.webkit.s.Callback callback)
    {
        callback.invoke(s, true, false);
    }

    ()
    {
        this$0 = InfoDetailFragment.this;
        super();
    }
}
