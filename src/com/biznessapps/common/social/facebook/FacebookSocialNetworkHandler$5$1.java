// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.facebook;

import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialLogoutListener;
import com.facebook.Session;
import com.facebook.SessionState;

// Referenced classes of package com.biznessapps.common.social.facebook:
//            FacebookSocialNetworkHandler

class this._cls1
    implements OnSocialActionCompletedListener
{

    final is._cls0 this$1;

    public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        FacebookSocialNetworkHandler.access$1400(_fld0).onLoginCompleted(commonsocialnetworkhandler);
    }

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        FacebookSocialNetworkHandler.access$1300(_fld0).onError(commonsocialnetworkhandler, s, s1);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$5

/* anonymous class */
    class FacebookSocialNetworkHandler._cls5
        implements com.facebook.Session.StatusCallback
    {

        final FacebookSocialNetworkHandler this$0;

        public void call(Session session, SessionState sessionstate, Exception exception)
        {
            if (session != FacebookSocialNetworkHandler.access$300(FacebookSocialNetworkHandler.this))
            {
                FacebookSocialNetworkHandler.access$902(FacebookSocialNetworkHandler.this, false);
            } else
            {
                if (sessionstate.isOpened())
                {
                    FacebookSocialNetworkHandler.access$1200(FacebookSocialNetworkHandler.this, FacebookSocialNetworkHandler.access$1100(FacebookSocialNetworkHandler.this));
                    FacebookSocialNetworkHandler.access$1500(FacebookSocialNetworkHandler.this, new FacebookSocialNetworkHandler._cls5._cls1());
                    return;
                }
                if (sessionstate.isClosed())
                {
                    FacebookSocialNetworkHandler.access$1600(FacebookSocialNetworkHandler.this);
                    FacebookSocialNetworkHandler.access$902(FacebookSocialNetworkHandler.this, false);
                    exception = FacebookSocialNetworkHandler.access$1700(FacebookSocialNetworkHandler.this);
                    FacebookSocialNetworkHandler facebooksocialnetworkhandler = FacebookSocialNetworkHandler.this;
                    if (sessionstate != null)
                    {
                        session = sessionstate.name();
                    } else
                    {
                        session = "";
                    }
                    if (sessionstate != null)
                    {
                        sessionstate = sessionstate.toString();
                    } else
                    {
                        sessionstate = "";
                    }
                    exception.onError(facebooksocialnetworkhandler, session, sessionstate);
                    FacebookSocialNetworkHandler.access$1800(FacebookSocialNetworkHandler.this).onLogoffCompleted(FacebookSocialNetworkHandler.this);
                    return;
                }
            }
        }

            
            {
                this$0 = FacebookSocialNetworkHandler.this;
                super();
            }
    }

}
