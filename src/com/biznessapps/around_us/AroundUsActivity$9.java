// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsActivity, AroundUsEntity

class DataRunnable extends com.biznessapps.api.l.LoadDataRunnable
{

    final AroundUsActivity this$0;

    public void run()
    {
label0:
        {
            if (getActivity() != null)
            {
                if (!AroundUsActivity.access$200(AroundUsActivity.this).getNetworkResult().isOk())
                {
                    break label0;
                }
                AroundUsActivity.access$800(AroundUsActivity.this);
                AroundUsActivity.access$1100(AroundUsActivity.this);
                AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(AroundUsActivity.access$200(AroundUsActivity.this).getImageUrl(), AroundUsActivity.access$1200(AroundUsActivity.this), AroundUsActivity.access$1300(AroundUsActivity.this));
            }
            return;
        }
        ViewUtils.showErrorToast(getActivity(), AroundUsActivity.access$200(AroundUsActivity.this).getNetworkResult());
    }

    cher()
    {
        this$0 = AroundUsActivity.this;
        super();
    }
}
