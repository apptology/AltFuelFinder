// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import java.util.List;

public class TabGalleryAdapter extends AbstractAdapter
{

    public TabGalleryAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = inflater.inflate(layoutItemResourceId, null);
        viewgroup = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.item_layout);
        Button button = (Button)getItem(i);
        if (button != null)
        {
            if ((ViewGroup)button.getParent() != null)
            {
                return (ViewGroup)button.getParent();
            }
            viewgroup.addView(button);
        }
        return view;
    }
}
