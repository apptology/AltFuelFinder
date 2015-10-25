// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Context;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity, EventGoingTabUtils

class nListener extends OnCommonSocialLoginListener
{

    final EventV2DetailsActivity this$0;
    final CachingManager val$cacher;

    public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        EventGoingTabUtils.postEventData(commonsocialnetworkhandler, UrlWrapper.getInstance().getFullUrl("going_post.php"), "going986%sbizapps%s", val$cacher.getAppCode(), EventV2DetailsActivity.access$1000(EventV2DetailsActivity.this), EventV2DetailsActivity.access$1100(EventV2DetailsActivity.this), "", null, getApplicationContext(), EventV2DetailsActivity.access$600(EventV2DetailsActivity.this), EventV2DetailsActivity.access$1200(EventV2DetailsActivity.this), EventV2DetailsActivity.access$1300(EventV2DetailsActivity.this), EventV2DetailsActivity.access$1400(EventV2DetailsActivity.this));
        EventV2DetailsActivity.access$200(EventV2DetailsActivity.this, EventV2DetailsActivity.access$500(EventV2DetailsActivity.this), EventV2DetailsActivity.access$600(EventV2DetailsActivity.this));
    }

    kHandler(CachingManager cachingmanager)
    {
        this$0 = final_eventv2detailsactivity;
        val$cacher = cachingmanager;
        super(Context.this);
    }
}
