// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.info_items;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import java.util.List;

public class InfoAdapter extends AbstractAdapter
{

    public InfoAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.info_item_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CommonListEntity commonlistentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.CommonItem();
            viewgroup.setFrameContainer((ViewGroup)view.findViewById(com.biznessapps.layout.R.id.info_item_container));
            viewgroup.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view));
            viewgroup.setImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon));
            viewgroup.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.right_arrow_view));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.CommonItem)view.getTag();
        }
        commonlistentity = (CommonListEntity)getItem(i);
        if (commonlistentity != null)
        {
            viewgroup.getTextViewTitle().setText(Html.fromHtml(commonlistentity.getTitle()));
            if (StringUtils.isNotEmpty(commonlistentity.getImageUrl()))
            {
                viewgroup.getImageView().setVisibility(0);
            } else
            if (commonlistentity.getImageId() > 0)
            {
                viewgroup.getImageView().setBackgroundResource(commonlistentity.getImageId());
                viewgroup.getImageView().setVisibility(0);
            } else
            {
                viewgroup.getImageView().setVisibility(8);
            }
            if (commonlistentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(commonlistentity.getItemColor()));
                setTextColorToView(commonlistentity.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewTitle()
                });
            }
        }
        return view;
    }
}
