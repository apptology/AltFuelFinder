// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import java.util.List;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonTabFragmentActivity

public class fragments extends FragmentPagerAdapter
{

    private List fragments;
    final CommonTabFragmentActivity this$0;

    public int getCount()
    {
        return fragments.size();
    }

    public Fragment getItem(int i)
    {
        return (Fragment)fragments.get(i);
    }

    public (FragmentManager fragmentmanager, List list)
    {
        this$0 = CommonTabFragmentActivity.this;
        super(fragmentmanager);
        fragments = list;
    }
}
