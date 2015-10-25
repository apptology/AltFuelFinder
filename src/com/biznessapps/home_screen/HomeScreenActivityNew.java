// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.os.Bundle;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.navigation.NavigationManager;
import com.biznessapps.common.activities.CommonShareableTabFragmentActivity;
import com.biznessapps.common.entities.AppInfoEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.social.ui.SocialOnBoardingPopupDialog;
import com.biznessapps.home_screen.components.BackgroundComponent;
import com.biznessapps.home_screen.components.ModernAnimationComponent;
import com.biznessapps.player.MusicPlayer;
import com.biznessapps.player.PlayerServiceAccessor;
import java.util.List;

public class HomeScreenActivityNew extends CommonShareableTabFragmentActivity
{

    private ModernAnimationComponent animationComponent;
    private AppSettings appSettings;
    private BackgroundComponent backgroundComponent;
    private int columnCount;
    private boolean hasMoreButtonNavigation;
    private ImageView headerView;
    private int layoutId;
    private LinearLayout menuView;
    private AppInfoEntity newDesignApp;
    private ViewGroup rootView;
    private int rowCount;
    private List tabs;
    private boolean useModernLayout;

    public HomeScreenActivityNew()
    {
    }

    private void defineRowLayout()
    {
        if (hasMoreButtonNavigation)
        {
            rowCount = 1;
            columnCount = appSettings.getCols();
            if (columnCount <= 0 || columnCount > 5)
            {
                columnCount = 5;
            }
            layoutId = com.biznessapps.layout.R.layout.home_screen_layout_1row;
            return;
        }
        rowCount = appSettings.getRows();
        columnCount = appSettings.getCols();
        if (appSettings.getNavigationMenuType() != 3)
        {
            rowCount = 1;
        }
        if (rowCount <= 0 || rowCount > 4)
        {
            rowCount = 1;
        }
        if (columnCount <= 0 || columnCount > 5)
        {
            columnCount = 5;
        }
        if (rowCount == 2)
        {
            layoutId = com.biznessapps.layout.R.layout.home_screen_layout_2row;
            return;
        }
        if (rowCount == 3)
        {
            layoutId = com.biznessapps.layout.R.layout.home_screen_layout_3row;
            return;
        }
        if (rowCount == 4)
        {
            layoutId = com.biznessapps.layout.R.layout.home_screen_layout_4row;
            return;
        } else
        {
            layoutId = com.biznessapps.layout.R.layout.home_screen_layout_1row;
            return;
        }
    }

    private void initComponents()
    {
        String s;
        if (newDesignApp != null)
        {
            s = newDesignApp.getImageUrl();
        } else
        {
            s = null;
        }
        backgroundComponent = new BackgroundComponent(getApplicationContext(), s, settings, appSettings);
        animationComponent = new ModernAnimationComponent(this, appSettings);
    }

    protected int getLayoutId()
    {
        return layoutId;
    }

    protected void initViews()
    {
        super.initViews();
        rootView = (ViewGroup)findViewById(com.biznessapps.layout.R.id.home_screen_container);
        headerView = (ImageView)findViewById(com.biznessapps.layout.R.id.home_screen_header);
        menuView = (LinearLayout)findViewById(com.biznessapps.layout.R.id.left_content);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        bundle = AppCore.getInstance().getAppSettings();
        if (bundle != null && bundle.isSocialOnBoard())
        {
            (new SocialOnBoardingPopupDialog(this, settings)).show();
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        if (MusicPlayer.getInstance().getServiceAccessor() != null)
        {
            MusicPlayer.getInstance().getServiceAccessor().stop();
        }
    }

    protected void onPause()
    {
        super.onPause();
        animationComponent.stopAnimation();
        backgroundComponent.clearBackgrounds(rootView, headerView, menuView);
    }

    protected void onPreInit()
    {
        super.onPreInit();
        newDesignApp = (AppInfoEntity)AppCore.getInstance().getCachingManager().getData("APP_INFO_PROPERTY");
        appSettings = AppCore.getInstance().getAppSettings();
        hasMoreButtonNavigation = appSettings.hasMoreButtonNavigation();
        boolean flag;
        if (appSettings.getHomeLayoutType() != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        useModernLayout = flag;
        tabs = NavigationManager.getTabsItems();
        defineRowLayout();
        initComponents();
    }

    protected void onResume()
    {
        super.onResume();
        animationComponent.startAnimation();
        backgroundComponent.setBackgrounds(rootView, headerView);
    }
}
