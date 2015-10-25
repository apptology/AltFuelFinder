// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.navigation.TabButton;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class HomeSliderListAdapter extends AbstractAdapter
{

    private AppSettings appSettings;

    public HomeSliderListAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.home_slider_list_row, uisettings);
        appSettings = AppCore.getInstance().getAppSettings();
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        byte byte0 = 8;
        viewgroup = inflater.inflate(layoutItemResourceId, null);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.simple_text_view);
        ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.row_icon);
        TabButton tabbutton = (TabButton)getItem(i);
        int j;
        boolean flag;
        if (tabbutton.getTab().hasCustomDesign())
        {
            view = (new StringBuilder()).append(tabbutton.getTab().getTabIcon()).append(tabbutton.getTab().getImage()).toString();
        } else
        {
            view = (new StringBuilder()).append(appSettings.getTabIcon()).append(tabbutton.getTab().getImage()).toString();
        }
        if (StringUtils.isNotEmpty(view))
        {
            imageFetcher.loadImage(view, imageview);
            imageview.setVisibility(0);
        } else
        {
            imageview.setVisibility(8);
        }
        textview.setText(Html.fromHtml(tabbutton.getTab().getLabel()));
        j = appSettings.getHomeTabTextColor();
        if (tabbutton.getTab().hasCustomDesign())
        {
            flag = tabbutton.getTab().isShowText();
        } else
        {
            flag = true;
        }
        i = byte0;
        if (flag)
        {
            i = 0;
        }
        textview.setVisibility(i);
        i = j;
        if (StringUtils.isNotEmpty(tabbutton.getTab().getTabText()))
        {
            i = ViewUtils.getColor(tabbutton.getTab().getTabText());
        }
        viewgroup.setBackgroundDrawable(getListItemDrawable(0));
        setTextColorToView(i, new TextView[] {
            textview
        });
        return viewgroup;
    }
}
