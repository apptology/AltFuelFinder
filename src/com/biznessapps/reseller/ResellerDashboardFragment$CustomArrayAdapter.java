// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerDashboardFragment, ResellerInfo

private class this._cls0 extends ArrayAdapter
{

    final ResellerDashboardFragment this$0;

    public View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        view = (TextView)super.getDropDownView(i, view, viewgroup);
        if (ResellerDashboardFragment.access$500(ResellerDashboardFragment.this) == i)
        {
            view.setTextColor(ResellerDashboardFragment.access$400(ResellerDashboardFragment.this).getHeaderBgColor());
            return view;
        } else
        {
            view.setTextColor(0xff000000);
            return view;
        }
    }

    public (Context context, int i, CharSequence acharsequence[])
    {
        this$0 = ResellerDashboardFragment.this;
        super(context, i, acharsequence);
    }
}
