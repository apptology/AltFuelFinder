// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.fragments;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.components.SearchTopBar;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.common.fragments:
//            CommonFragment

public abstract class CommonListFragment extends CommonFragment
{
    public static interface ScreenListener
    {

        public abstract void onResumed();
    }


    protected static final int FIRST_ITEM = 0;
    protected static final int ONE_ITEM_SIZE = 1;
    protected AbstractAdapter adapter;
    protected int count;
    protected int currentItemIndex;
    protected boolean isOffsetLoading;
    protected List items;
    protected RefreshableListView listView;
    protected boolean noDataMore;
    protected int offset;
    protected List offsetItems;
    protected final com.biznessapps.common.adapters.AbstractAdapter.PositionListener positionListener = new com.biznessapps.common.adapters.AbstractAdapter.PositionListener() {

        final CommonListFragment this$0;

        public void onLastPositionAchieved(int i)
        {
            if (items != null && !items.isEmpty() && isUsedPositioning() && !isOffsetLoading)
            {
                currentItemIndex = i;
                offset = items.size();
                isOffsetLoading = true;
                if (!noDataMore)
                {
                    loadData();
                }
            }
        }

            
            {
                this$0 = CommonListFragment.this;
                super();
            }
    };
    protected CommonListEntity preLoadedItem;
    protected ScreenListener screenListener;
    protected String searchQuery;

    public CommonListFragment()
    {
        count = 20;
    }

    protected String defineBgUrl(Intent intent)
    {
        String s = super.defineBgUrl(intent);
        intent = s;
        if (items != null)
        {
            intent = s;
            if (!items.isEmpty())
            {
                intent = s;
                if (StringUtils.isNotEmpty(((CommonListEntity)items.get(0)).getBackground()))
                {
                    intent = ((CommonListEntity)items.get(0)).getBackground();
                }
            }
        }
        return intent;
    }

    protected void findPreloadedItem(List list, String s)
    {
label0:
        {
            if (list == null)
            {
                break label0;
            }
            list = list.iterator();
            CommonListEntity commonlistentity;
            do
            {
                if (!list.hasNext())
                {
                    break label0;
                }
                commonlistentity = (CommonListEntity)list.next();
            } while (!commonlistentity.getId().equalsIgnoreCase(s) || preLoadedItem != null);
            preLoadedItem = commonlistentity;
            preLoadedItem.setUseAgain(true);
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.list_layout;
    }

    protected View getViewForBg()
    {
        return listView;
    }

    protected CommonListEntity getWrappedItem(CommonListEntity commonlistentity, List list)
    {
        return ViewUtils.getWrappedItem(commonlistentity, list, settings, StringUtils.isNotEmpty(bgUrl));
    }

    protected void handleNoDataEvent(Activity activity)
    {
        listView.setAdapter(null);
        ViewUtils.showNoDataToast(activity);
    }

    protected void initListViewListener()
    {
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CommonListFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                onListItemClick(adapterview, view, i, l);
            }

            
            {
                this$0 = CommonListFragment.this;
                super();
            }
        });
        listView.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {

            final CommonListFragment this$0;

            public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
            {
                return CommonListFragment.this.onItemLongClick(adapterview, view, i, l);
            }

            
            {
                this$0 = CommonListFragment.this;
                super();
            }
        });
    }

    protected void initSearchBar()
    {
        com.biznessapps.common.components.SearchTopBar.SearchDataRunnable searchdatarunnable = new com.biznessapps.common.components.SearchTopBar.SearchDataRunnable() {

            final CommonListFragment this$0;

            public void run()
            {
                searchQuery = getSearchQuery();
                loadData();
            }

            
            {
                this$0 = CommonListFragment.this;
                super();
            }
        };
        screenListener = (new SearchTopBar(getActivity(), root, searchdatarunnable, settings)).getScreenListener();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        listView = (RefreshableListView)((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view_root)).findViewById(com.biznessapps.layout.R.id.list_view);
        listView.setPositionListener(positionListener);
        listView.setItemsCanFocus(false);
        ViewUtils.setRootBgColor(viewgroup, settings);
        if (useSearchBar())
        {
            initSearchBar();
        }
    }

    protected boolean isUsedPositioning()
    {
        return false;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        loadData();
        return root;
    }

    public void onDestroy()
    {
        listView.removeListeners();
        super.onDestroy();
    }

    protected boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        return false;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
    }

    public void onResume()
    {
        super.onResume();
        if (screenListener != null)
        {
            screenListener.onResumed();
        }
    }

    protected void preDataLoading(Activity activity)
    {
        super.preDataLoading(activity);
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        isOffsetLoading = false;
    }

    protected boolean useSearchBar()
    {
        return false;
    }
}
