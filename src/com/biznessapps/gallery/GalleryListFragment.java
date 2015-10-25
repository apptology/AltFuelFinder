// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragmentNew;
import com.biznessapps.flickr.GalleryAlbum;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.RefreshableListView;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryActivity, GalleryData, GalleryListAdapter, GalleryManager

public class GalleryListFragment extends CommonListFragmentNew
{

    private GalleryListAdapter adapter;
    private GalleryData galleryData;
    private GalleryAlbum preLoadedAlbum;

    public GalleryListFragment()
    {
    }

    private void openGalleryAlbum(GalleryAlbum galleryalbum, boolean flag, boolean flag1)
    {
        Intent intent = new Intent(getHoldActivity().getApplicationContext(), com/biznessapps/gallery/GalleryActivity);
        if (galleryalbum.getItems() != null)
        {
            galleryData.setItems(galleryalbum.getItems());
            galleryData.setUseCoverflow(galleryalbum.isUseCoverflow());
        } else
        {
            galleryData.setImageItems(galleryalbum.getUrls());
        }
        intent.putExtras(getHoldActivity().getIntent());
        intent.putExtra("GALLERY_PRELOAD_IMAGE_EXTRA", flag);
        if (flag1)
        {
            intent.putExtra("TAB_LABEL", getIntent().getStringExtra("TAB_LABEL"));
        } else
        {
            intent.putExtra("TAB_LABEL", galleryalbum.getTitle());
        }
        startActivity(intent);
    }

    private void plugListView(Activity activity)
    {
        findPreloadedItem(items, sectionId);
        if (items == null || items.isEmpty())
        {
            break MISSING_BLOCK_LABEL_193;
        }
        if (items.size() != 1) goto _L2; else goto _L1
_L1:
        openGalleryAlbum((GalleryAlbum)items.get(0), false, true);
        getHoldActivity().finish();
_L4:
        return;
_L2:
        LinkedList linkedlist = new LinkedList();
        for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(getWrappedItem((GalleryAlbum)iterator.next(), linkedlist))) { }
        adapter = new GalleryListAdapter(activity.getApplicationContext(), linkedlist, settings);
        listView.setAdapter(adapter);
        initListViewListener();
        if (preLoadedAlbum == null || !preLoadedAlbum.isUseAgain()) goto _L4; else goto _L3
_L3:
        openGalleryAlbum(preLoadedAlbum, true, false);
        preLoadedAlbum.setUseAgain(false);
        return;
        ViewUtils.showNoDataToast(activity);
        return;
    }

    protected boolean canUseCachedData()
    {
        galleryData = GalleryManager.getInstance().getGalleryData();
        items = galleryData.getAlbums();
        return true;
    }

    protected String defineBgUrl(Intent intent)
    {
        String s1 = galleryData.getBackground();
        String s = s1;
        if (StringUtils.isEmpty(s1))
        {
            s = super.defineBgUrl(intent);
        }
        return s;
    }

    protected void findPreloadedItem(List list, String s)
    {
label0:
        {
            if (list == null || !StringUtils.isNotEmpty(s))
            {
                break label0;
            }
            list = list.iterator();
            GalleryAlbum galleryalbum;
            do
            {
                if (!list.hasNext())
                {
                    break label0;
                }
                galleryalbum = (GalleryAlbum)list.next();
            } while (!galleryalbum.getId().equalsIgnoreCase(s) || preLoadedAlbum != null);
            preLoadedAlbum = galleryalbum;
            preLoadedAlbum.setUseAgain(true);
        }
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        openGalleryAlbum((GalleryAlbum)adapterview.getAdapter().getItem(i), false, false);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }
}
