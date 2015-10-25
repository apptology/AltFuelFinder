// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;

import java.util.List;

// Referenced classes of package com.biznessapps.common.fragments:
//            CommonListFragment

class this._cls0
    implements com.biznessapps.common.adapters.ionListener
{

    final CommonListFragment this$0;

    public void onLastPositionAchieved(int i)
    {
        if (items != null && !items.isEmpty() && isUsedPositioning() && !isOffsetLoading)
        {
            currentItemIndex = i;
            offset = items.size();
            isOffsetLoading = true;
            if (!noDataMore)
            {
                loadData();
            }
        }
    }

    onListener()
    {
        this$0 = CommonListFragment.this;
        super();
    }
}
