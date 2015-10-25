// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;

import android.app.Activity;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.ProgressBar;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.TabUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.ExtendedViewPager;
import java.util.Iterator;
import java.util.List;

public class HomeAnimation
{
    private class CustomPagerAdapter extends PagerAdapter
    {

        private ViewGroup currentView;
        final HomeAnimation this$0;
        private List urls;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)obj);
        }

        public int getCount()
        {
            return urls.size();
        }

        public ViewGroup getCurrentView()
        {
            return currentView;
        }

        public View instantiateItem(ViewGroup viewgroup, int i)
        {
            String s = (String)urls.get(i);
            ViewGroup viewgroup1 = (ViewGroup)ViewUtils.loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.home_pager_item);
            setImage(s, viewgroup1);
            viewgroup.addView(viewgroup1, -1, -1);
            return viewgroup1;
        }

        public volatile Object instantiateItem(ViewGroup viewgroup, int i)
        {
            return instantiateItem(viewgroup, i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }

        public void setPrimaryItem(ViewGroup viewgroup, int i, Object obj)
        {
            currentView = (ViewGroup)obj;
        }

        public CustomPagerAdapter(List list)
        {
            this$0 = HomeAnimation.this;
            super();
            urls = list;
        }
    }


    private static final int DELAY_TIME = 6000;
    private static final int SWITCH_IMAGE_EVENT = 1;
    private Activity activity;
    private int currentPos;
    private Handler eventHandler;
    protected Animation fadeInAnimation;
    protected Animation fadeOutAnimation;
    private ExtendedViewPager pager;
    private CustomPagerAdapter pagerAdapter;
    private List urls;
    private boolean useFadeAnimation;

    public HomeAnimation(Activity activity1, ExtendedViewPager extendedviewpager, List list)
    {
        boolean flag = false;
        super();
        currentPos = 0;
        activity = activity1;
        pager = extendedviewpager;
        urls = list;
        imagePreLoading();
        if (AppCore.getInstance().getAppSettings().getAnimationMode() == 2)
        {
            flag = true;
        }
        useFadeAnimation = flag;
        if (useFadeAnimation)
        {
            fadeOutAnimation = AnimationUtils.loadAnimation(activity1.getApplicationContext(), com.biznessapps.layout.R.anim.fade_out);
            fadeInAnimation = AnimationUtils.loadAnimation(activity1.getApplicationContext(), com.biznessapps.layout.R.anim.fade_in);
        }
        pagerAdapter = new CustomPagerAdapter(list);
        extendedviewpager.setAdapter(pagerAdapter);
        extendedviewpager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final HomeAnimation this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                currentPos = i;
            }

            
            {
                this$0 = HomeAnimation.this;
                super();
            }
        });
    }

    private void imagePreLoading()
    {
        ImageFetcher imagefetcher;
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams;
        for (Iterator iterator = urls.iterator(); iterator.hasNext(); imagefetcher.loadImage(imageloadparams))
        {
            String s = (String)iterator.next();
            imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setUrl(NewImageManager.addWidthParam(s, AppCore.getInstance().getDeviceWidth()));
            imageloadparams.setView(new View(activity.getApplicationContext()));
            imageloadparams.setImageType(3);
        }

    }

    private void initEventHandler(List list)
    {
        if (AppCore.getInstance().getAppSettings().getAnimationMode() != 0 && eventHandler == null)
        {
            eventHandler = new Handler(list) {

                final HomeAnimation this$0;
                final List val$urls;

                public void handleMessage(Message message)
                {
                    switch (message.what)
                    {
                    default:
                        return;

                    case 1: // '\001'
                        break;
                    }
                    if (currentPos < urls.size() - 1)
                    {
                        int i = this.access$400;
                    } else
                    {
                        currentPos = 0;
                    }
                    if (useFadeAnimation)
                    {
                        setImage((String)urls.get(currentPos), pagerAdapter.getCurrentView());
                    } else
                    {
                        pager.setCurrentItem(currentPos);
                    }
                    sendChangeImageMessage(6000);
                }

            
            {
                this$0 = HomeAnimation.this;
                urls = list;
                super(final_looper);
            }
            };
            sendChangeImageMessage(6000);
        }
    }

    private void sendChangeImageMessage(int i)
    {
        if (eventHandler != null)
        {
            Message message = eventHandler.obtainMessage(1);
            eventHandler.removeMessages(1);
            eventHandler.sendMessageDelayed(message, i);
        }
    }

    private void setImage(final String url, final ViewGroup secondView)
    {
        final ProgressBar progressBar = (ProgressBar)secondView.findViewById(com.biznessapps.layout.R.id.progressBar);
        final View imageView = secondView.findViewById(com.biznessapps.layout.R.id.home_image_view1);
        secondView = secondView.findViewById(com.biznessapps.layout.R.id.home_image_view2);
        imageView.setOnClickListener(new android.view.View.OnClickListener() {

            final HomeAnimation this$0;
            final String val$url;

            public void onClick(View view)
            {
                TabUtils.openLinkedTab(urls.indexOf(url), activity);
            }

            
            {
                this$0 = HomeAnimation.this;
                url = s;
                super();
            }
        });
        ViewUtils.addUpDownGestureListener(imageView, new Runnable() {

            final HomeAnimation this$0;

            public void run()
            {
                Intent intent = new Intent(activity.getApplicationContext(), ActivitySelector.getActivityClass("GLOBAL_SEARCH_VIEW_CONTROLLER"));
                intent.putExtra("TAB_FRAGMENT", "GLOBAL_SEARCH_VIEW_CONTROLLER");
                activity.startActivity(intent);
            }

            
            {
                this$0 = HomeAnimation.this;
                super();
            }
        }, activity.getApplicationContext());
        progressBar.setVisibility(0);
        ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setUrl(NewImageManager.addWidthParam(url, AppCore.getInstance().getDeviceWidth()));
        imageloadparams.setView(new View(activity.getApplicationContext()));
        imageloadparams.setImageType(3);
        imageloadparams.setLoadCallback(new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final HomeAnimation this$0;
            final View val$imageView;
            final ProgressBar val$progressBar;
            final View val$secondView;

            public void onImageLoaded(String s, Bitmap bitmap, View view)
            {
                if (!useFadeAnimation) goto _L2; else goto _L1
_L1:
                setImageWithAnimation(imageView, secondView, bitmap);
_L4:
                initEventHandler(urls);
                progressBar.setVisibility(4);
                return;
_L2:
                if (bitmap != null && !bitmap.isRecycled())
                {
                    imageView.setBackgroundDrawable(new BitmapDrawable(bitmap));
                }
                if (true) goto _L4; else goto _L3
_L3:
            }

            
            {
                this$0 = HomeAnimation.this;
                imageView = view;
                secondView = view1;
                progressBar = progressbar;
                super();
            }
        });
        imagefetcher.loadImage(imageloadparams);
    }

    private void setImageWithAnimation(final View firstView, View view, final Bitmap b)
    {
        fadeOutAnimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final HomeAnimation this$0;
            final Bitmap val$b;
            final View val$firstView;

            public void onAnimationEnd(Animation animation)
            {
                firstView.setBackgroundDrawable(new BitmapDrawable(b));
                firstView.startAnimation(fadeInAnimation);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = HomeAnimation.this;
                firstView = view;
                b = bitmap;
                super();
            }
        });
        view.setBackgroundDrawable(new BitmapDrawable(b));
        firstView.startAnimation(fadeOutAnimation);
    }

    public void stop()
    {
        if (eventHandler != null)
        {
            eventHandler.removeMessages(1);
        }
        pager.setAdapter(null);
    }



/*
    static int access$002(HomeAnimation homeanimation, int i)
    {
        homeanimation.currentPos = i;
        return i;
    }

*/


/*
    static int access$008(HomeAnimation homeanimation)
    {
        int i = homeanimation.currentPos;
        homeanimation.currentPos = i + 1;
        return i;
    }

*/









}
