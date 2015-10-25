// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.events:
//            EventV2DetailsActivity, EventEntity

class Runnable extends com.biznessapps.api.ataRunnable
{

    final EventV2DetailsActivity this$0;

    public void run()
    {
label0:
        {
            if (getActivity() != null)
            {
                if (!EventV2DetailsActivity.access$1600(EventV2DetailsActivity.this).getNetworkResult().isOk())
                {
                    break label0;
                }
                EventV2DetailsActivity.access$1800(EventV2DetailsActivity.this, getActivity());
            }
            return;
        }
        ViewUtils.showErrorToast(getActivity(), EventV2DetailsActivity.access$1600(EventV2DetailsActivity.this).getNetworkResult());
    }

    ty()
    {
        this$0 = EventV2DetailsActivity.this;
        super();
    }
}
