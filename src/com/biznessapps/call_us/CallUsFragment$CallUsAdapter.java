// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.call_us;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import java.util.List;

// Referenced classes of package com.biznessapps.call_us:
//            CallUsFragment, CallUsEntity

public static class > extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView phone;
        TextView title;

        private ViewHolder()
        {
        }

        ViewHolder(CallUsFragment._cls1 _pcls1)
        {
            this();
        }
    }


    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CallUsEntity callusentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder(null);
            viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout..ViewHolder.title);
            viewgroup.phone = (TextView)view.findViewById(com.biznessapps.layout..ViewHolder.phone);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        callusentity = (CallUsEntity)getItem(i);
        if (callusentity != null)
        {
            ((ViewHolder) (viewgroup)).title.setText(Html.fromHtml(callusentity.getTitle()));
            ((ViewHolder) (viewgroup)).phone.setText(Html.fromHtml(callusentity.getPhone()));
            if (callusentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(callusentity.getItemColor()));
                setTextColorToView(callusentity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).title, ((ViewHolder) (viewgroup)).phone
                });
            }
        }
        return view;
    }

    public ViewHolder(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.t>, uisettings);
    }
}
