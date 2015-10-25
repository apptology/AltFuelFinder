// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.more;

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
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.more:
//            Tab

public class MoreTabAdapter extends AbstractAdapter
{

    public MoreTabAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.more_item_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        viewgroup = inflater.inflate(layoutItemResourceId, null);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.simple_text_view);
        ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.row_icon);
        TabButton tabbutton = (TabButton)getItem(i);
        view = AppCore.getInstance().getAppSettings();
        if (tabbutton.getTab().hasCustomDesign())
        {
            view = (new StringBuilder()).append(tabbutton.getTab().getTabIcon()).append(tabbutton.getTab().getImage()).toString();
        } else
        {
            view = (new StringBuilder()).append(view.getTabIcon()).append(tabbutton.getTab().getImage()).toString();
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
        if (tabbutton.hasColor())
        {
            viewgroup.setBackgroundDrawable(getListItemDrawable(tabbutton.getItemColor()));
            setTextColorToView(tabbutton.getItemTextColor(), new TextView[] {
                textview
            });
        }
        return viewgroup;
    }
}
