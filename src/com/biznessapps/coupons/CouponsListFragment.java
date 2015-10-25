// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.coupons:
//            CouponEntity, CouponAdapter

public abstract class CouponsListFragment extends CommonListFragment
{

    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    private CouponEntity preLoadedItem;
    private boolean updateNextTime;

    public CouponsListFragment()
    {
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final CouponsListFragment this$0;

            public boolean onBackPressed()
            {
                if (preLoadedItem != null)
                {
                    preLoadedItem.setUseAgain(true);
                }
                return false;
            }

            
            {
                this$0 = CouponsListFragment.this;
                super();
            }
        };
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
            list = (CouponEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    public static String getNextCheckinTime(CouponEntity couponentity, Context context)
    {
        int i;
label0:
        {
            Object obj = null;
            long l = System.currentTimeMillis();
            long l1 = couponentity.getLastCheckinTime();
            l = (long)(couponentity.getCheckinInterval() * 0x36ee80) - (l - l1);
            String s = obj;
            if (l > 0L)
            {
                s = obj;
                if (couponentity.getCheckinTargetMax() > 1)
                {
                    i = (int)(l / 60000L);
                    if (i <= 60)
                    {
                        break label0;
                    }
                    s = String.format("%d %s %d %s", new Object[] {
                        Integer.valueOf(i / 60), context.getString(com.biznessapps.layout.R.string.checkin_hours_left), Integer.valueOf(i % 60), context.getString(com.biznessapps.layout.R.string.checkin_mins_left)
                    });
                }
            }
            return s;
        }
        return String.format("%d %s", new Object[] {
            Integer.valueOf(i), context.getString(com.biznessapps.layout.R.string.checkin_mins_left)
        });
    }

    private boolean isCorrectItem(CouponEntity couponentity)
    {
        return couponentity != null && StringUtils.isNotEmpty(couponentity.getId());
    }

    protected List doCouponsPrehandling(List list)
    {
        ArrayList arraylist;
label0:
        {
            arraylist = new ArrayList();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                CouponEntity couponentity1 = (CouponEntity)iterator.next();
                Date date = new Date(System.currentTimeMillis());
                if ((couponentity1.getStartDate() == null || !couponentity1.getStartDate().after(date)) && (couponentity1.getEndDate() == null || !couponentity1.getEndDate().before(date)))
                {
                    arraylist.add(couponentity1);
                }
            } while (true);
            if (list != null && !list.isEmpty())
            {
                list = ((CouponEntity)list.get(0)).getBackground();
                if (!arraylist.isEmpty())
                {
                    break label0;
                }
                CouponEntity couponentity = new CouponEntity();
                couponentity.setBackground(list);
                arraylist.add(couponentity);
            }
            return arraylist;
        }
        ((CouponEntity)arraylist.get(0)).setBackground(list);
        return arraylist;
    }

    protected int getCouponItemLayoutId()
    {
        return com.biznessapps.layout.R.layout.qr_coupon_row;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.search_list_layout;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        startCouponDetailActivity((CouponEntity)adapterview.getAdapter().getItem(i));
    }

    public void onResume()
    {
        super.onResume();
        if (updateNextTime)
        {
            loadData();
        }
        updateNextTime = true;
        getHoldActivity().addBackPressedListener(onBackPressedListener);
    }

    public void onStop()
    {
        getHoldActivity().addBackPressedListener(onBackPressedListener);
        super.onStop();
    }

    protected void plugListView(Activity activity, boolean flag)
    {
        Object obj = getFilteredData(items);
        if (ApiUtils.hasNotData(((List) (obj))))
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            listView.setAdapter(null);
            return;
        }
        if (((List) (obj)).size() == 1 && isCorrectItem((CouponEntity)((List) (obj)).get(0)))
        {
            activity = (CouponEntity)((List) (obj)).get(0);
            CouponEntity couponentity = StorageKeeper.instance().getCouponData(activity.getId());
            if (couponentity != null)
            {
                couponentity.copyTo(activity);
            }
            startCouponDetailActivity(activity);
            getHoldActivity().finish();
            return;
        }
        LinkedList linkedlist = new LinkedList();
        CouponEntity couponentity1;
        for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); linkedlist.add(getWrappedItem(couponentity1, linkedlist)))
        {
            couponentity1 = (CouponEntity)((Iterator) (obj)).next();
            if (couponentity1.getId().equalsIgnoreCase(itemId) && preLoadedItem == null)
            {
                preLoadedItem = couponentity1;
            }
            if (!flag)
            {
                continue;
            }
            CouponEntity couponentity2 = StorageKeeper.instance().getCouponData(couponentity1.getId());
            if (couponentity2 != null)
            {
                couponentity2.copyTo(couponentity1);
            }
        }

        activity = new CouponAdapter(activity, getFilteredData(linkedlist), getCouponItemLayoutId(), settings);
        listView.setAdapter(activity);
        initListViewListener();
    }

    protected abstract void startCouponDetailActivity(CouponEntity couponentity);

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity, true);
        if (preLoadedItem != null && preLoadedItem.isUseAgain())
        {
            preLoadedItem.setUseAgain(false);
            startCouponDetailActivity(preLoadedItem);
        }
    }

    protected boolean useSearchBar()
    {
        return true;
    }

}
