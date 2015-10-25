// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.cart.CartTextAnimation;
import com.biznessapps.food_ordering.entities.CategoryEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.parser.FoodOrderingParser;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoriesAdapter

public class CategoriesFragment extends CommonListFragment
{

    private CartTextAnimation cartAnimation;
    private GridView gridView;
    private boolean hasGridViewMode;

    public CategoriesFragment()
    {
    }

    private void clearAdapters()
    {
        listView.setAdapter(null);
        gridView.setAdapter(null);
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
            list = (CategoryEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void openDetail(CategoryEntity categoryentity)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_CATEGORIES_ITEMS"));
        intent.putExtra("TAB_FRAGMENT", "FO_CATEGORIES_ITEMS");
        intent.putExtra("TAB_LABEL", String.format("%s %s", new Object[] {
            getString(com.biznessapps.layout.R.string.fo_items_for), categoryentity.getTitle()
        }));
        intent.putExtra("BG_URL_EXTRA", bgUrl);
        intent.putExtra("ITEM_EXTRA", categoryentity);
        intent.putExtra("TIMESTAMP_EXTRA", getIntent().getLongExtra("TIMESTAMP_EXTRA", 0L));
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivity(intent);
    }

    private void plugListView(Activity activity, List list)
    {
        if (list != null && !list.isEmpty())
        {
            int i;
            if (hasGridViewMode)
            {
                i = com.biznessapps.layout.R.layout.fo_category_item;
            } else
            {
                i = com.biznessapps.layout.R.layout.fo_category_list_item;
            }
            setAdapters(new CategoriesAdapter(activity.getApplicationContext(), ViewUtils.wrapWithItemSettings(list, settings), settings, i));
            initListViewListener();
            return;
        } else
        {
            clearAdapters();
            ViewUtils.showNoDataToast(activity);
            return;
        }
    }

    private void setAdapters(CategoriesAdapter categoriesadapter)
    {
        byte byte0 = 8;
        int i;
        if (hasGridViewMode)
        {
            gridView.setAdapter(categoriesadapter);
        } else
        {
            listView.setAdapter(categoriesadapter);
        }
        categoriesadapter = gridView;
        if (hasGridViewMode)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        categoriesadapter.setVisibility(i);
        categoriesadapter = listView;
        if (hasGridViewMode)
        {
            i = byte0;
        } else
        {
            i = 0;
        }
        categoriesadapter.setVisibility(i);
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_categories_layout;
    }

    protected String getRequestUrl()
    {
        String s = getIntent().getStringExtra("LOCATION_ID");
        long l = getIntent().getLongExtra("TIMESTAMP_EXTRA", 0L);
        return String.format("food_ordering_menus.php?app_code=%s&tab_id=%s&location_id=%s&timestamp=%d", new Object[] {
            cacher().getAppCode(), tabId, s, Long.valueOf(l)
        });
    }

    protected View getViewForBg()
    {
        if (hasGridViewMode)
        {
            return gridView;
        } else
        {
            return listView;
        }
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        hasGridViewMode = FoodOrderingManager.getInstance().getCommonInfo().isGridViewMode();
    }

    protected void initViews(final ViewGroup searchEditText)
    {
        super.initViews(searchEditText);
        gridView = (GridView)searchEditText.findViewById(com.biznessapps.layout.R.id.grid_view);
        gridView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CategoriesFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = (CategoryEntity)adapterview.getAdapter().getItem(i);
                openDetail(adapterview);
            }

            
            {
                this$0 = CategoriesFragment.this;
                super();
            }
        });
        cartAnimation = FOUtils.initCartViews(getHoldActivity(), searchEditText);
        ImageView imageview = (ImageView)searchEditText.findViewById(com.biznessapps.layout.R.id.search_icon_close);
        searchEditText = (EditText)searchEditText.findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        searchEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final CategoriesFragment this$0;
            final EditText val$searchEditText;

            public void run()
            {
                
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = CategoriesFragment.this;
                searchEditText = edittext;
                super();
            }
        }));
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final CategoriesFragment this$0;
            final EditText val$searchEditText;

            public void onClick(View view)
            {
                searchEditText.setText("");
                null.setText = view;
                ViewUtils.closeKeyboard(getApplicationContext(), searchEditText);
                plugListView(getHoldActivity(), getFilteredData(
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = CategoriesFragment.this;
                searchEditText = edittext;
                super();
            }
        });
        ViewUtils.updateSearchBarWithColor(settings.getNavigationTextColor(), imageview, searchEditText);
    }

    protected void loadBgUrl()
    {
        bgUrl = FoodOrderingManager.getInstance().getCommonInfo().getBackground();
        loadBgUrl();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        loadBgUrl();
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openDetail((CategoryEntity)adapterview.getAdapter().getItem(i));
    }

    public void onPause()
    {
        cartAnimation.stopAnim();
        onPause();
    }

    public void onResume()
    {
        onResume();
        cartAnimation.startAnim();
    }

    protected boolean tryParseData(String s)
    {
        items = FoodOrderingParser.parseCategories(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        View view = root.findViewById(com.biznessapps.layout.R.id.search_bar_container);
        view.setVisibility(0);
        view.setBackgroundColor(settings.getNavigationBarColor());
        plugListView(activity, items);
    }



/*
    static String access$102(CategoriesFragment categoriesfragment, String s)
    {
        categoriesfragment.searchQuery = s;
        return s;
    }

*/





/*
    static String access$502(CategoriesFragment categoriesfragment, String s)
    {
        categoriesfragment.searchQuery = s;
        return s;
    }

*/

}
