// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.SimpleListType3Adapter;
import com.biznessapps.common.style.BZImageViewStyle;
import java.util.List;

public class ListPlayerAdapter extends SimpleListType3Adapter
{

    public ListPlayerAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        view = super.getView(i, view, viewgroup);
        viewgroup = (com.biznessapps.common.adapters.ListItemHolder.CommonItem)view.getTag();
        i = getContext().getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.common_padding_medium1);
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)viewgroup.getImageView().getLayoutParams();
        layoutparams.width = i;
        layoutparams.height = i;
        BZImageViewStyle.getInstance(getContext()).apply(settings.getButtonBgColor(), viewgroup.getImageView());
        return view;
    }
}
