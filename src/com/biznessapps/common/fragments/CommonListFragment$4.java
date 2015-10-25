// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;


// Referenced classes of package com.biznessapps.common.fragments:
//            CommonListFragment

class ataRunnable extends com.biznessapps.common.components.taRunnable
{

    final CommonListFragment this$0;

    public void run()
    {
        searchQuery = getSearchQuery();
        loadData();
    }

    ataRunnable()
    {
        this$0 = CommonListFragment.this;
        super();
    }
}
