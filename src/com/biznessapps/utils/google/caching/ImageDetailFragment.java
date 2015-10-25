// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageFetcher, Utils, ImageWorker

public class ImageDetailFragment extends Fragment
{

    private static final String IMAGE_DATA_EXTRA = "extra_image_data";
    private static final String IMAGE_VIEW_EXTRA = "extra_imageview_id";
    private static final String LAYOUT_EXTRA = "extra_layout_id";
    private ImageFetcher mImageFetcher;
    private String mImageUrl;
    private ImageView mImageView;
    private int mImageViewId;
    private int mLayoutId;

    public ImageDetailFragment()
    {
    }

    public static ImageDetailFragment newInstance(ImageFetcher imagefetcher, String s, int i, int j)
    {
        ImageDetailFragment imagedetailfragment = new ImageDetailFragment();
        imagedetailfragment.setImageFetcher(imagefetcher);
        imagefetcher = new Bundle();
        imagefetcher.putString("extra_image_data", s);
        imagefetcher.putInt("extra_layout_id", i);
        imagefetcher.putInt("extra_imageview_id", j);
        imagedetailfragment.setArguments(imagefetcher);
        return imagedetailfragment;
    }

    public void onActivityCreated(Bundle bundle)
    {
        super.onActivityCreated(bundle);
        mImageFetcher.loadAppImage(mImageUrl, mImageView);
        if (android/view/View$OnClickListener.isInstance(getActivity()) && Utils.hasHoneycomb())
        {
            mImageView.setOnClickListener((android.view.View.OnClickListener)getActivity());
        }
    }

    public void onCreate(Bundle bundle)
    {
        Object obj = null;
        super.onCreate(bundle);
        if (getArguments() != null)
        {
            bundle = getArguments().getString("extra_image_data");
        } else
        {
            bundle = null;
        }
        mImageUrl = bundle;
        if (getArguments() != null)
        {
            bundle = Integer.valueOf(getArguments().getInt("extra_layout_id"));
        } else
        {
            bundle = null;
        }
        mLayoutId = bundle.intValue();
        bundle = obj;
        if (getArguments() != null)
        {
            bundle = Integer.valueOf(getArguments().getInt("extra_imageview_id"));
        }
        mImageViewId = bundle.intValue();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        layoutinflater = layoutinflater.inflate(mLayoutId, viewgroup, false);
        mImageView = (ImageView)layoutinflater.findViewById(mImageViewId);
        return layoutinflater;
    }

    public void onDestroy()
    {
        super.onDestroy();
        if (mImageView != null)
        {
            ImageWorker.cancelWork(mImageView);
            mImageView.setImageDrawable(null);
        }
    }

    public void setImageFetcher(ImageFetcher imagefetcher)
    {
        mImageFetcher = imagefetcher;
    }
}
