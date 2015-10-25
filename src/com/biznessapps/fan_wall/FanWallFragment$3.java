// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.view.View;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanWallFragment

class nPopupView
    implements android.view.er
{

    final FanWallFragment this$0;
    final SocialLoginPopupView val$socialPopupView;

    public void onClick(View view)
    {
        ViewUtils.closeKeyboard(getApplicationContext(), FanWallFragment.access$200(FanWallFragment.this));
        if (FanWallFragment.access$300(FanWallFragment.this))
        {
            if (ViewUtils.checkGpsEnabling(getHoldActivity()))
            {
                val$socialPopupView.openLoginDialog();
            }
            return;
        } else
        {
            val$socialPopupView.openLoginDialog();
            return;
        }
    }

    nPopupView()
    {
        this$0 = final_fanwallfragment;
        val$socialPopupView = SocialLoginPopupView.this;
        super();
    }
}
