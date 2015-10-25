// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import com.biznessapps.api.AsyncCallback;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class this._cls0 extends AsyncCallback
{

    final SocialFragment this$0;

    public void onError(String s, Throwable throwable)
    {
        super.onError(s, throwable);
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
    }

    ()
    {
        this$0 = SocialFragment.this;
        super();
    }
}
