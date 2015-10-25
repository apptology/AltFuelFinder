// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.call_us;

import android.app.Activity;
import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.call_us:
//            CallUsEntity

public class CallUsFragment extends CommonListFragment
{
    public static class CallUsAdapter extends AbstractAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            CallUsEntity callusentity;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout.R.id.title_text_view);
                viewgroup.phone = (TextView)view.findViewById(com.biznessapps.layout.R.id.phone_text_view);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            callusentity = (CallUsEntity)getItem(i);
            if (callusentity != null)
            {
                ((ViewHolder) (viewgroup)).title.setText(Html.fromHtml(callusentity.getTitle()));
                ((ViewHolder) (viewgroup)).phone.setText(Html.fromHtml(callusentity.getPhone()));
                if (callusentity.hasColor())
                {
                    view.setBackgroundDrawable(getListItemDrawable(callusentity.getItemColor()));
                    setTextColorToView(callusentity.getItemTextColor(), new TextView[] {
                        ((ViewHolder) (viewgroup)).title, ((ViewHolder) (viewgroup)).phone
                    });
                }
            }
            return view;
        }

        public CallUsAdapter(Context context, List list, UiSettings uisettings)
        {
            super(context, list, com.biznessapps.layout.R.layout.call_us_row, uisettings);
        }
    }

    private static class CallUsAdapter.ViewHolder
    {

        TextView phone;
        TextView title;

        private CallUsAdapter.ViewHolder()
        {
        }

    }


    public CallUsFragment()
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
            list = (CallUsEntity)iterator.next();
            String s = list.getTitle();
            String s1 = list.getPhone();
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

    private void plugListView(Activity activity)
    {
        Object obj = getFilteredData(items);
        if (ApiUtils.hasNotData(((List) (obj))))
        {
            listView.setAdapter(null);
            ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            return;
        }
        LinkedList linkedlist = new LinkedList();
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); linkedlist.add(getWrappedItem((CallUsEntity)((Iterator) (obj)).next(), linkedlist))) { }
        activity = new CallUsAdapter(activity.getApplicationContext(), linkedlist, settings);
        listView.setAdapter(activity);
        listView.setSelection(currentItemIndex);
        initListViewListener();
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("CALL_US_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("callus_list.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (CallUsEntity)adapterview.getAdapter().getItem(i);
        ViewUtils.call(getHoldActivity(), adapterview.getPhone());
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseCallUsItems(s);
        return cacher().saveData((new StringBuilder()).append("CALL_US_LIST_PROPERTY").append(tabId).toString(), items);
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
}
