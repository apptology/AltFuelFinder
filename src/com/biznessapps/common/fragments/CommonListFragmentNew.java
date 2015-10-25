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
import java.util.List;

// Referenced classes of package com.biznessapps.common.fragments:
//            CommonFragment

public abstract class CommonListFragmentNew extends CommonFragment
{

    protected static final int FIRST_ITEM = 0;
    protected static final int ONE_ITEM_SIZE = 1;
    protected AbstractAdapter adapter;
    protected int count;
    protected List items;
    protected RefreshableListView listView;
    protected int offset;
    protected final com.biznessapps.common.adapters.AbstractAdapter.PositionListener positionListener = new com.biznessapps.common.adapters.AbstractAdapter.PositionListener() {

        final CommonListFragmentNew this$0;

        public void onLastPositionAchieved(int i)
        {
        }

            
            {
                this$0 = CommonListFragmentNew.this;
                super();
            }
    };
    protected CommonListFragment.ScreenListener screenListener;
    protected String searchQuery;
    protected SearchTopBar searchTopBar;

    public CommonListFragmentNew()
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
                intent = ((CommonListEntity)items.get(0)).getBackground();
            }
        }
        return intent;
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

            final CommonListFragmentNew this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                onListItemClick(adapterview, view, i, l);
            }

            
            {
                this$0 = CommonListFragmentNew.this;
                super();
            }
        });
        listView.setOnItemLongClickListener(new android.widget.AdapterView.OnItemLongClickListener() {

            final CommonListFragmentNew this$0;

            public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
            {
                return CommonListFragmentNew.this.onItemLongClick(adapterview, view, i, l);
            }

            
            {
                this$0 = CommonListFragmentNew.this;
                super();
            }
        });
    }

    protected void initSearchBar()
    {
        com.biznessapps.common.components.SearchTopBar.SearchDataRunnable searchdatarunnable = new com.biznessapps.common.components.SearchTopBar.SearchDataRunnable() {

            final CommonListFragmentNew this$0;

            public void run()
            {
                searchQuery = getSearchQuery();
                loadData();
            }

            
            {
                this$0 = CommonListFragmentNew.this;
                super();
            }
        };
        searchTopBar = new SearchTopBar(getActivity(), root, searchdatarunnable, settings);
        screenListener = searchTopBar.getScreenListener();
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

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        loadData();
        return root;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (listView != null)
        {
            listView.removeListeners();
        }
    }

    protected boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        return false;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        if (adapter != null)
        {
            adapter.notifyDataSetChanged();
        }
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

    protected boolean useSearchBar()
    {
        return false;
    }
}
