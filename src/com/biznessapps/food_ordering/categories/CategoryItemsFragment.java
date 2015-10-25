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
import android.view.ViewTreeObserver;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.food_ordering.FOUtils;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.cart.CartTextAnimation;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.CategoryEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            CategoryItemAdapter

public class CategoryItemsFragment extends CommonListFragment
{

    private CartTextAnimation cartAnimation;
    private CategoryEntity category;

    public CategoryItemsFragment()
    {
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
            list = (com.biznessapps.food_ordering.entities.CategoryEntity.Item)iterator.next();
            String s = list.getTitle();
            String s1 = list.getDescription();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            } else
            if (StringUtils.isNotEmpty(s1) && s1.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void openDetail(com.biznessapps.food_ordering.entities.CategoryEntity.Item item)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FO_CATEGORIES_ITEM_DETAIL"));
        intent.putExtra("TAB_FRAGMENT", "FO_CATEGORIES_ITEM_DETAIL");
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.fo_details));
        intent.putExtra("TIMESTAMP_EXTRA", getIntent().getLongExtra("TIMESTAMP_EXTRA", 0L));
        intent.putExtra("ITEM_EXTRA", item);
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        startActivityForResult(intent, 1);
    }

    private void plugListView(Activity activity, List list)
    {
        if (list != null && !list.isEmpty())
        {
            activity = new CategoryItemAdapter(activity.getApplicationContext(), ViewUtils.wrapWithItemSettings(list, settings), settings);
            listView.setAdapter(activity);
            initListViewListener();
            return;
        } else
        {
            handleNoDataEvent(activity);
            return;
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.fo_categories_items_layout;
    }

    protected void initSettingsData()
    {
        super.initSettingsData();
        category = (CategoryEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
        FoodOrderingManager.getInstance().getCart().setCategoryId(category.getId());
        items = category.getItems();
    }

    protected void initViews(final ViewGroup searchEditText)
    {
        super.initViews(searchEditText);
        cartAnimation = FOUtils.initCartViews(getHoldActivity(), searchEditText);
        ImageView imageview = (ImageView)searchEditText.findViewById(com.biznessapps.layout.R.id.search_icon_close);
        searchEditText = (EditText)searchEditText.findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        searchEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final CategoryItemsFragment this$0;
            final EditText val$searchEditText;

            public void run()
            {
                searchEditText.getText().toString().getText = <returnValue>;
                ViewUtils.closeKeyboard(getApplicationContext(), searchEditText);
                plugListView(getHoldActivity(), getFilteredData(
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = CategoryItemsFragment.this;
                searchEditText = edittext;
                super();
            }
        }));
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final CategoryItemsFragment this$0;
            final EditText val$searchEditText;

            public void onClick(View view)
            {
                searchEditText.setText("");
                
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = CategoryItemsFragment.this;
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

    protected void loadData()
    {
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        onActivityResult(i, j, intent);
        switch (j)
        {
        default:
            return;

        case 1: // '\001'
            getHoldActivity().finish();
            break;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        onCreateView(layoutinflater, viewgroup, bundle);
        updateControlsWithData(getHoldActivity());
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openDetail((com.biznessapps.food_ordering.entities.CategoryEntity.Item)adapterview.getAdapter().getItem(i));
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
        final ViewGroup cartContainer = cartAnimation.getCartContainer();
        cartContainer.measure(0x40000000, 0x40000000);
        cartContainer.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final CategoryItemsFragment this$0;
            final ViewGroup val$cartContainer;

            public void onGlobalLayout()
            {
                cartContainer.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                int i = cartContainer.getMeasuredWidth();
                
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = CategoryItemsFragment.this;
                cartContainer = viewgroup;
                super();
            }
        });
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        activity = root.findViewById(com.biznessapps.layout.R.id.search_bar_container);
        activity.setVisibility(0);
        activity.setBackgroundColor(settings.getNavigationBarColor());
        plugListView(getHoldActivity(), items);
    }



/*
    static String access$102(CategoryItemsFragment categoryitemsfragment, String s)
    {
        categoryitemsfragment.searchQuery = s;
        return s;
    }

*/





/*
    static String access$502(CategoryItemsFragment categoryitemsfragment, String s)
    {
        categoryitemsfragment.searchQuery = s;
        return s;
    }

*/

}
