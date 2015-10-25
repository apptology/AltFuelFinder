// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.navigation.TabButton;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

public class MenuGridAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        ImageView imageView;
        TextView titleView;

        private ViewHolder()
        {
        }

    }


    private AppSettings appSettings;
    private int tabMargin;
    private int tabSize;

    public MenuGridAdapter(Context context, List list, UiSettings uisettings, int i)
    {
        super(context, list, com.biznessapps.layout.R.layout.home_tab, uisettings);
        appSettings = AppCore.getInstance().getAppSettings();
        if (tabMargin == 0)
        {
            tabMargin = context.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.common_padding_small0);
        }
        tabSize = i - tabMargin * 2;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        Tab tab = ((TabButton)getItem(i)).getTab();
        float f;
        Object obj;
        Object obj1;
        AppSettings appsettings;
        com.biznessapps.utils.google.caching.ImageWorker.TintContainer tintcontainer;
        boolean flag;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.imageView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.navigation_image_view);
            viewgroup.titleView = (TextView)view.findViewById(com.biznessapps.layout.R.id.navigation_text_view);
            i = (int)((double)tabSize * 0.40000000000000002D);
            android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)((ViewHolder) (viewgroup)).imageView.getLayoutParams();
            layoutparams.height = i;
            layoutparams.width = i;
            view.setLayoutParams(new android.widget.AbsListView.LayoutParams(tabSize, tabSize));
            view.setTag(com.biznessapps.layout.R.id.navigation_tab_container, viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag(com.biznessapps.layout.R.id.navigation_tab_container);
        }
        view.setBackgroundDrawable(null);
        ((ViewHolder) (viewgroup)).imageView.setBackgroundDrawable(null);
        appsettings = AppCore.getInstance().getAppSettings();
        if (tab.hasCustomDesign())
        {
            obj = tab.getTabText();
        } else
        {
            obj = appsettings.getTabText();
        }
        if (tab.hasCustomDesign())
        {
            obj1 = tab.getTabTint();
        } else
        {
            obj1 = appsettings.getTabTint();
        }
        if (tab.hasCustomDesign())
        {
            f = tab.getTabTintOpacity();
        } else
        {
            f = appsettings.getTabTintOpacity();
        }
        if (tab.hasCustomDesign())
        {
            flag = tab.isShowText();
        } else
        {
            flag = appsettings.isShowText();
        }
        ((ViewHolder) (viewgroup)).titleView.setText(tab.getLabel());
        ((ViewHolder) (viewgroup)).titleView.setTextColor(ViewUtils.getColor(((String) (obj))));
        tintcontainer = new com.biznessapps.utils.google.caching.ImageWorker.TintContainer();
        tintcontainer.setTintColor(ViewUtils.getColor(((String) (obj1)), 0));
        tintcontainer.setTintOpacity(f);
        obj = ((ViewHolder) (viewgroup)).titleView;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        ((TextView) (obj)).setVisibility(i);
        if (tab.hasCustomDesign())
        {
            obj = tab.getTabSrc();
        } else
        {
            obj = appsettings.getTabSrc();
        }
        imageFetcher.loadImage(((String) (obj)), view, tintcontainer);
        obj1 = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        if (tab.hasCustomDesign())
        {
            obj = (new StringBuilder()).append(tab.getTabIcon()).append(tab.getImage()).toString();
        } else
        {
            obj = (new StringBuilder()).append(appsettings.getTabIcon()).append(tab.getImage()).toString();
        }
        if (StringUtils.isNotEmpty(((String) (obj))))
        {
            ((ImageFetcher) (obj1)).loadImage(((String) (obj)), ((ViewHolder) (viewgroup)).imageView);
        }
        return view;
    }
}
