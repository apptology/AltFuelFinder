// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.view.View;
import com.biznessapps.common.social.googleplus.GooglePlusSocialNetworkHandler;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SocialLoginPopupView

class this._cls0
    implements android.view.ialLoginPopupView._cls5
{

    final SocialLoginPopupView this$0;

    public void onClick(View view)
    {
        GooglePlusSocialNetworkHandler.getInstance(SocialLoginPopupView.access$300(SocialLoginPopupView.this)).login(SocialLoginPopupView.access$200(SocialLoginPopupView.this));
        SocialLoginPopupView.access$100(SocialLoginPopupView.this, SocialLoginPopupView.access$000(SocialLoginPopupView.this));
    }

    lNetworkHandler()
    {
        this$0 = SocialLoginPopupView.this;
        super();
    }
}
