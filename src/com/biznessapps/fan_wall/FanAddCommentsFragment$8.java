// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import com.biznessapps.api.AsyncCallback;
import com.biznessapps.common.social.stats.UserStatsProfile;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanAddCommentsFragment

class this._cls0 extends AsyncCallback
{

    final FanAddCommentsFragment this$0;

    public void onError(String s, Throwable throwable)
    {
        FanAddCommentsFragment.access$400(FanAddCommentsFragment.this, com.biznessapps.layout._cls8.this._fld0, 5);
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        UserStatsProfile.getInstance(getActivity()).updateNumberOfPosts();
        FanAddCommentsFragment.access$400(FanAddCommentsFragment.this, com.biznessapps.layout.ted, 4);
    }

    le()
    {
        this$0 = FanAddCommentsFragment.this;
        super();
    }
}
