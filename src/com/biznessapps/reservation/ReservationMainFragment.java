// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.reservation.entities.ReservationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDataKeeper, ReservationAdapter, ReservationUtils

public class ReservationMainFragment extends CommonListFragment
{
    private class LoadBackgroundTask extends AsyncTask
    {

        final ReservationMainFragment this$0;

        protected transient ReservationDataKeeper doInBackground(Void avoid[])
        {
            avoid = DataSource.getInstance().getData(getReservationCenterUrl());
            return JsonParser.parseReservationCenterData(cacher().getReservSystemCacher(parseReservationCenterData), avoid);
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected void onPostExecute(ReservationDataKeeper reservationdatakeeper)
        {
            super.onPostExecute(reservationdatakeeper);
            if (reservationdatakeeper.getNetworkResult().isOk())
            {
                loadImages();
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((ReservationDataKeeper)obj);
        }

        private LoadBackgroundTask()
        {
            this$0 = ReservationMainFragment.this;
            super();
        }

    }


    private static final int PAST_EVENTS_TYPE = 2;
    private static final int UPCOMING_EVENTS_TYPE = 1;
    private ImageView headerImage;
    private ImageView loginButton;
    private Button pastEventsButton;
    private ImageView refreshButton;
    private Button scheduleButton;
    private int searchType;
    private Button upcomingEventsButton;

    public ReservationMainFragment()
    {
        searchType = 1;
    }

    private String getReservationCenterUrl()
    {
        return String.format("reserv_center.php?app_code=%s&tab_id=%s&platform=android", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    private void initListeners()
    {
        scheduleButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationMainFragment this$0;

            public void onClick(View view)
            {
                openScheduleWindow();
            }

            
            {
                this$0 = ReservationMainFragment.this;
                super();
            }
        });
        upcomingEventsButton.setOnClickListener(new android.view.View.OnClickListener() );
        pastEventsButton.setOnClickListener(new android.view.View.OnClickListener() );
        refreshButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationMainFragment this$0;

            public void onClick(View view)
            {
                loadData();
            }

            
            {
                this$0 = ReservationMainFragment.this;
                super();
            }
        });
        loginButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationMainFragment this$0;

            public void onClick(View view)
            {
                if (cacher().getReservSystemCacher(getActivityClass).isLoggedIn())
                {
                    view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationAccountViewController"));
                    String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
                    view.putExtra("TAB_FRAGMENT", "ReservationAccountViewController");
                    view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.account));
                    view.putExtra("TAB_SPECIAL_ID", s);
                    startActivityForResult(view, 0);
                    return;
                } else
                {
                    openLoginWindow();
                    return;
                }
            }

            
            {
                this$0 = ReservationMainFragment.this;
                super();
            }
        });
    }

    private void loadImages()
    {
        ReservationDataKeeper reservationdatakeeper = cacher().getReservSystemCacher(tabId);
        ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        if (StringUtils.isNotEmpty(reservationdatakeeper.getBackgroundUrl()))
        {
            imagefetcher.loadBgImage(reservationdatakeeper.getBackgroundUrl(), root, settings);
        }
        if (StringUtils.isNotEmpty(reservationdatakeeper.getHeaderImage()))
        {
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(headerImage);
            imageloadparams.setUrl(reservationdatakeeper.getHeaderImage());
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(2);
            imagefetcher.loadImage(imageloadparams);
        }
    }

    private void openAppointmentDetail(ReservationEntity reservationentity)
    {
        if (reservationentity != null)
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationApptDetailViewControllerFromMain"));
            String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
            intent.putExtra("TAB_FRAGMENT", "ReservationApptDetailViewControllerFromMain");
            intent.putExtra("TAB_FRAGMENT_DATA", reservationentity);
            intent.putExtra("TAB_SPECIAL_ID", s);
            startActivityForResult(intent, 0);
        }
    }

    private void openLoginWindow()
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationLoginViewController"));
        String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
        intent.putExtra("TAB_FRAGMENT", "ReservationLoginViewController");
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.login));
        intent.putExtra("TAB_SPECIAL_ID", s);
        startActivityForResult(intent, 0);
    }

    private void openScheduleWindow()
    {
        if (!cacher().getReservSystemCacher(tabId).isLoggedIn())
        {
            openLoginWindow();
            return;
        } else
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationBookViewController"));
            String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
            intent.putExtra("TAB_FRAGMENT", "ReservationBookViewController");
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.schedule_appointment_button));
            intent.putExtra("TAB_SPECIAL_ID", s);
            startActivityForResult(intent, 0);
            return;
        }
    }

    private void plugListView(Activity activity)
    {
        if (items != null && !items.isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            Object obj = new LinkedList();
            Iterator iterator;
            boolean flag;
            if (searchType == 1)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            iterator = items.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                ReservationEntity reservationentity = (ReservationEntity)iterator.next();
                long l = reservationentity.getTimeTo().getTime();
                boolean flag1;
                boolean flag2;
                if (reservationentity.getOrderState() == 2)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (System.currentTimeMillis() > l)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (flag)
                {
                    if (!flag2 && !flag1)
                    {
                        ((List) (obj)).add(reservationentity);
                    }
                } else
                if (flag2 || flag1)
                {
                    ((List) (obj)).add(reservationentity);
                }
            } while (true);
            for (obj = ((List) (obj)).iterator(); ((Iterator) (obj)).hasNext(); linkedlist.add(ViewUtils.getWrappedItem((ReservationEntity)((Iterator) (obj)).next(), linkedlist, settings))) { }
            activity = new ReservationAdapter(activity.getApplicationContext(), linkedlist, settings);
            listView.setAdapter(activity);
            initListViewListener();
            return;
        } else
        {
            listView.setAdapter(null);
            return;
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
        return false;
    }

    protected String defineBgUrl(Intent intent)
    {
        return cacher().getReservSystemCacher(tabId).getBackgroundUrl();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_main_layout;
    }

    protected String getRequestUrl()
    {
        return "reserv_order.php";
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(loginButton));
        arraylist.add(new WeakReference(refreshButton));
        return arraylist;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        headerImage = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.header_image);
        upcomingEventsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.upcoming_events_button);
        pastEventsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.past_events_button);
        upcomingEventsButton.setTextColor(settings.getButtonTextColor());
        pastEventsButton.setTextColor(settings.getButtonTextColor());
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.schedule_button_container)).setBackgroundColor(settings.getSectionBarColor());
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container)).setBackgroundColor(settings.getNavigationBarColor());
        scheduleButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.schedule_appointment_button);
        loginButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.login_icon);
        refreshButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.refresh_icon);
        scheduleButton.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), scheduleButton.getBackground());
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), loginButton.getDrawable());
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), refreshButton.getDrawable());
        listView.setBackgroundColor(getResources().getColor(com.biznessapps.layout.R.color.transparent));
        ViewUtils.setRootBgColor(viewgroup, settings);
        initListeners();
        updateButtonState(searchType);
        scheduleButton.setText(com.biznessapps.layout.R.string.schedule_appointment_button);
        upcomingEventsButton.setText(com.biznessapps.layout.R.string.upcoming_events);
        pastEventsButton.setText(com.biznessapps.layout.R.string.past_events);
    }

    protected void loadData()
    {
        updateButtonState(searchType);
        String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
        String s1 = cacher().getReservSystemCacher(s).getSessionToken();
        Map map = AppHttpUtils.getEmptyParams();
        map.put("app_code", cacher().getAppCode());
        map.put("tab_id", s);
        map.put("action", "2");
        map.put("tk", s1);
        loadPostData(map);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        switch (j)
        {
        default:
            return;

        case 8: // '\b'
        case 15: // '\017'
            loadData();
            break;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        (new LoadBackgroundTask()).execute(new Void[0]);
        AppHandlers.getUiHandler();
        return root;
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openAppointmentDetail((ReservationEntity)adapterview.getAdapter().getItem(i));
    }

    public void onResume()
    {
        super.onResume();
        loadData();
    }

    protected boolean tryParseData(String s)
    {
        if (JsonParser.hasDataError(s))
        {
            items = new ArrayList();
            String s1 = cacher().getReservSystemCacher(tabId).getSessionToken();
            if (JsonParser.hasInvalidTokenError(s) && StringUtils.isNotEmpty(s1))
            {
                cacher().getReservSystemCacher(tabId).setLoggedIn(false);
                ReservationUtils.showInvalidTokenDialog(getHoldActivity(), AppHandlers.getUiHandler());
            }
        } else
        {
            items = JsonParser.parseReservationData(s);
        }
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }






/*
    static int access$202(ReservationMainFragment reservationmainfragment, int i)
    {
        reservationmainfragment.searchType = i;
        return i;
    }

*/







}
