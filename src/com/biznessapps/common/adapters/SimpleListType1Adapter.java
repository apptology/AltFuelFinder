// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.common.adapters:
//            AbstractAdapter

public class SimpleListType1Adapter extends AbstractAdapter
{

    public SimpleListType1Adapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.common_layout_simple_list_item1, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ListItemHolder.CommonItem commonitem;
        CommonListEntity commonlistentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            commonitem = new ListItemHolder.CommonItem();
            commonitem.setFrameContainer((ViewGroup)view.findViewById(com.biznessapps.layout.R.id.item_container));
            commonitem.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view));
            commonitem.setImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon));
            commonitem.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.right_arrow_view));
            view.setTag(commonitem);
        } else
        {
            commonitem = (ListItemHolder.CommonItem)view.getTag();
        }
        commonlistentity = (CommonListEntity)getItem(i);
        if (commonlistentity != null)
        {
            commonitem.getTextViewTitle().setText(Html.fromHtml(commonlistentity.getTitle()));
            if (StringUtils.isNotEmpty(commonlistentity.getImageUrl()))
            {
                imageFetcher.loadRoundedBackground(commonlistentity.getImageUrl(), commonitem.getImageView());
                commonitem.getImageView().setVisibility(0);
            } else
            if (commonlistentity.getImageId() > 0)
            {
                commonitem.getImageView().setBackgroundResource(commonlistentity.getImageId());
                commonitem.getImageView().setVisibility(0);
            } else
            {
                commonitem.getImageView().setVisibility(8);
            }
            if (commonlistentity.hasArrow())
            {
                commonitem.getRightArrowView().setVisibility(0);
            } else
            {
                commonitem.getRightArrowView().setVisibility(8);
            }
            if (commonlistentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(commonlistentity.getItemColor()));
                setTextColorToView(commonlistentity.getItemTextColor(), new TextView[] {
                    commonitem.getTextViewTitle()
                });
            }
        }
        checkPositioning(i, view, viewgroup);
        return view;
    }
}
