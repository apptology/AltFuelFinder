// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.view.View;
import android.widget.Button;
import com.biznessapps.common.social.ui.SocialLoginPopupView;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity

class pView
    implements android.view.ctivity._cls9
{

    final EventV2DetailsActivity this$0;
    final SocialLoginPopupView val$socialPopupView;

    public void onClick(View view)
    {
        EventV2DetailsActivity.access$500(EventV2DetailsActivity.this).performClick();
        val$socialPopupView.openLoginDialog();
    }

    pView()
    {
        this$0 = final_eventv2detailsactivity;
        val$socialPopupView = SocialLoginPopupView.this;
        super();
    }
}
