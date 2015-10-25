// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.utils.CommonUtils;
import java.util.List;

public class MyAddressAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView addressView;
        ImageView imageView;
        TextView nicknameView;

        private ViewHolder()
        {
        }

    }


    public MyAddressAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.fo_my_address_item, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        AccountEntity accountentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.nicknameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.nickname_text_view);
            viewgroup.addressView = (TextView)view.findViewById(com.biznessapps.layout.R.id.address_text_view);
            viewgroup.imageView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        accountentity = (AccountEntity)getItem(i);
        ((ViewHolder) (viewgroup)).nicknameView.setText(accountentity.getNickName());
        ((ViewHolder) (viewgroup)).addressView.setText(accountentity.getAddress1());
        if (accountentity.hasColor())
        {
            CommonUtils.overrideImageColor(accountentity.getItemTextColor(), ((ViewHolder) (viewgroup)).imageView.getDrawable());
            view.setBackgroundDrawable(getListItemDrawable(accountentity.getItemColor()));
            setTextColorToView(accountentity.getItemTextColor(), new TextView[] {
                ((ViewHolder) (viewgroup)).nicknameView, ((ViewHolder) (viewgroup)).addressView
            });
        }
        return view;
    }
}
