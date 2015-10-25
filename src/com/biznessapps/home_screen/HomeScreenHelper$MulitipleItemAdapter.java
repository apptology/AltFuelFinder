// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.entities.LocationEntity;
import java.util.List;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper

public static class  extends AbstractAdapter
{

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        LocationEntity locationentity = (LocationEntity)getItem(i);
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.utItemResourceId();
            viewgroup.itle((TextView)view.findViewById(com.biznessapps.layout.TextViewTitle));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.itle)view.getTag();
        }
        if (locationentity != null)
        {
            viewgroup.itle().setText(locationentity.getAddressInfo(", "));
        }
        return view;
    }

    public (Context context, List list)
    {
        super(context, list, com.biznessapps.layout.pter, null);
    }
}
