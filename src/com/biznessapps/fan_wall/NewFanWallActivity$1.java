// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallActivity

class ginListener extends OnCommonSocialLoginListener
{

    final NewFanWallActivity this$0;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        NewFanWallActivity.access$000(NewFanWallActivity.this, commonsocialnetworkhandler.getSocialType());
    }

    orkHandler(Context context)
    {
        this$0 = NewFanWallActivity.this;
        super(context);
    }
}
