// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.events:
//            EventEntity

public class EventAdapter extends AbstractAdapter
{

    private boolean isEventV2;

    public EventAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
        boolean flag;
        if (i == com.biznessapps.layout.R.layout.list_event_v2_item)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isEventV2 = flag;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        EventEntity evententity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.EventItem();
            viewgroup.setTopTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.event_top_text));
            viewgroup.setTextViewText((TextView)view.findViewById(com.biznessapps.layout.R.id.event_text));
            viewgroup.setDateTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.event_date_text));
            viewgroup.setTextViewCalendar((TextView)view.findViewById(com.biznessapps.layout.R.id.calendar_text));
            viewgroup.setRightArrowView((ImageView)view.findViewById(com.biznessapps.layout.R.id.right_arrow_view));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.EventItem)view.getTag();
        }
        evententity = (EventEntity)getItem(i);
        if (evententity != null)
        {
            TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.calendar_month_text);
            textview.setText(evententity.getMonth());
            viewgroup.getTextViewText().setText(Html.fromHtml(evententity.getTitle()));
            viewgroup.getTextViewCalendar().setText(evententity.getDay());
            if (evententity.getDatetimeBegin() != null)
            {
                viewgroup.getDateTextView().setText(DateUtils.getStandartDateFormat(evententity.getDatetimeBegin()));
            }
            String s = LocationUtils.getAddress(isEventV2, evententity);
            if (StringUtils.isNotEmpty(s))
            {
                viewgroup.getTopTextView().setText(s);
                viewgroup.getTopTextView().setVisibility(0);
            } else
            {
                viewgroup.getTopTextView().setVisibility(8);
            }
            if (evententity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(evententity.getItemColor()));
                setTextColorToView(evententity.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewText(), viewgroup.getDateTextView(), viewgroup.getTextViewCalendar(), viewgroup.getTopTextView(), textview
                });
            }
        }
        return view;
    }
}
