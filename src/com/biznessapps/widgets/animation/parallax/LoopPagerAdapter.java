// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.ArrayList;
import java.util.List;

public class LoopPagerAdapter extends PagerAdapter
{
    public static interface OnItemClickListener
    {

        public abstract void onClick(int i);
    }


    private int currentPos;
    private View firstItem;
    private ImageFetcher imageFetcher;
    private LayoutInflater inflater;
    private View lastItem;
    private OnItemClickListener onItemClickListener;
    private List urls;

    public LoopPagerAdapter(final ViewPager viewPager, List list, ImageFetcher imagefetcher)
    {
        currentPos = 0;
        imageFetcher = imagefetcher;
        urls = new ArrayList(list);
        urls.add(0, list.get(list.size() - 1));
        urls.add(list.get(0));
        inflater = (LayoutInflater)viewPager.getContext().getSystemService("layout_inflater");
        viewPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final LoopPagerAdapter this$0;
            final ViewPager val$viewPager;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
                if (f == 0.0F)
                {
                    currentPos = i;
                    j = getCount();
                    if (i == 0)
                    {
                        viewPager.setCurrentItem(j - 2, false);
                    } else
                    if (i == j - 1)
                    {
                        viewPager.setCurrentItem(1, false);
                        return;
                    }
                }
            }

            public void onPageSelected(int i)
            {
            }

            
            {
                this$0 = LoopPagerAdapter.this;
                viewPager = viewpager;
                super();
            }
        });
        viewPager.setOnClickListener(new android.view.View.OnClickListener() {

            final LoopPagerAdapter this$0;

            public void onClick(View view)
            {
                if (onItemClickListener != null)
                {
                    onItemClickListener.onClick(currentPos - 1);
                }
            }

            
            {
                this$0 = LoopPagerAdapter.this;
                super();
            }
        });
    }

    private View createViewPagerItem(ViewGroup viewgroup, String s)
    {
        viewgroup = inflater.inflate(com.biznessapps.layout.R.layout.parallax_image_item, viewgroup, false);
        final ImageView image = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.imageView);
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback imageloadcallback = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final LoopPagerAdapter this$0;
            final ImageView val$image;

            public void onImageLoaded(String s1, Bitmap bitmap, View view)
            {
                if (bitmap != null)
                {
                    image.setImageBitmap(bitmap);
                    image.post(new Runnable() {

                        final _cls3 this$1;

                        public void run()
                        {
                            Matrix matrix = new Matrix();
                            matrix.reset();
                            float f2 = image.getWidth();
                            float f3 = image.getHeight();
                            float f4 = image.getDrawable().getIntrinsicWidth();
                            float f5 = image.getDrawable().getIntrinsicHeight();
                            float f = f2;
                            float f1 = f3;
                            if (f4 / f2 > f5 / f3)
                            {
                                matrix.setScale(f3 / f5, f3 / f5);
                                f = (f4 * f3) / f5;
                            } else
                            {
                                matrix.setScale(f2 / f4, f2 / f4);
                                f1 = (f5 * f2) / f4;
                            }
                            matrix.preTranslate((f2 - f) / 2.0F, (f3 - f1) / 2.0F);
                            image.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
                            if (android.os.Build.VERSION.SDK_INT >= 11)
                            {
                                image.setScaleX(1.35F);
                                image.setScaleY(1.35F);
                            }
                            image.setImageMatrix(matrix);
                        }

            
            {
                this$1 = _cls3.this;
                super();
            }
                    });
                }
            }

            
            {
                this$0 = LoopPagerAdapter.this;
                image = imageview;
                super();
            }
        };
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setUrl(NewImageManager.addWidthParam(s, AppCore.getInstance().getDeviceWidth()));
        imageloadparams.setView(image);
        imageloadparams.setImageSrc(true);
        imageloadparams.setImageType(3);
        imageloadparams.setLoadCallback(imageloadcallback);
        imageFetcher.loadImage(imageloadparams);
        return viewgroup;
    }

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        if (i != 1 && i != getCount() - 2)
        {
            ((ViewPager)viewgroup).removeView((View)obj);
        }
    }

    public int getCount()
    {
        return urls.size();
    }

    public Object instantiateItem(ViewGroup viewgroup, int i)
    {
        if (i == 1)
        {
            if (firstItem == null)
            {
                firstItem = createViewPagerItem(viewgroup, (String)urls.get(i));
                ((ViewPager)viewgroup).addView(firstItem);
            }
            return firstItem;
        }
        if (i == getCount() - 2)
        {
            if (lastItem == null)
            {
                lastItem = createViewPagerItem(viewgroup, (String)urls.get(i));
                ((ViewPager)viewgroup).addView(lastItem);
            }
            return lastItem;
        } else
        {
            View view = createViewPagerItem(viewgroup, (String)urls.get(i));
            ((ViewPager)viewgroup).addView(view);
            return view;
        }
    }

    public boolean isViewFromObject(View view, Object obj)
    {
        return view == obj;
    }

    public void setOnItemClickListener(OnItemClickListener onitemclicklistener)
    {
        onItemClickListener = onitemclicklistener;
    }



/*
    static int access$002(LoopPagerAdapter looppageradapter, int i)
    {
        looppageradapter.currentPos = i;
        return i;
    }

*/

}
