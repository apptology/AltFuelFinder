// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.components.SearchTopBar;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.events:
//            EventsListFragment, EventEntity

public class EventsV2ListFragment extends EventsListFragment
{

    private static final int PAST_EVENTS_TYPE = 2;
    private static final int UPCOMING_EVENTS_TYPE = 1;
    private Button pastEventsButton;
    private int searchType;
    private Button upcomingEventsButton;

    public EventsV2ListFragment()
    {
        searchType = 1;
    }

    private boolean canAddItem(String s, EventEntity evententity)
    {
        boolean flag1 = false;
        if (StringUtils.isNotEmpty(s))
        {
            evententity = evententity.getTitle();
            boolean flag = flag1;
            if (StringUtils.isNotEmpty(evententity))
            {
                flag = flag1;
                if (evententity.toLowerCase().contains(s.toLowerCase()))
                {
                    flag = true;
                }
            }
            return flag;
        } else
        {
            return true;
        }
    }

    private void updateButtonState(int i)
    {
        if (i == 1)
        {
            upcomingEventsButton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), upcomingEventsButton.getBackground());
            pastEventsButton.setTextColor(settings.getButtonBgColor());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), pastEventsButton.getBackground());
            return;
        } else
        {
            upcomingEventsButton.setTextColor(settings.getButtonBgColor());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), upcomingEventsButton.getBackground());
            pastEventsButton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), pastEventsButton.getBackground());
            return;
        }
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("EVENT_V2_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected List getFilteredData(List list)
    {
        boolean flag = true;
        ArrayList arraylist = new ArrayList();
        if (list != null && !list.isEmpty())
        {
            if (searchType != 1)
            {
                flag = false;
            }
            list = list.iterator();
            do
            {
                if (!list.hasNext())
                {
                    break;
                }
                EventEntity evententity = (EventEntity)list.next();
                Date date = evententity.getDatetimeEnd();
                long l;
                if (date != null)
                {
                    l = date.getTime();
                } else
                {
                    l = 0L;
                }
                if (flag)
                {
                    if (System.currentTimeMillis() < l && canAddItem(searchQuery, evententity))
                    {
                        arraylist.add(evententity);
                    }
                } else
                if (System.currentTimeMillis() > l && canAddItem(searchQuery, evententity))
                {
                    arraylist.add(evententity);
                }
            } while (true);
        }
        return arraylist;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_events_list_layout;
    }

    protected int getListItemLayoutId()
    {
        return com.biznessapps.layout.R.layout.list_event_v2_item;
    }

    protected String getNameOfEventDetailFragment()
    {
        return "EVENTS_V2_DETAIL_FRAGMENT";
    }

    protected String getRequestUrl()
    {
        return String.format("events_v2ex.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void initSearchBar()
    {
        com.biznessapps.common.components.SearchTopBar.SearchDataRunnable searchdatarunnable = new com.biznessapps.common.components.SearchTopBar.SearchDataRunnable() ;
        screenListener = (new SearchTopBar(getActivity(), root, searchdatarunnable, settings)).getScreenListener();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        initViews(viewgroup);
        upcomingEventsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.upcoming_events_button);
        pastEventsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.past_events_button);
        upcomingEventsButton.setText(com.biznessapps.layout.R.string.upcoming_events);
        pastEventsButton.setText(com.biznessapps.layout.R.string.past_events);
        viewgroup = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container);
        upcomingEventsButton.setTextColor(settings.getButtonTextColor());
        pastEventsButton.setTextColor(settings.getButtonTextColor());
        viewgroup.setBackgroundColor(settings.getNavigationBarColor());
        upcomingEventsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventsV2ListFragment this$0;

            public void onClick(View view)
            {
                searchType = 1;
                updateButtonState(searchType);
                loadData();
            }

            
            {
                this$0 = EventsV2ListFragment.this;
                super();
            }
        });
        pastEventsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EventsV2ListFragment this$0;

            public void onClick(View view)
            {
                searchType = 2;
                updateButtonState(searchType);
                loadData();
            }

            
            {
                this$0 = EventsV2ListFragment.this;
                super();
            }
        });
        updateButtonState(searchType);
    }

    protected void openEventItem(Activity activity, EventEntity evententity)
    {
        if (evententity != null && StringUtils.isNotEmpty(evententity.getId()))
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(getNameOfEventDetailFragment()));
            intent.putExtra("EVENT", evententity);
            intent.putExtra("TAB_UNIQUE_ID", ((CommonFragmentActivity)activity).getTabId());
            intent.putExtra("TAB_SPECIAL_ID", activity.getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("TAB_FRAGMENT", getNameOfEventDetailFragment());
            intent.putExtra("TAB_LABEL", evententity.getTitle());
            boolean flag;
            if (searchType == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            intent.putExtra("UPCOMING_EVENT", flag);
            intent.putExtra("CHILDREN_TAB_LABEL_PRESENT", false);
            intent.putExtra("BG_URL_EXTRA", bgUrl);
            activity.startActivity(intent);
        }
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseEventsV2(s);
        return cacher().saveData((new StringBuilder()).append("EVENT_V2_LIST_PROPERTY").append(tabId).toString(), items);
    }



/*
    static int access$002(EventsV2ListFragment eventsv2listfragment, int i)
    {
        eventsv2listfragment.searchType = i;
        return i;
    }

*/





/*
    static String access$402(EventsV2ListFragment eventsv2listfragment, String s)
    {
        eventsv2listfragment.searchQuery = s;
        return s;
    }

*/

}
