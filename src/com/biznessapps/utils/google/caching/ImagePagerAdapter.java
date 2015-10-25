// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentStatePagerAdapter;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageDetailFragment, ImageFetcher

public class ImagePagerAdapter extends FragmentStatePagerAdapter
{

    private ImageFetcher mImageFetcher;
    private String mImageUrls[];
    private int mImageViewId;
    private int mLayoutId;

    public ImagePagerAdapter(FragmentManager fragmentmanager, ImageFetcher imagefetcher, String as[], int i, int j)
    {
        super(fragmentmanager);
        mImageFetcher = imagefetcher;
        mImageUrls = as;
        mImageViewId = j;
        mLayoutId = i;
    }

    public int getCount()
    {
        return mImageUrls.length;
    }

    public Fragment getItem(int i)
    {
        return ImageDetailFragment.newInstance(mImageFetcher, mImageUrls[i], mLayoutId, mImageViewId);
    }
}
