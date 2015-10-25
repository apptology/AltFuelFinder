// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.widgets.animation.kenburns.AdvancedKenBurnsView;
import com.biznessapps.widgets.animation.kenburns.AnimationDirection;
import com.biznessapps.widgets.animation.kenburns.KenBurnsEntity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            ParallaxViewPager, LoopPagerAdapter

public class TestParallaxActivity extends FragmentActivity
{

    private AdvancedKenBurnsView kenBurnsView;
    private LoopPagerAdapter myAdapter;
    private ParallaxViewPager myPager;

    public TestParallaxActivity()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(com.biznessapps.layout.R.layout.parallax_test_layout);
        if (!AppCore.getInstance().isInitialized())
        {
            AppCore.getInstance().init(getApplicationContext());
        }
        bundle = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        myPager = (ParallaxViewPager)findViewById(com.biznessapps.layout.R.id.view_pager);
        myPager.setBackgroundColor(0xff000000);
        ArrayList arraylist = new ArrayList();
        arraylist.add("http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg99.jpg?modified=1408005980&width=720");
        arraylist.add("http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg98.jpg?modified=1406279926&width=720");
        arraylist.add("http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg94.jpg?modified=1406279485&width=720");
        myAdapter = new LoopPagerAdapter(myPager, arraylist, bundle);
        myPager.setAdapter(myAdapter);
        myPager.setCurrentItem(1, false);
        kenBurnsView = (AdvancedKenBurnsView)findViewById(com.biznessapps.layout.R.id.ken_burns_view);
        KenBurnsEntity akenburnsentity[] = new KenBurnsEntity[3];
        akenburnsentity[0] = new KenBurnsEntity("http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg98.jpg?modified=1406279926&width=720", AnimationDirection.RIGHT_TO_LEFT);
        akenburnsentity[1] = new KenBurnsEntity("http://wac.6757.edgecastcdn.net/806757/public_html//custom_images/cases/custom_bg94.jpg?modified=1406279485&width=720", AnimationDirection.LEFT_TO_RIGHT);
        kenBurnsView.setItems(akenburnsentity, bundle);
    }

    public void onPause()
    {
        myPager.stopAutoFlipTimer();
        kenBurnsView.stopAutoFlipTimer();
        super.onPause();
    }

    public void onResume()
    {
        myPager.startAutoFlipTimer();
        kenBurnsView.startAutoFlipTimer();
        super.onResume();
    }
}
