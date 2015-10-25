// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import java.util.List;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment

private class count
{

    private static final int APPS_NUMBER_LIMIT = 20;
    private List apps;
    private int count;
    final ResellerDashboardFragment this$0;

    public int getCount()
    {
        return count;
    }

    public List getList(int i)
    {
        int k = i * 20 + 20;
        int j = k;
        if (k > apps.size())
        {
            j = apps.size();
        }
        return apps.subList(i * 20, j);
    }

    public (List list)
    {
        this$0 = ResellerDashboardFragment.this;
        super();
        apps = list;
        count = list.size() / 20;
        if (list.size() % 20 != 0)
        {
            count = count + 1;
        }
    }
}
