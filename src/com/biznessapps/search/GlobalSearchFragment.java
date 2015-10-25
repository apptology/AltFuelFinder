// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.search;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.adapters.SeparatedListAdapter;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.more.Tab;
import com.biznessapps.news.SearchEntity;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class GlobalSearchFragment extends CommonListFragment
{
    private class SearchAdapter extends AbstractAdapter
    {

        final GlobalSearchFragment this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            byte byte0 = 8;
            SearchEntity searchentity;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.content = (TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view);
                viewgroup.thumbnailView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon);
                viewgroup.rightArrowView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.right_arrow_view);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            searchentity = (SearchEntity)getItem(i);
            if (searchentity != null)
            {
                ((ViewHolder) (viewgroup)).content.setText(Html.fromHtml(searchentity.getText()));
                boolean flag1 = StringUtils.isNotEmpty(searchentity.getThumbnail());
                boolean flag = true;
                i = ((flag) ? 1 : 0);
                if (StringUtils.isNotEmpty(searchentity.getNewsType()))
                {
                    i = ((flag) ? 1 : 0);
                    if (StringUtils.isEmpty(searchentity.getLink()))
                    {
                        i = 0;
                    }
                }
                ImageView imageview = ((ViewHolder) (viewgroup)).rightArrowView;
                if (i != 0)
                {
                    i = 0;
                } else
                {
                    i = 8;
                }
                imageview.setVisibility(i);
                imageview = ((ViewHolder) (viewgroup)).thumbnailView;
                i = byte0;
                if (flag1)
                {
                    i = 0;
                }
                imageview.setVisibility(i);
                imageFetcher.loadRoundedBackground(searchentity.getThumbnail(), ((ViewHolder) (viewgroup)).thumbnailView);
                if (searchentity.hasColor())
                {
                    view.setBackgroundDrawable(getListItemDrawable(searchentity.getItemColor()));
                    setTextColorToView(searchentity.getItemTextColor(), new TextView[] {
                        ((ViewHolder) (viewgroup)).content
                    });
                }
            }
            return view;
        }

        public SearchAdapter(Context context, List list, UiSettings uisettings)
        {
            this$0 = GlobalSearchFragment.this;
            super(context, list, com.biznessapps.layout.R.layout.global_search_item, uisettings);
            inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        }
    }

    private static class ViewHolder
    {

        TextView content;
        ImageView rightArrowView;
        ImageView thumbnailView;

        private ViewHolder()
        {
        }

    }


    private ImageView searchCloseView;
    private EditText searchEditText;
    private List searchItems;
    private String searchQuery;

    public GlobalSearchFragment()
    {
    }

    private void initListeners()
    {
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final GlobalSearchFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                SearchEntity searchentity = (SearchEntity)adapterview.getAdapter().getItem(i);
                adapterview = AppCore.getInstance().getCachingManager().getTabList();
                view = null;
                Iterator iterator = adapterview.iterator();
                do
                {
                    adapterview = view;
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    adapterview = (Tab)iterator.next();
                } while (!adapterview.getTabId().equalsIgnoreCase(searchentity.getTabId()));
                if (StringUtils.isNotEmpty(searchentity.getNewsType()))
                {
                    if (StringUtils.isNotEmpty(searchentity.getLink()))
                    {
                        adapterview = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
                        adapterview.putExtra("URL", searchentity.getLink());
                        adapterview.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
                        adapterview.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                        startActivity(adapterview);
                    }
                } else
                if (adapterview != null)
                {
                    adapterview = ApiUtils.getTabIntent(getApplicationContext(), adapterview, searchentity.getSectionId(), searchentity.getItemId());
                    startActivity(adapterview);
                    return;
                }
            }

            
            {
                this$0 = GlobalSearchFragment.this;
                super();
            }
        });
    }

    private void updateList(List list, Activity activity)
    {
label0:
        {
            if (activity != null)
            {
                if (list == null || list.isEmpty())
                {
                    break label0;
                }
                adapter = new SeparatedListAdapter(activity.getApplicationContext(), com.biznessapps.layout.R.layout.section_header, settings);
                LinkedHashMap linkedhashmap = new LinkedHashMap();
                Object obj;
                for (Iterator iterator = list.iterator(); iterator.hasNext(); linkedhashmap.put(list, obj))
                {
                    SearchEntity searchentity = (SearchEntity)iterator.next();
                    obj = searchentity.getSection();
                    list = ((List) (obj));
                    if (StringUtils.isEmpty(((String) (obj))))
                    {
                        list = "";
                    }
                    List list1 = (List)linkedhashmap.get(list);
                    obj = list1;
                    if (list1 == null)
                    {
                        obj = new LinkedList();
                    }
                    ((List) (obj)).add((SearchEntity)getWrappedItem(searchentity, ((List) (obj))));
                }

                list = linkedhashmap.keySet().iterator();
                do
                {
                    if (!list.hasNext())
                    {
                        break;
                    }
                    String s = (String)list.next();
                    Object obj1 = (List)linkedhashmap.get(s);
                    if (obj1 != null && ((List) (obj1)).size() > 0)
                    {
                        obj1 = new SearchAdapter(activity.getApplicationContext(), ((List) (obj1)), settings);
                        ((SeparatedListAdapter)adapter).addSection(s, ((Adapter) (obj1)));
                    }
                } while (true);
                listView.setAdapter(adapter);
            }
            return;
        }
        handleNoDataEvent(activity);
    }

    protected String getRequestUrl()
    {
        return String.format("global_search.php?app_code=%s&keywords=%s&platform=android", new Object[] {
            AppCore.getInstance().getCachingManager().getAppCode(), URLEncoder.encode(searchQuery)
        });
    }

    protected void initViews(ViewGroup viewgroup)
    {
        searchCloseView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.search_icon_close);
        searchEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        listView = (RefreshableListView)viewgroup.findViewById(com.biznessapps.layout.R.id.search_results_listview);
        ViewUtils.setRootBgColor(viewgroup, settings);
        searchEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final GlobalSearchFragment this$0;

            public void run()
            {
                searchQuery = searchEditText.getText().toString();
                if (StringUtils.isNotEmpty(searchQuery))
                {
                    if (
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = GlobalSearchFragment.this;
                super();
            }
        }));
        searchCloseView.setOnClickListener(new android.view.View.OnClickListener() {

            final GlobalSearchFragment this$0;

            public void onClick(View view)
            {
                getHoldActivity().finish();
            }

            
            {
                this$0 = GlobalSearchFragment.this;
                super();
            }
        });
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), searchCloseView.getDrawable());
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.global_search_layout, null);
        initSettingsData();
        initViews(root);
        initListeners();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        return root;
    }

    protected boolean tryParseData(String s)
    {
        searchItems = JsonParser.parseGlobalSearchData(s);
        return searchItems != null;
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        updateList(searchItems, activity);
    }



/*
    static String access$002(GlobalSearchFragment globalsearchfragment, String s)
    {
        globalsearchfragment.searchQuery = s;
        return s;
    }

*/




}
