// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.menu_items;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import java.util.List;

// Referenced classes of package com.biznessapps.menu_items:
//            MenuSectionEntities

public class MenuSectionItemAdapter extends AbstractAdapter
{

    public MenuSectionItemAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        MenuSectionEntities menusectionentities;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.MenuItem();
            viewgroup.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.menu_text));
            viewgroup.setTextViewPrice((TextView)view.findViewById(com.biznessapps.layout.R.id.menu_price_text));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.MenuItem)view.getTag();
        }
        menusectionentities = (MenuSectionEntities)getItem(i);
        if (menusectionentities != null)
        {
            viewgroup.getTextViewTitle().setText(Html.fromHtml(menusectionentities.getTitle()));
            viewgroup.getTextViewPrice().setText(Html.fromHtml(menusectionentities.getPrice()));
            if (menusectionentities.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(menusectionentities.getItemColor()));
                setTextColorToView(menusectionentities.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewTitle(), viewgroup.getTextViewPrice()
                });
            }
        }
        return view;
    }
}
