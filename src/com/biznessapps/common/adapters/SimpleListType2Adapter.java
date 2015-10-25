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
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.utils.StringUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.common.adapters:
//            AbstractAdapter

public class SimpleListType2Adapter extends AbstractAdapter
{

    protected ListItemHolder.CommonItem mHolder;
    protected CommonListEntity mItem;

    public SimpleListType2Adapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.common_layout_simple_list_item2, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            mHolder = new ListItemHolder.CommonItem();
            mHolder.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.tvName));
            mHolder.setDescriptionTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.tvDescription));
            mHolder.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.ivRightArrow));
            view.setTag(mHolder);
        } else
        {
            mHolder = (ListItemHolder.CommonItem)view.getTag();
        }
        mItem = (CommonListEntity)getItem(i);
        viewgroup = mHolder.getRightArrowView();
        if (mItem.hasArrow())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        viewgroup.setVisibility(i);
        mHolder.getTextViewTitle().setText(mItem.getTitle());
        if (StringUtils.isEmpty(mItem.getDescription()))
        {
            mHolder.getDescriptioinTextView().setText(mItem.getHint());
        } else
        {
            mHolder.getDescriptioinTextView().setText(mItem.getDescription());
        }
        if (mItem.hasColor())
        {
            view.setBackgroundDrawable(getListItemDrawable(mItem.getItemColor()));
            BZTextViewStyle.getInstance(getContext()).apply(mItem.getItemTextColor(), mHolder.getTextViewTitle());
        }
        BZTextViewStyle.getInstance(getContext()).apply(settings.getFeatureTextColor(), mHolder.getDescriptioinTextView());
        BZImageViewStyle.getInstance(getContext()).apply(Integer.valueOf(settings.getButtonBgColor()), (ViewGroup)view);
        return view;
    }
}
