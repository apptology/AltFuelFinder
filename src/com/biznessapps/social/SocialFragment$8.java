// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLogoutListener;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class alNetworkHandler
    implements Runnable
{

    final SocialFragment this$0;
    final CommonSocialNetworkHandler val$socialNetworkHandler;

    public void run()
    {
        val$socialNetworkHandler.logout(new OnCommonSocialLogoutListener(getActivity()) {

            final SocialFragment._cls8 this$1;

            public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                SocialFragment.access$000(this$0);
            }

            
            {
                this$1 = SocialFragment._cls8.this;
                super(context);
            }
        });
    }

    alNetworkHandler()
    {
        this$0 = final_socialfragment;
        val$socialNetworkHandler = CommonSocialNetworkHandler.this;
        super();
    }
}
