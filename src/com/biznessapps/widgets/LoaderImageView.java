// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.utils.google.caching.ImageFetcher;

public class LoaderImageView extends FrameLayout
{

    private static final int COMPLETE = 0;
    private static final int FAILED = 1;
    private static final int LOADING_COMPLETED = 2;
    private final Handler imageLoadedHandler;
    private Context mContext;
    private Drawable mDrawable;
    protected ImageFetcher mImageFetcher;
    private com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback mImageLoadCallback = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

        final LoaderImageView this$0;

        public void onImageLoaded(String s, Bitmap bitmap, View view)
        {
            view = (com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams)view.getTag();
            if (bitmap == null)
            {
                break MISSING_BLOCK_LABEL_100;
            }
            if (!s.equals(view.getUrl()))
            {
                break MISSING_BLOCK_LABEL_100;
            }
            mDrawable = new BitmapDrawable(getResources(), bitmap);
            if (view.getLoadCallback() != null)
            {
                imageLoadedHandler.sendEmptyMessage(2);
                view.getLoadCallback().onImageLoaded(s, bitmap, LoaderImageView.this);
                return;
            }
            try
            {
                imageLoadedHandler.sendEmptyMessage(0);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
            }
            return;
            if (view.getLoadCallback() != null)
            {
                imageLoadedHandler.sendEmptyMessage(2);
                view.getLoadCallback().onImageLoaded(s, null, LoaderImageView.this);
                return;
            }
            imageLoadedHandler.sendEmptyMessage(1);
            return;
        }

            
            {
                this$0 = LoaderImageView.this;
                super();
            }
    };
    private ImageView mImageView;
    private ProgressBar mSpinner;

    public LoaderImageView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        imageLoadedHandler = new Handler(new android.os.Handler.Callback() {

            final LoaderImageView this$0;

            public boolean handleMessage(Message message)
            {
                message.what;
                JVM INSTR tableswitch 0 2: default 32
            //                           0 34
            //                           1 77
            //                           2 117;
                   goto _L1 _L2 _L3 _L4
_L1:
                return true;
_L2:
                mImageView.setImageDrawable(mDrawable);
                mImageView.setVisibility(0);
                mSpinner.setVisibility(8);
                continue; /* Loop/switch isn't completed */
_L3:
                mImageView.setImageDrawable(mDrawable);
                mImageView.setVisibility(0);
                mSpinner.setVisibility(8);
_L4:
                mImageView.setVisibility(0);
                mSpinner.setVisibility(8);
                if (true) goto _L1; else goto _L5
_L5:
            }

            
            {
                this$0 = LoaderImageView.this;
                super();
            }
        });
        attributeset = attributeset.getAttributeValue(null, "image");
        if (attributeset != null)
        {
            instantiate(context, attributeset);
            return;
        } else
        {
            instantiate(context, null);
            return;
        }
    }

    public LoaderImageView(Context context, String s)
    {
        super(context);
        imageLoadedHandler = new Handler(new _cls1());
        instantiate(context, s);
    }

    private void instantiate(Context context, String s)
    {
        mContext = context;
        try
        {
            mImageFetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            mImageView = new ImageView(mContext);
            context = new android.widget.FrameLayout.LayoutParams(-1, -1);
            context.gravity = 17;
            mImageView.setLayoutParams(context);
            mImageView.setBackgroundColor(0);
            mImageView.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
            mSpinner = new ProgressBar(mContext);
            context = new android.widget.FrameLayout.LayoutParams(-2, -2);
            context.gravity = 17;
            mSpinner.setLayoutParams(context);
            mSpinner.setIndeterminate(true);
            mSpinner.setVisibility(4);
            addView(mSpinner);
            addView(mImageView);
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        setImageDrawable(s, null);
    }

    protected com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams getDefaultImageLoaderParams(String s)
    {
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setView(null);
        imageloadparams.setLoadCallback(mImageLoadCallback);
        imageloadparams.setTint(null);
        imageloadparams.setUrl(s);
        imageloadparams.setImageType(2);
        return imageloadparams;
    }

    public ImageView getImageView()
    {
        return mImageView;
    }

    public void setBackgroundDrawable(Drawable drawable)
    {
        mImageView.setBackgroundDrawable(drawable);
    }

    public void setBackgroundResource(int i)
    {
        mImageView.setBackgroundResource(i);
    }

    public void setImageBitmap(int i, boolean flag)
    {
label0:
        {
            if (mImageView != null)
            {
                if (!flag)
                {
                    break label0;
                }
                mImageView.setImageResource(i);
            }
            return;
        }
        mImageView.setBackgroundResource(i);
    }

    public void setImageBitmap(Bitmap bitmap, boolean flag)
    {
label0:
        {
            if (mImageView != null)
            {
                if (!flag)
                {
                    break label0;
                }
                mImageView.setImageBitmap(bitmap);
            }
            return;
        }
        mImageView.setBackgroundDrawable(null);
    }

    public void setImageDrawable(String s, com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams)
    {
        mDrawable = null;
        mSpinner.setVisibility(0);
        mImageView.setVisibility(8);
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams1 = imageloadparams;
        if (imageloadparams == null)
        {
            imageloadparams1 = getDefaultImageLoaderParams(s);
        }
        try
        {
            s = (com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams)imageloadparams1.clone();
            imageloadparams1.setLoadCallback(mImageLoadCallback);
            imageloadparams1.setView(mImageView);
            mImageView.setTag(s);
            mImageFetcher.loadImage(imageloadparams1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }



/*
    static Drawable access$002(LoaderImageView loaderimageview, Drawable drawable)
    {
        loaderimageview.mDrawable = drawable;
        return drawable;
    }

*/



}
