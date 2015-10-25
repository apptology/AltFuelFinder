// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.activities;

import android.content.Intent;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentPagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.Display;
import android.view.WindowManager;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.layout.MainController;
import java.util.List;

// Referenced classes of package com.biznessapps.common.activities:
//            CommonFragmentActivity

public abstract class CommonTabFragmentActivity extends CommonFragmentActivity
{
    public class ScreenPagerAdapter extends FragmentPagerAdapter
    {

        private List fragments;
        final CommonTabFragmentActivity this$0;

        public int getCount()
        {
            return fragments.size();
        }

        public Fragment getItem(int i)
        {
            return (Fragment)fragments.get(i);
        }

        public ScreenPagerAdapter(FragmentManager fragmentmanager, List list)
        {
            this$0 = CommonTabFragmentActivity.this;
            super(fragmentmanager);
            fragments = list;
        }
    }


    protected static final int CHANGE_FRAGMENT_EVENT = 2;
    protected static final int CHANGE_TAB_EVENT = 1;
    protected static final int FIRST_INDEX = 0;
    protected static final int FIRST_LOAD_TAB_INDEX = 0;
    protected static final int FRAGMENT_SWITCHING_DELAY_TIME = 5000;
    protected static final int STARTUP_DELAY_TIME = 3000;
    protected static final int TAB_SWITCHING_DELAY_TIME = 100;
    protected List tabFragmentsList;
    protected ViewPager tabViewPager;

    public CommonTabFragmentActivity()
    {
    }

    protected void afterViewsInitialization()
    {
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = new AnalyticEntity();
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        analyticentity.setContext(getApplicationContext());
        analyticentity.setAccountId(appsettings.getGaAccountId());
        analyticentity.setAppId(appsettings.getAppId());
        analyticentity.setTabId(getIntent().getStringExtra("TAB_SPECIAL_ID"));
        return analyticentity;
    }

    protected void initViews()
    {
    }

    protected boolean isLandscapeMode()
    {
        Display display = getWindowManager().getDefaultDisplay();
        return display.getWidth() > display.getHeight();
    }

    protected List loadTabFragments()
    {
        return null;
    }

    protected void onResume()
    {
        super.onResume();
        if (!AppCore.getInstance().getAppSettings().isActive() || getIntent() == null)
        {
            startActivity(new Intent(getApplicationContext(), com/biznessapps/layout/MainController));
            finish();
            return;
        } else
        {
            tabFragmentsList = loadTabFragments();
            initViews();
            afterViewsInitialization();
            return;
        }
    }

    protected void sendChangeTabMessage(int i, Handler handler, int j)
    {
        android.os.Message message = handler.obtainMessage(j);
        handler.removeMessages(j);
        handler.sendMessageDelayed(message, i);
    }
}
