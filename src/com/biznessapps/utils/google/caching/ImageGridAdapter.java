// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import java.util.List;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageFetcher

public class ImageGridAdapter extends BaseAdapter
{

    private int mActionBarHeight;
    private final Context mContext;
    private ImageFetcher mImageFetcher;
    private List mImageUrls;
    private android.widget.AbsListView.LayoutParams mImageViewLayoutParams;
    private int mItemHeight;
    private int mNumColumns;

    public ImageGridAdapter(Context context, ImageFetcher imagefetcher, List list)
    {
        mItemHeight = 0;
        mNumColumns = 0;
        mActionBarHeight = 0;
        mImageFetcher = imagefetcher;
        mImageUrls = list;
        mContext = context;
        mImageViewLayoutParams = new android.widget.AbsListView.LayoutParams(-1, -1);
    }

    public int getCount()
    {
        return mImageUrls.size() + mNumColumns;
    }

    public Object getItem(int i)
    {
        if (i < mNumColumns)
        {
            return null;
        } else
        {
            return (String)mImageUrls.get(i - mNumColumns);
        }
    }

    public long getItemId(int i)
    {
        if (i < mNumColumns)
        {
            return 0L;
        } else
        {
            return (long)(i - mNumColumns);
        }
    }

    public int getItemViewType(int i)
    {
        return i >= mNumColumns ? 0 : 1;
    }

    public int getNumColumns()
    {
        return mNumColumns;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (i < mNumColumns)
        {
            viewgroup = view;
            if (view == null)
            {
                viewgroup = new View(mContext);
            }
            viewgroup.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, mActionBarHeight));
            return viewgroup;
        }
        if (view == null)
        {
            view = new ImageView(mContext);
            view.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
            view.setLayoutParams(mImageViewLayoutParams);
        } else
        {
            view = (ImageView)view;
        }
        if (view.getLayoutParams().height != mItemHeight)
        {
            view.setLayoutParams(mImageViewLayoutParams);
        }
        mImageFetcher.loadGalleryImage((String)mImageUrls.get(i - mNumColumns), view);
        return view;
    }

    public int getViewTypeCount()
    {
        return 2;
    }

    public boolean hasStableIds()
    {
        return true;
    }

    public void setItemHeight(int i)
    {
        if (i == mItemHeight)
        {
            return;
        } else
        {
            mItemHeight = i;
            mImageViewLayoutParams = new android.widget.AbsListView.LayoutParams(-1, mItemHeight);
            mImageFetcher.setImageSize(i);
            notifyDataSetChanged();
            return;
        }
    }

    public void setNumColumns(int i)
    {
        mNumColumns = i;
    }
}
