// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLogoutListener;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class alLogoutListener extends OnCommonSocialLogoutListener
{

    final is._cls0 this$1;

    public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        SocialFragment.access$000(_fld0);
    }

    NetworkHandler(Context context)
    {
        this$1 = this._cls1.this;
        super(context);
    }

    // Unreferenced inner class com/biznessapps/social/SocialFragment$8

/* anonymous class */
    class SocialFragment._cls8
        implements Runnable
    {

        final SocialFragment this$0;
        final CommonSocialNetworkHandler val$socialNetworkHandler;

        public void run()
        {
            socialNetworkHandler.logout(new SocialFragment._cls8._cls1(getActivity()));
        }

            
            {
                this$0 = final_socialfragment;
                socialNetworkHandler = CommonSocialNetworkHandler.this;
                super();
            }
    }

}
