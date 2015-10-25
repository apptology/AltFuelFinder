// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.qr;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import java.util.List;

public class QRScannerHelpAdapter extends AbstractAdapter
{

    public QRScannerHelpAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.qr_scanner_help_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CommonListEntity commonlistentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.MessageItem();
            viewgroup.setTextViewText((TextView)view.findViewById(com.biznessapps.layout.R.id.help_description_text));
            viewgroup.setTextViewDate((TextView)view.findViewById(com.biznessapps.layout.R.id.help_position_text));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.MessageItem)view.getTag();
        }
        commonlistentity = (CommonListEntity)getItem(i);
        if (commonlistentity != null)
        {
            viewgroup.getTextViewText().setText(Html.fromHtml(commonlistentity.getTitle()));
            viewgroup.getTextViewDate().setText(Html.fromHtml((new StringBuilder()).append("").append(i + 1).toString()));
            if (commonlistentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(commonlistentity.getItemColor()));
                setTextColorToView(commonlistentity.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewText(), viewgroup.getTextViewDate()
                });
            }
        }
        return view;
    }
}
