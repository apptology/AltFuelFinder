// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.SeparatedListAdapter;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeRssEntity, YoutubeRssAdapter

public class YoutubeListFragment extends CommonListFragment
{

    private static final int FEATURED_SEARCH_TYPE = 1;
    private static final int POPULAR_SEARCH_TYPE = 2;
    private static final int RECENT_SEARCH_TYPE = 3;
    private int currentType;
    private Button featuredButton;
    private Button popularButton;
    private Button recentButton;

    public YoutubeListFragment()
    {
        currentType = 1;
    }

    private List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (YoutubeRssEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void plugListView(Activity activity)
    {
        Object obj = getFilteredData(items);
        if (ApiUtils.hasNotData(((List) (obj))))
        {
            handleNoDataEvent(activity);
            return;
        }
        adapter = new SeparatedListAdapter(activity.getApplicationContext(), com.biznessapps.layout.R.layout.section_header, settings);
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        Object obj1;
        for (Iterator iterator = ((List) (obj)).iterator(); iterator.hasNext(); linkedhashmap.put(obj, obj1))
        {
            YoutubeRssEntity youtuberssentity = (YoutubeRssEntity)iterator.next();
            if (!youtuberssentity.getId().equalsIgnoreCase(itemId));
            obj1 = youtuberssentity.getSection();
            obj = obj1;
            if (StringUtils.isEmpty(((String) (obj1))))
            {
                obj = "";
            }
            List list = (List)linkedhashmap.get(obj);
            obj1 = list;
            if (list == null)
            {
                obj1 = new LinkedList();
            }
            ((List) (obj1)).add(getWrappedItem(youtuberssentity, ((List) (obj1))));
        }

        obj = linkedhashmap.keySet().iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            String s = (String)((Iterator) (obj)).next();
            Object obj2 = (List)linkedhashmap.get(s);
            if (obj2 != null && ((List) (obj2)).size() > 0)
            {
                obj2 = new YoutubeRssAdapter(activity.getApplicationContext(), ((List) (obj2)), settings);
                ((SeparatedListAdapter)adapter).addSection(s, ((Adapter) (obj2)));
            }
        } while (true);
        listView.setAdapter(adapter);
        initListViewListener();
    }

    private void updateButtonActive(Button button, Button button1, Button button2)
    {
        button.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), button.getBackground());
        button1.setTextColor(settings.getButtonBgColor());
        CommonUtils.overrideImageColor(settings.getButtonTextColor(), button1.getBackground());
        button2.setTextColor(settings.getButtonBgColor());
        CommonUtils.overrideImageColor(settings.getButtonTextColor(), button2.getBackground());
    }

    private void updateButtonState(int i)
    {
        if (i == 1)
        {
            updateButtonActive(featuredButton, popularButton, recentButton);
            return;
        }
        if (i == 2)
        {
            updateButtonActive(popularButton, featuredButton, recentButton);
            return;
        } else
        {
            updateButtonActive(recentButton, featuredButton, popularButton);
            return;
        }
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("YOUTUBE_LIST_PROPERTY").append(tabId).append(currentType).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.youtube_list_layout;
    }

    protected String getRequestUrl()
    {
        String s;
        if (currentType == 1)
        {
            s = "&orderby=featured";
        } else
        if (currentType == 2)
        {
            s = "&orderby=popular";
        } else
        {
            s = "&orderby=recent";
        }
        return (new StringBuilder()).append(String.format("rss.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        })).append(s).toString();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        featuredButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.featured_button);
        popularButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.popular_button);
        recentButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.recent_button);
        viewgroup = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container);
        featuredButton.setText(com.biznessapps.layout.R.string.featured);
        popularButton.setText(com.biznessapps.layout.R.string.popular);
        recentButton.setText(com.biznessapps.layout.R.string.recent);
        featuredButton.setTextColor(settings.getButtonTextColor());
        popularButton.setTextColor(settings.getButtonTextColor());
        recentButton.setTextColor(settings.getButtonTextColor());
        viewgroup.setBackgroundColor(settings.getNavigationBarColor());
        featuredButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeListFragment this$0;

            public void onClick(View view)
            {
                currentType = 1;
                updateButtonState(currentType);
                loadData();
            }

            
            {
                this$0 = YoutubeListFragment.this;
                super();
            }
        });
        recentButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeListFragment this$0;

            public void onClick(View view)
            {
                currentType = 3;
                updateButtonState(currentType);
                loadData();
            }

            
            {
                this$0 = YoutubeListFragment.this;
                super();
            }
        });
        popularButton.setOnClickListener(new android.view.View.OnClickListener() {

            final YoutubeListFragment this$0;

            public void onClick(View view)
            {
                currentType = 2;
                updateButtonState(currentType);
                loadData();
            }

            
            {
                this$0 = YoutubeListFragment.this;
                super();
            }
        });
        updateButtonState(currentType);
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (YoutubeRssEntity)adapterview.getAdapter().getItem(i);
        if (adapterview != null && StringUtils.isNotEmpty(adapterview.getId()))
        {
            view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("YOUTUBE_SINGLE_VIEW_FRAGMENT"));
            view.putExtra("parent_id", adapterview.getId());
            view.putExtra("LINK", adapterview.getLink());
            view.putExtra("NOTE_DATA", adapterview.getDescription());
            view.putExtra("YOUTUBE_MODE", true);
            view.putExtra("BG_URL_EXTRA", bgUrl);
            view.putExtra("ITEM_EXTRA", adapterview);
            view.putExtra("IMAGE_URL", adapterview.getImageUrl());
            view.putExtra("TAB_FRAGMENT", "YOUTUBE_SINGLE_VIEW_FRAGMENT");
            view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
            view.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            view.putExtra("TAB_LABEL", adapterview.getTitle());
            startActivity(view);
        }
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseYoutubeRssList(s);
        return cacher().saveData((new StringBuilder()).append("YOUTUBE_LIST_PROPERTY").append(tabId).append(currentType).toString(), items);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }

    protected boolean useSearchBar()
    {
        return true;
    }



/*
    static int access$002(YoutubeListFragment youtubelistfragment, int i)
    {
        youtubelistfragment.currentType = i;
        return i;
    }

*/




}
