// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.ImageButton;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.adapters.ImageAdapter;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.TabGallery;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryData, GalleryAdapter, GalleryPreviewActivity, GalleryManager

public class GalleryActivity extends CommonFragmentActivity
{

    private int currentPosition;
    private GalleryData galleryData;
    private AbstractAdapter imageAdapter;
    private ImageButton slideshowButton;

    public GalleryActivity()
    {
    }

    private void defineSpecifiImageIndex()
    {
        boolean flag = getIntent().getBooleanExtra("GALLERY_PRELOAD_IMAGE_EXTRA", false);
        String s = getIntent().getStringExtra("ITEM_ID");
        if (flag && StringUtils.isNotEmpty(s))
        {
            List list = galleryData.getItems();
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                GalleryData.Item item = (GalleryData.Item)iterator.next();
                if (item.getId().equals(s))
                {
                    currentPosition = list.indexOf(item);
                }
            } while (true);
        }
    }

    private AbstractAdapter getCoverFlowAdapter(Context context)
    {
        return new GalleryAdapter(context, galleryData.getItems(), com.biznessapps.layout.R.layout.coverflow_item_layout, true, settings);
    }

    private android.widget.AdapterView.OnItemClickListener getOnItemClickListener()
    {
        return new android.widget.AdapterView.OnItemClickListener() {

            final GalleryActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (l >= 0L && l < (long)galleryData.getItems().size())
                {
                    currentPosition = (int)l;
                    adapterview = (GalleryData.Item)galleryData.getItems().get(currentPosition);
                    view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
                    GalleryManager.getInstance().setGalleryItems(galleryData.getItems());
                    view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                    view.putExtra("gallery_preview_extra", adapterview);
                    view.putExtra("gallery_current_position_extra", currentPosition);
                    startActivity(view);
                }
            }

            
            {
                this$0 = GalleryActivity.this;
                super();
            }
        };
    }

    private void showPreviewItems()
    {
        Intent intent = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
        GalleryManager.getInstance().setGalleryItems(galleryData.getItems());
        intent.putExtra("SLIDESHOW_MODE_EXTRA", true);
        startActivity(intent);
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.gallery_layout;
    }

    protected boolean hasTitleBar()
    {
        return true;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        galleryData = GalleryManager.getInstance().getGalleryData();
        slideshowButton = (ImageButton)findViewById(com.biznessapps.layout.R.id.slideshow_button);
        slideshowButton.setVisibility(0);
        slideshowButton.setOnClickListener(new android.view.View.OnClickListener() {

            final GalleryActivity this$0;

            public void onClick(View view)
            {
                showPreviewItems();
            }

            
            {
                this$0 = GalleryActivity.this;
                super();
            }
        });
        defineSpecifiImageIndex();
        if (galleryData.isUseCoverflow())
        {
            bundle = (TabGallery)findViewById(com.biznessapps.layout.R.id.gallery_view_coverflow);
            imageAdapter = getCoverFlowAdapter(getApplicationContext());
            bundle.setAdapter(imageAdapter);
            bundle.setSelection(currentPosition);
            bundle.setOnItemClickListener(getOnItemClickListener());
            bundle.setVisibility(0);
        } else
        {
            bundle = (GridView)findViewById(com.biznessapps.layout.R.id.gallery_view);
            bundle.setAdapter(new ImageAdapter(getApplicationContext(), galleryData.getItems(), com.biznessapps.layout.R.layout.gallery_item_layout, settings));
            bundle.setSelection(currentPosition);
            bundle.setOnItemClickListener(getOnItemClickListener());
            bundle.setVisibility(0);
        }
        if (StringUtils.isNotEmpty(galleryData.getBackground()))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(galleryData.getBackground(), findViewById(com.biznessapps.layout.R.id.gallery_root), settings);
        } else
        {
            ViewUtils.setRootBgColor(findViewById(com.biznessapps.layout.R.id.gallery_root), settings);
        }
        ViewUtils.showEmailCollectPropmtIfNeeded(this, tabId);
    }





/*
    static int access$202(GalleryActivity galleryactivity, int i)
    {
        galleryactivity.currentPosition = i;
        return i;
    }

*/
}
