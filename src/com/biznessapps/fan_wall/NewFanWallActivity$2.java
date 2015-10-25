// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.view.View;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallActivity

class pupView
    implements android.view.lActivity._cls2
{

    final NewFanWallActivity this$0;
    final SocialLoginPopupView val$socialAccessor;

    public void onClick(View view)
    {
        if (ViewUtils.checkGpsEnabling(NewFanWallActivity.this))
        {
            val$socialAccessor.openLoginDialog();
        }
    }

    pupView()
    {
        this$0 = final_newfanwallactivity;
        val$socialAccessor = SocialLoginPopupView.this;
        super();
    }
}
