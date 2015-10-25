// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.CommonUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            AccountEntity

public class AccountAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        ImageView imageView;
        TextView titleView;

        private ViewHolder()
        {
        }

    }


    public AccountAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_account_item, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        AccountEntity accountentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.titleView = (TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view);
            viewgroup.imageView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        accountentity = (AccountEntity)getItem(i);
        ((ViewHolder) (viewgroup)).titleView.setText(accountentity.getTitle());
        ((ViewHolder) (viewgroup)).imageView.setImageResource(accountentity.getImageId());
        if (accountentity.hasColor())
        {
            CommonUtils.overrideImageColor(accountentity.getItemTextColor(), ((ViewHolder) (viewgroup)).imageView.getDrawable());
            view.setBackgroundDrawable(getListItemDrawable(accountentity.getItemColor()));
            setTextColorToView(accountentity.getItemTextColor(), new TextView[] {
                ((ViewHolder) (viewgroup)).titleView
            });
        }
        return view;
    }
}
