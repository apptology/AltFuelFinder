// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen.components;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;

public class BackgroundComponent
{
    public static class SetHomeBgAsyncTask extends AsyncTask
    {

        private Activity activity;
        private String url;
        private View view;

        protected transient Bitmap doInBackground(String as[])
        {
            as = null;
            if (StringUtils.isNotEmpty(url))
            {
                ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
                Bitmap bitmap = imagefetcher.getImageFromCache(url);
                as = bitmap;
                if (bitmap == null)
                {
                    as = BitmapDownloader.downloadBitmap(url);
                    imagefetcher.getCache().addBitmapToCache(url, as);
                }
                as = BlurEffectUtils.addBlurEffect(as, 30);
            }
            return as;
        }

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Bitmap bitmap)
        {
            if (activity != null && bitmap != null)
            {
                Drawable adrawable[] = new Drawable[2];
                adrawable[0] = new BitmapDrawable(bitmap);
                adrawable[1] = new ColorDrawable(-1);
                adrawable[1].setAlpha(ViewUtils.getOpacity(30F));
                bitmap = new LayerDrawable(adrawable);
                view.setBackgroundDrawable(bitmap.getCurrent());
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }

        public SetHomeBgAsyncTask(Activity activity1, ViewGroup viewgroup, String s)
        {
            activity = activity1;
            view = viewgroup;
            url = s;
        }
    }


    private static final String HEADER_LEFT_ALIGNMENT = "left";
    private static final String HEADER_RIGHT_ALIGNMENT = "right";
    private AppSettings appSettings;
    private Context context;
    private String homeBgUrl;
    private UiSettings uiSettings;

    public BackgroundComponent(Context context1, String s, UiSettings uisettings, AppSettings appsettings)
    {
        context = context1;
        homeBgUrl = NewImageManager.addWidthParam(s, AppCore.getInstance().getDeviceWidth());
        uiSettings = uisettings;
        appSettings = appsettings;
    }

    public static void setBlurBg(Activity activity, ViewGroup viewgroup, String s)
    {
        (new SetHomeBgAsyncTask(activity, viewgroup, s)).execute(new String[0]);
    }

    private void setHeaderBackground(ImageView imageview)
    {
        ImageFetcher imagefetcher;
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams;
        String s = appSettings.getHeaderSrc();
        if (!StringUtils.isNotEmpty(s))
        {
            break MISSING_BLOCK_LABEL_316;
        }
        com.biznessapps.utils.google.caching.ImageWorker.TintContainer tintcontainer = new com.biznessapps.utils.google.caching.ImageWorker.TintContainer();
        tintcontainer.setTintColor(ViewUtils.getColor(appSettings.getHeaderTint()));
        tintcontainer.setTintOpacity(appSettings.getHeaderTintOpacity());
        imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
        imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setView(imageview);
        imageloadparams.setTint(tintcontainer);
        imageloadparams.setUrl(s);
        imageloadparams.setImageType(3);
        if (!appSettings.isNormalHeader()) goto _L2; else goto _L1
_L1:
        int i = context.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.footer_bar_height);
        android.view.ViewGroup.LayoutParams layoutparams = imageview.getLayoutParams();
        layoutparams.height = i;
        layoutparams.width = -1;
        imageview.setLayoutParams(layoutparams);
        imageview.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        imageloadparams.setImageSrc(true);
_L4:
        imagefetcher.loadImage(imageloadparams);
        return;
_L2:
        int j;
        float f1 = appSettings.getHeaderHeight();
        float f2 = appSettings.getHeaderWidth();
        j = AppCore.getInstance().getDeviceWidth();
        float f;
        android.widget.FrameLayout.LayoutParams layoutparams1;
        int k;
        if (f2 / 318F <= 1.0F)
        {
            f = f2 / 318F;
        } else
        {
            f = 1.0F;
        }
        j = (int)((float)j * f);
        k = (int)(((float)j / f2) * f1);
        layoutparams1 = (android.widget.FrameLayout.LayoutParams)imageview.getLayoutParams();
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
        imageview.setLayoutParams(layoutparams1);
        if (true) goto _L4; else goto _L3
_L3:
        if (!"right".equalsIgnoreCase(appSettings.getHeaderAlignment())) goto _L6; else goto _L5
_L5:
        j = 5;
          goto _L6
        imageview.setVisibility(8);
        return;
    }

    private void setRootBackground(ViewGroup viewgroup)
    {
        ViewUtils.setRootBgColor(viewgroup, uiSettings);
        AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(homeBgUrl, viewgroup, uiSettings);
    }

    public void clearBackgrounds(ViewGroup viewgroup, ImageView imageview, ViewGroup viewgroup1)
    {
        if (viewgroup != null)
        {
            viewgroup.setBackgroundResource(0);
        }
        if (imageview != null)
        {
            imageview.setBackgroundResource(0);
        }
        if (viewgroup1 != null)
        {
            viewgroup1.setBackgroundResource(0);
        }
    }

    public void setBackgrounds(ViewGroup viewgroup, ImageView imageview)
    {
        setRootBackground(viewgroup);
        setHeaderBackground(imageview);
    }
}
