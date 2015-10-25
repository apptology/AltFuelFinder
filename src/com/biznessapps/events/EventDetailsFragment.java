// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.info_items.InfoDetailFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Date;

// Referenced classes of package com.biznessapps.events:
//            EventEntity

public class EventDetailsFragment extends InfoDetailFragment
{

    private ImageView addCalendarButton;
    private String eventDetailId;
    private boolean isRecurring;

    public EventDetailsFragment()
    {
    }

    public static void addEvent(Activity activity, EventEntity evententity)
    {
        Intent intent = new Intent("android.intent.action.EDIT");
        intent.setType("vnd.android.cursor.item/event");
        if (StringUtils.isNotEmpty(evententity.getTitle()))
        {
            intent.putExtra("title", evententity.getTitle());
        }
        if (evententity.getDatetimeBegin() != null)
        {
            intent.putExtra("beginTime", evententity.getDatetimeBegin().getTime());
        }
        if (evententity.getDatetimeEnd() != null)
        {
            intent.putExtra("endTime", evententity.getDatetimeEnd().getTime());
        }
        if (evententity.isRecurring())
        {
            intent.putExtra("rrule", String.format("FREQ=WEEKLY;WKST=MO;BYDAY=%s", new Object[] {
                evententity.getRecurringDay()
            }));
        }
        activity.startActivity(intent);
    }

    protected boolean canHaveNewDesign()
    {
        return false;
    }

    protected boolean canUseCachedData()
    {
        infoItem = (CommonListEntity)cacher().getData((new StringBuilder()).append("EVENT_DETAIL_PROPERTY").append(eventDetailId).toString());
        return infoItem != null;
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setItemId(eventDetailId);
        analyticentity.setCatId(null);
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.event_detail_layout;
    }

    protected String getRequestUrl()
    {
        String s;
        if (isRecurring)
        {
            s = "1";
        } else
        {
            s = "0";
        }
        return String.format("event_detail.php?app_code=%s&id=%s&recurring=%s", new Object[] {
            cacher().getAppCode(), eventDetailId, s
        });
    }

    protected void initCalendarButton()
    {
        final EventEntity item = (EventEntity)getIntent().getSerializableExtra("EVENT");
        addCalendarButton = (ImageView)root.findViewById(com.biznessapps.layout.R.id.add_event_to_calendar);
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), addCalendarButton.getDrawable());
        addCalendarButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventDetailsFragment this$0;
            final EventEntity val$item;

            public void onClick(View view)
            {
                EventDetailsFragment.addEvent(getHoldActivity(), item);
            }

            
            {
                this$0 = EventDetailsFragment.this;
                item = evententity;
                super();
            }
        });
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = super.onCreateView(layoutinflater, viewgroup, bundle);
        initCalendarButton();
        return layoutinflater;
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        activity = (EventEntity)getIntent().getSerializableExtra("EVENT");
        eventDetailId = activity.getId();
        isRecurring = activity.isRecurring();
    }

    protected boolean tryParseData(String s)
    {
        infoItem = JsonParser.parseInfo(s);
        return cacher().saveData((new StringBuilder()).append("EVENT_DETAIL_PROPERTY").append(eventDetailId).toString(), infoItem);
    }
}
