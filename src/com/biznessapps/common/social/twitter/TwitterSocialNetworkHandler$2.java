// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.content.DialogInterface;
import com.biznessapps.common.social.OnSocialLoginListener;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterSocialNetworkHandler

class this._cls0
    implements android.content.er
{

    final TwitterSocialNetworkHandler this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        TwitterSocialNetworkHandler.access$002(TwitterSocialNetworkHandler.this, false);
        TwitterSocialNetworkHandler.access$300(TwitterSocialNetworkHandler.this).onError(TwitterSocialNetworkHandler.this, "Cancel", "Login Canceled");
    }

    I()
    {
        this$0 = TwitterSocialNetworkHandler.this;
        super();
    }
}
