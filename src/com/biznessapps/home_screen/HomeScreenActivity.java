// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.ViewPager;
import android.text.Editable;
import android.text.Html;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.api.navigation.NavigationManager;
import com.biznessapps.common.activities.CommonShareableTabFragmentActivity;
import com.biznessapps.common.entities.AppInfoEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CustomizableViewPager;
import com.biznessapps.common.social.ui.SocialOnBoardingPopupDialog;
import com.biznessapps.home_screen.components.ModernAnimationComponent;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.loyalty.LoyaltyHandler;
import com.biznessapps.news.NewsSettings;
import com.biznessapps.news.SearchEntity;
import com.biznessapps.player.MusicPlayer;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.List;
import net.simonvt.menudrawer.MenuDrawer;

// Referenced classes of package com.biznessapps.home_screen:
//            HomeScreenHelper, HomeAnimation, HomePartFragment

public class HomeScreenActivity extends CommonShareableTabFragmentActivity
{
    private class SearchAsyncTask extends AsyncTask
    {

        final HomeScreenActivity this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient List doInBackground(String as[])
        {
            ArrayList arraylist;
label0:
            {
                arraylist = new ArrayList();
                String s = appSettings.getNewsTabId();
                NewsSettings newssettings = (NewsSettings)cacher().getData((new StringBuilder()).append("NewsViewController").append(s).toString());
                if (newssettings != null && newssettings.getTwitterSearchList() != null)
                {
                    as = newssettings;
                    if (newssettings.getGoogleSearchList() != null)
                    {
                        break label0;
                    }
                }
                as = String.format("news.php?app_code=%s&tab_id=%s", new Object[] {
                    cacher().getAppCode(), s
                });
                as = JsonParser.getNewsSettings(DataSource.getInstance().getData(as));
                cacher().saveData((new StringBuilder()).append("NewsViewController").append(s).toString(), as);
            }
            if (as != null)
            {
                if (as.getGoogleSearchList() != null)
                {
                    arraylist.addAll(as.getGoogleSearchList());
                }
                if (as.getTwitterSearchList() != null)
                {
                    arraylist.addAll(as.getTwitterSearchList());
                }
            }
            return arraylist;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((List)obj);
        }

        protected void onPostExecute(List list)
        {
            super.onPostExecute(list);
            if (list != null && !list.isEmpty())
            {
                ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.news_feed_container);
                ImageView imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.news_feed_icon);
                imageview.setOnClickListener(getShortIconListener("NewsViewController"));
                viewgroup.setOnClickListener(getShortIconListener("NewsViewController"));
                TextView textview = (TextView)findViewById(com.biznessapps.layout.R.id.news_feed_view);
                int i = 
// JavaClassFileOutputException: get_constant: invalid tag

        private SearchAsyncTask()
        {
            this$0 = HomeScreenActivity.this;
            super();
        }

    }

    private class SetHomeBgAsyncTask extends AsyncTask
    {

        final HomeScreenActivity this$0;

        protected transient Bitmap doInBackground(String as[])
        {
            as = null;
            if (StringUtils.isNotEmpty(homeBgUrl))
            {
                ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
                Bitmap bitmap = imagefetcher.getImageFromCache(homeBgUrl);
                as = bitmap;
                if (bitmap == null)
                {
                    as = BitmapDownloader.downloadBitmap(homeBgUrl);
                    imagefetcher.getCache().addBitmapToCache(homeBgUrl, as);
                }
                as = BlurEffectUtils.addBlurEffect(as, 85);
            }
            return as;
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Bitmap bitmap)
        {
            if (HomeScreenActivity.this != null)
            {
                FrameLayout framelayout = (FrameLayout)findViewById(com.biznessapps.layout.R.id.home_menu_root);
                if (bitmap != null)
                {
                    Drawable adrawable[] = new Drawable[2];
                    adrawable[0] = new BitmapDrawable(bitmap);
                    adrawable[1] = new ColorDrawable(-1);
                    adrawable[1].setAlpha(ViewUtils.getOpacity(30F));
                    framelayout.setBackgroundDrawable((new LayerDrawable(adrawable)).getCurrent());
                }
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }

        private SetHomeBgAsyncTask()
        {
            this$0 = HomeScreenActivity.this;
            super();
        }

    }


    public static final String INTENT_PARAM_KEY_POST_DEVTOKEN_RESPONSE = "post_dev_token_response";
    private static final int NEWS_FEED_EVENT = 1;
    private static final int NEWS_FEED_EVENT_DELAY = 4000;
    private static final int NEWS_FEED_SCROLL = 2;
    private static final int NEWS_FEED_SCROLL_DELAY = 2000;
    private AppSettings appSettings;
    private int columnCount;
    private int currentTabIndex;
    private boolean exitToReseller;
    private boolean hasMoreButtonNavigation;
    private ImageView headerView;
    private HomeAnimation homeAnimationComponent;
    private String homeBgUrl;
    private int layoutId;
    private com.biznessapps.localization.StringsSource.LocalizationListener localizationListener;
    private MenuDrawer menuDrawer;
    private ModernAnimationComponent modernAnimationComponent;
    private AppInfoEntity newDesignApp;
    private Handler newsFeedHandler;
    private int newsItemIndex;
    private ViewGroup rootView;
    private int rowCount;
    private String searchText;
    private ViewGroup tabCircles;
    private Handler tabEventHandler;
    private List tabs;
    private boolean useModernLayout;
    private boolean useNewHomeTabMode;

    public HomeScreenActivity()
    {
        newsItemIndex = 0;
        localizationListener = new com.biznessapps.localization.StringsSource.LocalizationListener() ;
    }

    private void addRow(ViewGroup viewgroup, List list, boolean flag)
    {
        NavigationManager navigationmanager = new NavigationManager(this, 2);
        if (flag)
        {
            navigationmanager.setSideTabLimit();
        } else
        {
            navigationmanager.setUseUnlimitTabCount(true);
        }
        navigationmanager.setRowTabsItems(list);
        navigationmanager.addLayoutTo(viewgroup);
        navigationmanager.setTabsLimit(columnCount);
        navigationmanager.updateTabs();
        navigationmanager.resetTabsSelection();
    }

    private void defineNavigation()
    {
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.horisontal_tab_container);
        if (appSettings.getNavigationMenuType() == 1)
        {
            android.widget.FrameLayout.LayoutParams layoutparams = new LayoutParams(-1, -2);
            layoutparams.setMargins(0, 0, 0, 0);
            layoutparams.gravity = 48;
            viewgroup.setLayoutParams(layoutparams);
            viewgroup.setVisibility(0);
        } else
        {
            if (appSettings.getNavigationMenuType() == 0)
            {
                ViewGroup viewgroup1 = (ViewGroup)findViewById(com.biznessapps.layout.R.id.myGrid);
                viewgroup1.setVisibility(0);
                addRow(viewgroup1, tabs, hasMoreButtonNavigation);
                viewgroup.setVisibility(8);
                return;
            }
            if (appSettings.getNavigationMenuType() == 2)
            {
                ViewGroup viewgroup2 = (ViewGroup)findViewById(com.biznessapps.layout.R.id.myGrid2);
                viewgroup2.setVisibility(0);
                addRow(viewgroup2, tabs, hasMoreButtonNavigation);
                viewgroup.setVisibility(8);
                return;
            }
        }
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

    private void defineShortLinks()
    {
        ImageView imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.message_link_icon);
        ImageView imageview1 = (ImageView)findViewById(com.biznessapps.layout.R.id.music_link_icon);
        Object obj;
        android.widget.FrameLayout.LayoutParams layoutparams;
        android.widget.FrameLayout.LayoutParams layoutparams1;
        int i;
        int j;
        int k;
        int l;
        byte byte0;
        byte byte1;
        if (appSettings.isMessageIconUsed())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
        if (appSettings.isMusicIconUsed())
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview1.setVisibility(i);
        layoutparams = (android.widget.FrameLayout.LayoutParams)imageview.getLayoutParams();
        layoutparams1 = (android.widget.FrameLayout.LayoutParams)imageview1.getLayoutParams();
        if (appSettings.isMessageIconLeft())
        {
            i = 3;
        } else
        {
            i = 5;
        }
        if (appSettings.isMusicIconLeft())
        {
            l = 3;
        } else
        {
            l = 5;
        }
        if (appSettings.isMessageIconTop())
        {
            byte0 = 48;
        } else
        {
            byte0 = 80;
        }
        if (appSettings.isMusicIconTop())
        {
            byte1 = 48;
        } else
        {
            byte1 = 80;
        }
        obj = (ImageView)findViewById(com.biznessapps.layout.R.id.home_layout_icon);
        if (useNewHomeTabMode)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        ((ImageView) (obj)).setVisibility(j);
        j = i;
        k = l;
        if (!useNewHomeTabMode)
        {
            if (appSettings.getNavigationMenuType() == 0)
            {
                j = 5;
                k = 5;
            } else
            {
                j = i;
                k = l;
                if (appSettings.getNavigationMenuType() == 2)
                {
                    j = 3;
                    k = 3;
                }
            }
        }
        layoutparams.gravity = j | byte0;
        layoutparams1.gravity = k | byte1;
        i = getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.thumbnail_size_small);
        if (byte0 == byte1)
        {
            if (j == 3 && j == k)
            {
                if (useNewHomeTabMode)
                {
                    l = i;
                } else
                {
                    l = 0;
                }
                layoutparams.leftMargin = l;
                if (useNewHomeTabMode)
                {
                    l = i * 2;
                } else
                {
                    l = i;
                }
                layoutparams1.leftMargin = l;
            } else
            if (j == 3 && useNewHomeTabMode)
            {
                layoutparams.leftMargin = i;
            } else
            if (k == 3 && useNewHomeTabMode)
            {
                layoutparams1.leftMargin = i;
            }
            if (j == 5 && j == k)
            {
                layoutparams1.rightMargin = i;
            }
            if (imageview.getVisibility() == 8)
            {
                if (!useNewHomeTabMode)
                {
                    i = 0;
                }
                layoutparams1.leftMargin = i;
                layoutparams1.rightMargin = 0;
            }
        }
        imageview.setLayoutParams(layoutparams);
        imageview1.setLayoutParams(layoutparams1);
        imageview.setOnClickListener(getShortIconListener("messagesviewcontroller"));
        imageview1.setOnClickListener(getShortIconListener("MusicViewController"));
        if (appSettings.isMusicIconUsed())
        {
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview1.getDrawable());
            ViewUtils.setOpacity(imageview1.getDrawable(), appSettings.getMusicIconOpacity());
        }
        if (appSettings.isMessageIconUsed())
        {
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview.getDrawable());
            ViewUtils.setOpacity(imageview.getDrawable(), appSettings.getMessageIconOpacity());
        }
        if (useNewHomeTabMode)
        {
            ViewUtils.setRootBgColor((LinearLayout)findViewById(com.biznessapps.layout.R.id.left_content), settings);
            imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.search_icon_close);
            imageview.setVisibility(4);
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview.getDrawable());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ImageView) (obj)).getDrawable());
            (new SetHomeBgAsyncTask()).execute(new String[0]);
            ((ImageView) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

                final HomeScreenActivity this$0;

                public void onClick(View view)
                {
                    menuDrawer.toggleMenu();
                }

            
            {
                this$0 = HomeScreenActivity.this;
                super();
            }
            });
        }
        obj = new Runnable() {

            final HomeScreenActivity this$0;

            public void run()
            {
                Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("GLOBAL_SEARCH_VIEW_CONTROLLER"));
                intent.putExtra("TAB_FRAGMENT", "GLOBAL_SEARCH_VIEW_CONTROLLER");
                startActivity(intent);
            }

            
            {
                this$0 = HomeScreenActivity.this;
                super();
            }
        };
        ViewUtils.addUpDownGestureListener(rootView, ((Runnable) (obj)), getApplicationContext());
        loadNewsIfUsed();
    }

    private android.view.View.OnClickListener getShortIconListener(final String viewControoler)
    {
        return new android.view.View.OnClickListener() {

            final HomeScreenActivity this$0;
            final String val$viewControoler;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass(viewControoler));
                SharedPreferences sharedpreferences = getSharedPreferences("ba.application.settings", 0);
                view.putExtra("TAB_LABEL", sharedpreferences.getString((new StringBuilder()).append("TAB_LABEL").append(viewControoler).toString(), ""));
                view.putExtra("TAB_SPECIAL_ID", sharedpreferences.getString((new StringBuilder()).append("TAB_SPECIAL_ID").append(viewControoler).toString(), ""));
                if ("messagesviewcontroller".equalsIgnoreCase(viewControoler))
                {
                    view.putExtra("TAB_SPECIAL_ID", appSettings.getMessateLinkedTab());
                }
                view.putExtra("TAB_FRAGMENT", viewControoler);
                startActivity(view);
            }

            
            {
                this$0 = HomeScreenActivity.this;
                viewControoler = s;
                super();
            }
        };
    }

    private void initHomeMenu()
    {
        final boolean isListLayout = true;
        menuDrawer = MenuDrawer.attach(this, 0);
        menuDrawer.setContentView(layoutId);
        menuDrawer.setDropShadowEnabled(false);
        menuDrawer.closeMenu(true);
        final ViewGroup menuDrawerView = (ViewGroup)View.inflate(this, com.biznessapps.layout.R.layout.home_menu_layout, null);
        menuDrawer.setMenuView(menuDrawerView);
        float f;
        final EditText searchEditText;
        ImageView imageview;
        final int menuSize;
        if (appSettings.getHomeLayoutType() != 1)
        {
            isListLayout = false;
        }
        if (isListLayout)
        {
            f = 0.8F;
        } else
        {
            f = 0.7F;
        }
        menuSize = (int)((float)AppCore.getInstance().getDeviceWidth() * f);
        menuDrawer.setMenuSize(menuSize);
        ViewUtils.setRootBgColor((FrameLayout)findViewById(com.biznessapps.layout.R.id.home_menu_root), settings);
        HomeScreenHelper.setTabsToSlider(this, (ViewGroup)menuDrawerView, tabs, menuSize, isListLayout, settings, searchText);
        searchEditText = (EditText)findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        searchEditText.addTextChangedListener(new TextWatcher() );
        searchEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final HomeScreenActivity this$0;
            final EditText val$searchEditText;

            public void run()
            {
                ViewUtils.closeKeyboard(getApplicationContext(), searchEditText);
            }

            
            {
                this$0 = HomeScreenActivity.this;
                searchEditText = edittext;
                super();
            }
        }));
        menuDrawer.setOnDrawerStateChangeListener(new net.simonvt.menudrawer.MenuDrawer.OnDrawerStateChangeListener() {

            final HomeScreenActivity this$0;
            final EditText val$searchEditText;

            public void onDrawerStateChange(int i, int j)
            {
                if (j == 0)
                {
                    ViewUtils.closeKeyboard(getApplicationContext(), searchEditText);
                }
            }

            
            {
                this$0 = HomeScreenActivity.this;
                searchEditText = edittext;
                super();
            }
        });
        imageview = (ImageView)findViewById(com.biznessapps.layout.R.id.clear_search_icon);
        imageview.setOnClickListener(new android.view.View.OnClickListener() );
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), imageview.getDrawable());
    }

    private void initTabStartupAnimation()
    {
        currentTabIndex = tabFragmentsList.size() - 1;
        tabViewPager.setCurrentItem(currentTabIndex);
        tabEventHandler = new Handler(getMainLooper()) ;
        sendChangeTabMessage(3000, tabEventHandler, 1);
    }

    private void loadNewsIfUsed()
    {
        if (appSettings.showNewsFeed())
        {
            (new SearchAsyncTask()).execute(new String[0]);
        }
    }

    private void sendMessageToHandler(int i, int j)
    {
        Message message = newsFeedHandler.obtainMessage(i);
        newsFeedHandler.removeMessages(i);
        newsFeedHandler.sendMessageDelayed(message, j);
    }

    private void setHeaderBackground()
    {
        float f;
        ImageFetcher imagefetcher;
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams;
        f = 1.0F;
        String s = appSettings.getHeaderSrc();
        if (!StringUtils.isNotEmpty(s))
        {
            break MISSING_BLOCK_LABEL_328;
        }
        com.biznessapps.utils.google.caching.ImageWorker.TintContainer tintcontainer = new TintContainer();
        tintcontainer.setTintColor(ViewUtils.getColor(appSettings.getHeaderTint()));
        tintcontainer.setTintOpacity(appSettings.getHeaderTintOpacity());
        imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        imageloadparams = new ImageLoadParams();
        imageloadparams.setView(headerView);
        imageloadparams.setTint(tintcontainer);
        imageloadparams.setUrl(s);
        imageloadparams.setImageType(3);
        if (!appSettings.isNormalHeader()) goto _L2; else goto _L1
_L1:
        int i = getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.footer_bar_height);
        android.view.ViewGroup.LayoutParams layoutparams = headerView.getLayoutParams();
        layoutparams.height = i;
        layoutparams.width = -1;
        headerView.setLayoutParams(layoutparams);
        headerView.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        imageloadparams.setImageSrc(true);
_L4:
        imagefetcher.loadImage(imageloadparams);
        return;
_L2:
        android.widget.FrameLayout.LayoutParams layoutparams1;
        int j;
        float f1 = appSettings.getHeaderHeight();
        float f2 = appSettings.getHeaderWidth();
        j = AppCore.getInstance().getDeviceWidth();
        if (f2 / 318F <= 1.0F)
        {
            f = f2 / 318F;
        }
        j = (int)((float)j * f);
        int k = (int)(((float)j / f2) * f1);
        layoutparams1 = (android.widget.FrameLayout.LayoutParams)headerView.getLayoutParams();
        layoutparams1.height = k;
        layoutparams1.width = j;
        j = 1;
        if (!"left".equalsIgnoreCase(appSettings.getHeaderAlignment()))
        {
            break; /* Loop/switch isn't completed */
        }
        j = 3;
_L6:
        layoutparams1.gravity = j;
        headerView.setLayoutParams(layoutparams1);
        if (true) goto _L4; else goto _L3
_L3:
        if (!"right".equalsIgnoreCase(appSettings.getHeaderAlignment())) goto _L6; else goto _L5
_L5:
        j = 5;
          goto _L6
        headerView.setVisibility(8);
        return;
    }

    private void setRootBackground()
    {
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.home_screen_root);
        UiSettings uisettings = new UiSettings();
        uisettings.setUseBlurEffect(appSettings.useBlurEffectForHome());
        ViewUtils.setRootBgColor(viewgroup, uisettings);
        if (newDesignApp != null && newDesignApp.getImageUrl() != null)
        {
            ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            homeBgUrl = NewImageManager.addWidthParam(newDesignApp.getImageUrl(), AppCore.getInstance().getDeviceWidth());
            imagefetcher.loadBgImage(homeBgUrl, rootView, uisettings);
        }
    }

    private void startAnimationIfNeeded()
    {
        List list;
label0:
        {
            if (newDesignApp != null)
            {
                list = newDesignApp.getImagesInOrder();
                if (newDesignApp.hasManyImages() && list != null && !list.isEmpty())
                {
                    if (!appSettings.isModernSlidingUsed() || appSettings.getAnimationMode() == 0)
                    {
                        break label0;
                    }
                    modernAnimationComponent = new ModernAnimationComponent(this, appSettings);
                    modernAnimationComponent.init(appSettings.getAnimationMode(), newDesignApp.getImagesInOrder(), findViewById(com.biznessapps.layout.R.id.home_screen_container));
                    modernAnimationComponent.startAnimation();
                }
            }
            return;
        }
        homeAnimationComponent = new HomeAnimation(this, (CustomizableViewPager)findViewById(com.biznessapps.layout.R.id.viewpager), list);
    }

    protected int getLayoutId()
    {
        if (useNewHomeTabMode)
        {
            return 0;
        } else
        {
            return layoutId;
        }
    }

    protected void initViews()
    {
        initViews();
        rootView = (ViewGroup)findViewById(com.biznessapps.layout.R.id.home_screen_container);
        headerView = (ImageView)findViewById(com.biznessapps.layout.R.id.home_screen_header);
        tabViewPager = (CustomizableViewPager)findViewById(com.biznessapps.layout.R.id.tab_viewpager);
        tabViewPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final HomeScreenActivity this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                if (tabCircles != null)
                {
                    int k = tabCircles.getChildCount();
                    int j = 0;
                    while (j < k) 
                    {
                        ImageView imageview = (ImageView)tabCircles.getChildAt(j);
                        if (j == i)
                        {
                            imageview.setImageResource(com.biznessapps.layout.R.drawable.selected_circle);
                        } else
                        {
                            imageview.setImageResource(com.biznessapps.layout.R.drawable.unselected_circle);
                        }
                        j++;
                    }
                }
            }

            
            {
                this$0 = HomeScreenActivity.this;
                super();
            }
        });
        if (tabFragmentsList == null)
        {
            tabViewPager.setVisibility(8);
        } else
        {
            com.biznessapps.common.activities.CommonTabFragmentActivity.ScreenPagerAdapter screenpageradapter = new ScreenPagerAdapter(this, getSupportFragmentManager(), tabFragmentsList);
            tabViewPager.setAdapter(screenpageradapter);
            tabViewPager.setVisibility(0);
            initTabStartupAnimation();
        }
        setRootBackground();
        setHeaderBackground();
        if (!useModernLayout)
        {
            defineNavigation();
        }
        defineShortLinks();
        HomeScreenHelper.initOptionsViews(this, rootView, settings);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
    }

    protected List loadTabFragments()
    {
        ArrayList arraylist = new ArrayList();
        if (!useModernLayout)
        {
            if (hasMoreButtonNavigation)
            {
                HomePartFragment homepartfragment = new HomePartFragment();
                homepartfragment.setTabs(tabs);
                homepartfragment.setRowCount(rowCount);
                homepartfragment.setColumnCount(columnCount);
                homepartfragment.setHasMoreButtonNavigation(hasMoreButtonNavigation);
                homepartfragment.setRetainInstance(true);
                arraylist.add(homepartfragment);
            } else
            {
                int i = 0;
                for (int j = tabs.size(); j > 0; j -= rowCount * columnCount)
                {
                    i++;
                }

                if (i > 0)
                {
                    tabCircles = (ViewGroup)findViewById(com.biznessapps.layout.R.id.tabs_navigation_container);
                    tabCircles.setVisibility(0);
                    tabCircles.removeAllViews();
                }
                int k = 0;
                while (k < i) 
                {
                    Object obj = new HomePartFragment();
                    int i1 = (k + 1) * (rowCount * columnCount);
                    int l = i1;
                    if (i1 > tabs.size())
                    {
                        l = tabs.size();
                    }
                    ((HomePartFragment) (obj)).setTabs(new ArrayList(tabs.subList(rowCount * columnCount * k, l)));
                    ((HomePartFragment) (obj)).setRowCount(rowCount);
                    ((HomePartFragment) (obj)).setColumnCount(columnCount);
                    ((HomePartFragment) (obj)).setRetainInstance(true);
                    arraylist.add(obj);
                    obj = (ImageView)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.circle_image);
                    ((ImageView) (obj)).setPadding(4, 0, 4, 0);
                    if (k == 0)
                    {
                        ((ImageView) (obj)).setImageResource(com.biznessapps.layout.R.drawable.selected_circle);
                    } else
                    {
                        ((ImageView) (obj)).setImageResource(com.biznessapps.layout.R.drawable.unselected_circle);
                    }
                    tabCircles.addView(((View) (obj)));
                    k++;
                }
            }
        }
        return arraylist;
    }

    public void onBackPressed()
    {
        if (AppCore.getInstance().useStreamMode())
        {
            return;
        }
        if (exitToReseller)
        {
            ViewUtils.showDialog(this, getString(com.biznessapps.layout.R.string.reseller_return_message), new Runnable() {

                final HomeScreenActivity this$0;

                public void run()
                {
                    exitToReseller = false;
                    onBackPressed();
                }

            
            {
                this$0 = HomeScreenActivity.this;
                super();
            }
            });
            return;
        }
        if (MusicPlayer.getInstance().getServiceAccessor() != null)
        {
            MusicPlayer.getInstance().getServiceAccessor().clear();
        }
        UrlWrapper.getInstance().clearState();
        onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        getWindow().setSoftInputMode(35);
        exitToReseller = getIntent().getBooleanExtra("IS_FROM_RESELLER", false);
        bundle = getIntent().getStringExtra("post_dev_token_response");
        boolean flag = AppCore.getInstance().useStreamMode();
        if (!flag)
        {
            ViewUtils.showMailingListPropmt(this);
            ViewUtils.showOfflineCachingPropmt(this);
        }
        ViewUtils.showEmailCollectPropmtIfNeeded(this, null);
        if (!flag)
        {
            AppSettings appsettings = AppCore.getInstance().getAppSettings();
            if (appsettings != null && appsettings.isSocialOnBoard())
            {
                (new SocialOnBoardingPopupDialog(this, settings)).show();
            }
        }
        LoyaltyHandler.getInstance(this).handleLoyalityAwarded(bundle);
        StringsSource.getInstance().addListener(localizationListener);
        startAnimationIfNeeded();
    }

    public void onDestroy()
    {
        if (modernAnimationComponent != null)
        {
            modernAnimationComponent.stopAnimation();
        }
        if (homeAnimationComponent != null)
        {
            homeAnimationComponent.stop();
        }
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.home_menu_root);
        StringsSource.getInstance().removeListener(localizationListener);
        if (viewgroup != null)
        {
            viewgroup.setBackgroundDrawable(null);
        }
        if (rootView != null)
        {
            rootView.setBackgroundDrawable(null);
        }
        onDestroy();
    }

    protected void onPreInit()
    {
        boolean flag1 = true;
        onPreInit();
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
        if (appSettings.getHomeLayoutType() != 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        useNewHomeTabMode = flag;
        defineRowLayout();
        if (useNewHomeTabMode)
        {
            initHomeMenu();
        }
    }









/*
    static Handler access$1602(HomeScreenActivity homescreenactivity, Handler handler)
    {
        homescreenactivity.newsFeedHandler = handler;
        return handler;
    }

*/



/*
    static int access$1702(HomeScreenActivity homescreenactivity, int i)
    {
        homescreenactivity.newsItemIndex = i;
        return i;
    }

*/


/*
    static int access$1708(HomeScreenActivity homescreenactivity)
    {
        int i = homescreenactivity.newsItemIndex;
        homescreenactivity.newsItemIndex = i + 1;
        return i;
    }

*/




/*
    static int access$1910(HomeScreenActivity homescreenactivity)
    {
        int i = homescreenactivity.currentTabIndex;
        homescreenactivity.currentTabIndex = i - 1;
        return i;
    }

*/






/*
    static boolean access$302(HomeScreenActivity homescreenactivity, boolean flag)
    {
        homescreenactivity.exitToReseller = flag;
        return flag;
    }

*/




/*
    static String access$602(HomeScreenActivity homescreenactivity, String s)
    {
        homescreenactivity.searchText = s;
        return s;
    }

*/




    // Unreferenced inner class com/biznessapps/home_screen/HomeScreenActivity$SearchAsyncTask$1

/* anonymous class */
    class SearchAsyncTask._cls1 extends Handler
    {

        final SearchAsyncTask this$1;
        final List val$items;
        final TextView val$newsFeedView;

        public void handleMessage(Message message)
        {
            switch (message.what)
            {
            default:
                return;

            case 1: // '\001'
                if (newsItemIndex >= items.size())
                {
                    newsItemIndex = 0;
                }
                message = (SearchEntity)items.get(newsItemIndex);
                message = String.format("%s:%s", new Object[] {
                    message.getName(), message.getText()
                });
                newsFeedView.setText(Html.fromHtml(message));
                newsFeedView.setSelected(true);
                sendMessageToHandler(2, 4000);
                int i = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$1 = final_searchasynctask;
                items = List.this;
                newsFeedView = textview;
                super(final_looper);
            }
    }

}
