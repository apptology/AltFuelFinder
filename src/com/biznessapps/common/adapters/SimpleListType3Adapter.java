// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.adapters;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.common.adapters:
//            AbstractAdapter

public class SimpleListType3Adapter extends AbstractAdapter
{

    public SimpleListType3Adapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.common_layout_simple_list_item3, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ListItemHolder.CommonItem commonitem;
        CommonListEntity commonlistentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            commonitem = new ListItemHolder.CommonItem();
            commonitem.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.tvName));
            commonitem.setDescriptionTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.tvDescription));
            commonitem.setImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.ivRowIcon));
            commonitem.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.ivRightArrow));
            view.setTag(commonitem);
        } else
        {
            commonitem = (ListItemHolder.CommonItem)view.getTag();
        }
        commonlistentity = (CommonListEntity)getItem(i);
        if (commonlistentity != null)
        {
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
            commonitem.getTextViewTitle().setText(commonlistentity.getTitle());
            commonitem.getDescriptioinTextView().setText(commonlistentity.getDescription());
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
                BZTextViewStyle.getInstance(getContext()).apply(Integer.valueOf(commonlistentity.getItemTextColor()), (ViewGroup)view);
            }
        }
        checkPositioning(i, view, viewgroup);
        return view;
    }
}
