// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import com.biznessapps.common.social.OnSocialPublishListener;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler

class val.e
    implements Runnable
{

    final val.e this$1;
    final Exception val$e;

    public void run()
    {
        cess._mth900(this._cls1.this).onError(_fld0, val$e.getMessage(), val$e.getMessage());
    }

    ()
    {
        this$1 = final_;
        val$e = Exception.this;
        super();
    }
}
