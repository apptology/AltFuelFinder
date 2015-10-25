// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.content.Context;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SocialOnBoardingPopupDialog

class > extends OnCommonSocialLoginListener
{

    final SocialOnBoardingPopupDialog this$0;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        ViewUtils.showCustomToast(SocialOnBoardingPopupDialog.access$000(SocialOnBoardingPopupDialog.this).getApplicationContext(), SocialOnBoardingPopupDialog.access$000(SocialOnBoardingPopupDialog.this).getString(com.biznessapps.layout.ity.getString));
    }

    (Context context)
    {
        this$0 = SocialOnBoardingPopupDialog.this;
        super(context);
    }
}
