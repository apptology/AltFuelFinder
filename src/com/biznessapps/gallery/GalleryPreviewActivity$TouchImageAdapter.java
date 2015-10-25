// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.graphics.Bitmap;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryPreviewActivity

private class <init> extends PagerAdapter
{

    private View mCurrentView;
    final GalleryPreviewActivity this$0;

    public void destroyItem(ViewGroup viewgroup, int i, Object obj)
    {
        viewgroup.removeView((View)obj);
    }

    public int getCount()
    {
        return GalleryPreviewActivity.access$300(GalleryPreviewActivity.this).size();
    }

    public View getCurrentView()
    {
        return mCurrentView;
    }

    public View instantiateItem(ViewGroup viewgroup, int i)
    {
        final k item = (k)GalleryPreviewActivity.access$300(GalleryPreviewActivity.this).get(i);
        ViewGroup viewgroup1 = (ViewGroup)ViewUtils.loadLayout(GalleryPreviewActivity.this, com.biznessapps.layout..this._fld0);
        GalleryPreviewActivity.access$900(GalleryPreviewActivity.this, item, viewgroup1);
        viewgroup.addView(viewgroup1, -1, -1);
        GalleryPreviewActivity.access$1000(GalleryPreviewActivity.this).setBackgroundColor(item._mth0());
        if (!StringUtils.isEmpty(item._mth0()))
        {
            viewgroup = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            com.biznessapps.utils.google.caching.  = new com.biznessapps.utils.google.caching.();
            .(true);
            .(item.setUrl());
            .(GalleryPreviewActivity.access$1100(GalleryPreviewActivity.this));
            .(3);
            .ck(new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

                final GalleryPreviewActivity.TouchImageAdapter this$1;
                final GalleryData.Item val$item;

                public void onImageLoaded(String s, Bitmap bitmap, View view)
                {
                    s = bitmap;
                    if (item.getBGBlueEffectRadius() != 0)
                    {
                        s = BlurEffectUtils.addBlurEffect(bitmap, item.getBGBlueEffectRadius());
                    }
                    GalleryPreviewActivity.access$1100(this$0).setImageBitmap(s);
                }

            
            {
                this$1 = GalleryPreviewActivity.TouchImageAdapter.this;
                item = item1;
                super();
            }
            });
            viewgroup.loadImage();
            return viewgroup1;
        } else
        {
            GalleryPreviewActivity.access$1200(GalleryPreviewActivity.this).setBackgroundDrawable(null);
            return viewgroup1;
        }
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
        mCurrentView = (View)obj;
    }

    private _cls1.val.item()
    {
        this$0 = GalleryPreviewActivity.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
