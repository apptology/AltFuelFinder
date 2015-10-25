// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen.components;

import android.app.Activity;
import android.view.View;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.utils.TabUtils;
import com.biznessapps.widgets.animation.kenburns.AdvancedKenBurnsView;
import com.biznessapps.widgets.animation.parallax.LoopPagerAdapter;
import com.biznessapps.widgets.animation.parallax.ParallaxViewPager;
import java.util.List;

public class ModernAnimationComponent
{

    private Activity activity;
    private AdvancedKenBurnsView kenBurnsView;
    private ParallaxViewPager parallaxPager;

    public ModernAnimationComponent(Activity activity1, AppSettings appsettings)
    {
        activity = activity1;
    }

    public void init(int i, List list, View view)
    {
        com.biznessapps.utils.google.caching.ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        if (i == 1)
        {
            parallaxPager = (ParallaxViewPager)view.findViewById(com.biznessapps.layout.R.id.view_pager);
            parallaxPager.setVisibility(0);
            list = new LoopPagerAdapter(parallaxPager, list, imagefetcher);
            parallaxPager.setAdapter(list);
            parallaxPager.setCurrentItem(1, false);
            list.setOnItemClickListener(new com.biznessapps.widgets.animation.parallax.LoopPagerAdapter.OnItemClickListener() {

                final ModernAnimationComponent this$0;

                public void onClick(int j)
                {
                    TabUtils.openLinkedTab(j, activity);
                }

            
            {
                this$0 = ModernAnimationComponent.this;
                super();
            }
            });
        } else
        if (i == 2)
        {
            kenBurnsView = (AdvancedKenBurnsView)view.findViewById(com.biznessapps.layout.R.id.ken_burns_view);
            kenBurnsView.setVisibility(0);
            kenBurnsView.setOnClickListener(new android.view.View.OnClickListener() {

                final ModernAnimationComponent this$0;

                public void onClick(View view1)
                {
                    TabUtils.openLinkedTab(kenBurnsView.getCurrentPosition(), activity);
                }

            
            {
                this$0 = ModernAnimationComponent.this;
                super();
            }
            });
            kenBurnsView.setItems(list, imagefetcher);
            return;
        }
    }

    public void startAnimation()
    {
        if (parallaxPager != null)
        {
            parallaxPager.startAutoFlipTimer();
        }
        if (kenBurnsView != null)
        {
            kenBurnsView.startAutoFlipTimer();
        }
    }

    public void stopAnimation()
    {
        if (parallaxPager != null)
        {
            parallaxPager.stopAutoFlipTimer();
        }
        if (kenBurnsView != null)
        {
            kenBurnsView.stopAutoFlipTimer();
        }
    }


}
