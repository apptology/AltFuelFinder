// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;

// Referenced classes of package com.biznessapps.api.navigation:
//            TabViewSettings

public class TabView
{

    private static final int DEFAULT_LAYOUT_ID;
    private static int tabMargin;
    private final Runnable clickAction;
    private final Context context;
    private final String imageResourceUrl;
    private ImageView imageView;
    private int layoutId;
    private ViewGroup tabRootLayout;
    private TabViewSettings tabSettings;
    private int tabSize;
    private TextView titleView;
    private boolean withOldDesign;

    public TabView(Context context1, String s, Runnable runnable, boolean flag, TabViewSettings tabviewsettings)
    {
        this(context1, s, runnable, flag, tabviewsettings, DEFAULT_LAYOUT_ID, 0);
    }

    public TabView(Context context1, String s, Runnable runnable, boolean flag, TabViewSettings tabviewsettings, int i, int j)
    {
        layoutId = DEFAULT_LAYOUT_ID;
        context = context1;
        clickAction = runnable;
        withOldDesign = flag;
        imageResourceUrl = s;
        tabSettings = tabviewsettings;
        layoutId = i;
        if (tabMargin == 0)
        {
            tabMargin = context1.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.common_padding_small0);
        }
        tabSize = j - tabMargin * 2;
        initTabViews();
        tabRootLayout.setOnClickListener(getTabOnClickListener());
    }

    private android.view.View.OnClickListener getTabOnClickListener()
    {
        return new android.view.View.OnClickListener() {

            final TabView this$0;

            public void onClick(View view)
            {
                if (clickAction != null)
                {
                    clickAction.run();
                    setSelected(true);
                }
            }

            
            {
                this$0 = TabView.this;
                super();
            }
        };
    }

    private void initTabViews()
    {
        tabRootLayout = (ViewGroup)ViewUtils.loadLayout(context, layoutId);
        imageView = (ImageView)tabRootLayout.findViewById(com.biznessapps.layout.R.id.navigation_image_view);
        if (layoutId == com.biznessapps.layout.R.layout.home_tab)
        {
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(tabSize, tabSize);
            layoutparams.setMargins(tabMargin, tabMargin, tabMargin, tabMargin);
            tabRootLayout.setLayoutParams(layoutparams);
            int i = (int)((double)tabSize * 0.40000000000000002D);
            layoutparams = (android.widget.LinearLayout.LayoutParams)imageView.getLayoutParams();
            layoutparams.height = i;
            layoutparams.width = i;
        }
        ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        if (StringUtils.isNotEmpty(imageResourceUrl))
        {
            imagefetcher.loadImage(imageResourceUrl, imageView);
        }
        titleView = (TextView)tabRootLayout.findViewById(com.biznessapps.layout.R.id.navigation_text_view);
        titleView.setText(tabSettings.getTabName());
        titleView.setTextColor(0xffcccccc);
        if (!withOldDesign)
        {
            titleView.setTextColor(ViewUtils.getColor(tabSettings.getTabTextColor()));
            com.biznessapps.utils.google.caching.ImageWorker.TintContainer tintcontainer = new com.biznessapps.utils.google.caching.ImageWorker.TintContainer();
            tintcontainer.setTintColor(ViewUtils.getColor(tabSettings.getTabTint(), 0));
            tintcontainer.setTintOpacity(tabSettings.getTabTintOpacity());
            TextView textview = titleView;
            int j;
            if (tabSettings.isShowText())
            {
                j = 0;
            } else
            {
                j = 4;
            }
            textview.setVisibility(j);
            imagefetcher.loadImage(tabSettings.getTabBgUrl(), tabRootLayout, tintcontainer);
        }
    }

    public ViewGroup getView()
    {
        return tabRootLayout;
    }

    public void setEnable(boolean flag)
    {
        imageView.setEnabled(flag);
    }

    public void setSelected(boolean flag)
    {
        if (withOldDesign)
        {
            if (flag)
            {
                tabRootLayout.setBackgroundResource(com.biznessapps.layout.R.drawable.selected_tab_background);
                titleView.setTextColor(-1);
            } else
            {
                tabRootLayout.setBackgroundResource(com.biznessapps.layout.R.drawable.navigation_background);
                titleView.setTextColor(0xffcccccc);
            }
            imageView.setSelected(flag);
        }
    }

    public boolean shouldBeSelectedForView(long l)
    {
        return l == tabSettings.getTabId();
    }

    public boolean withOldDesign()
    {
        return withOldDesign;
    }

    static 
    {
        DEFAULT_LAYOUT_ID = com.biznessapps.layout.R.layout.tab;
    }

}
