// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.util.Log;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social.ui:
//            ShareComponent, OnSharingCompletedListener

static final class val.listener
    implements OnSocialPublishListener
{

    final Activity val$activity;
    final OnSharingCompletedListener val$listener;

    public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
    {
        if (s1 != null)
        {
            Log.w("ShareComponent", s1);
        }
        ViewUtils.showCustomToast(val$activity.getApplicationContext(), val$activity.getString(com.biznessapps.layout.g_went_wrong));
        if (val$listener != null)
        {
            val$listener.onSharingError(8, s, s1);
        }
    }

    public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        ViewUtils.showCustomToast(val$activity.getApplicationContext(), val$activity.getString(com.biznessapps.layout.ully_posted));
        UserStatsProfile.getInstance(val$activity).updateNumberOfShares();
        if (val$listener != null)
        {
            val$listener.onSharingCompleted(8);
        }
    }

    dListener(Activity activity1, OnSharingCompletedListener onsharingcompletedlistener)
    {
        val$activity = activity1;
        val$listener = onsharingcompletedlistener;
        super();
    }
}
