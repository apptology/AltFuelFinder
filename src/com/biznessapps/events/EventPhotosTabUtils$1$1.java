// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.LoaderImageView;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.events:
//            EventPhotosTabUtils

class val.item
    implements android.view.Utils._cls1._cls1
{

    final l.activity this$0;
    final com.biznessapps.gallery..activity val$item;
    final List val$items;

    public void onClick(View view)
    {
        view = new Intent(appContext, com/biznessapps/gallery/GalleryPreviewActivity);
        GalleryManager.getInstance().setGalleryItems(val$items);
        view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
        view.putExtra("gallery_preview_extra", val$item);
        view.putExtra("gallery_current_position_extra", val$items.indexOf(val$item));
        activity.startActivity(view);
    }

    l.photosLabel()
    {
        this$0 = final_photoslabel;
        val$items = list;
        val$item = com.biznessapps.gallery.al.item.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/events/EventPhotosTabUtils$1

/* anonymous class */
    static final class EventPhotosTabUtils._cls1 extends AsyncTask
    {

        final Activity val$activity;
        final Context val$appContext;
        final CachingManager val$cacher;
        final String val$eventId;
        final TextView val$photosLabel;
        final ViewGroup val$rootContainer;
        final TextView val$sharedPhotoTexView;
        final String val$tabId;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((Void[])aobj);
        }

        protected transient List doInBackground(Void avoid[])
        {
            avoid = String.format("photo_list.php?app_code=%s&id=%s&tab_id=%s", new Object[] {
                cacher.getAppCode(), eventId, tabId
            });
            return JsonParser.parsePhotos(DataSource.getInstance().getData(avoid));
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((List)obj);
        }

        protected void onPostExecute(final List items)
        {
            super.onPostExecute(items);
            int i = 0;
            if (items != null)
            {
                int j = items.size();
                LinearLayout linearlayout = (LinearLayout)rootContainer.findViewById(com.biznessapps.layout.R.id.gallery_view);
                linearlayout.removeAllViews();
                Iterator iterator = items.iterator();
                do
                {
                    i = j;
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    com.biznessapps.gallery.GalleryData.Item item1 = (com.biznessapps.gallery.GalleryData.Item)iterator.next();
                    ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(appContext, com.biznessapps.layout.R.layout.gallery_item_layout);
                    LoaderImageView loaderimageview = (LoaderImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.image_view);
                    loaderimageview.setImageBitmap(null, true);
                    Object obj1 = item1.getFullUrl();
                    Object obj = obj1;
                    if (obj1 != null)
                    {
                        if (((String) (obj1)).contains("?"))
                        {
                            obj = (new StringBuilder()).append(((String) (obj1))).append("&width=256").toString();
                        } else
                        {
                            obj = (new StringBuilder()).append(((String) (obj1))).append("?width=256").toString();
                        }
                    }
                    obj1 = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setView(null);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setTint(null);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setUrl(((String) (obj)));
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setImageSrc(true);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setImageFormType(2);
                    ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)).setImageType(1);
                    loaderimageview.setImageDrawable(((String) (obj)), ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj1)));
                    loaderimageview.setOnClickListener(item1. new EventPhotosTabUtils._cls1._cls1());
                    linearlayout.addView(viewgroup);
                } while (true);
            }
            sharedPhotoTexView.setText(String.format("%d %s", new Object[] {
                Integer.valueOf(i), appContext.getString(com.biznessapps.layout.R.string.photos)
            }));
            photosLabel.setText(String.format("%d %s", new Object[] {
                Integer.valueOf(i), appContext.getString(com.biznessapps.layout.R.string.photos)
            }));
        }

            
            {
                cacher = cachingmanager;
                eventId = s;
                tabId = s1;
                rootContainer = viewgroup;
                appContext = context;
                activity = activity1;
                sharedPhotoTexView = textview;
                photosLabel = textview1;
                super();
            }
    }

}
