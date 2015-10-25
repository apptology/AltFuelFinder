// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.facebook;

import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.model.GraphUser;

// Referenced classes of package com.biznessapps.common.social.facebook:
//            FacebookSocialNetworkHandler

class val.listener
    implements com.facebook.ookSocialNetworkHandler._cls4
{

    final FacebookSocialNetworkHandler this$0;
    final OnSocialActionCompletedListener val$listener;

    public void onCompleted(GraphUser graphuser, Response response)
    {
        FacebookSocialNetworkHandler.access$902(FacebookSocialNetworkHandler.this, false);
        if (response != null)
        {
            if (response.getRequest().getSession() == FacebookSocialNetworkHandler.access$300(FacebookSocialNetworkHandler.this))
            {
                FacebookSocialNetworkHandler.access$1000(FacebookSocialNetworkHandler.this, graphuser);
                if (val$listener != null)
                {
                    val$listener.onActionCompleted(FacebookSocialNetworkHandler.this);
                }
            }
        } else
        if (val$listener != null)
        {
            val$listener.onError(FacebookSocialNetworkHandler.this, null, null);
            return;
        }
    }

    ()
    {
        this$0 = final_facebooksocialnetworkhandler;
        val$listener = OnSocialActionCompletedListener.this;
        super();
    }
}
