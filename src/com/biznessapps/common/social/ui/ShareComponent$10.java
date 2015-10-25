// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.content.Context;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

static final class stener extends OnCommonSocialLoginListener
{

    final OnSharingCompletedListener val$listener;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        super.onError(commonsocialnetworkhandler, s, s1);
        if (val$listener != null)
        {
            val$listener.onSharingError(16, s, s1);
        }
    }

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        if (val$listener != null)
        {
            val$listener.onSharingError(16, "Error", "Not Implemented Yet!");
        }
    }

    Listener(Context context, OnSharingCompletedListener onsharingcompletedlistener)
    {
        val$listener = onsharingcompletedlistener;
        super(context);
    }
}
