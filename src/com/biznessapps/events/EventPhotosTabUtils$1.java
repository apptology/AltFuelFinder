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

static final class val.photosLabel extends AsyncTask
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
            val$cacher.getAppCode(), val$eventId, val$tabId
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
            LinearLayout linearlayout = (LinearLayout)val$rootContainer.findViewById(com.biznessapps.layout.val.rootContainer);
            linearlayout.removeAllViews();
            Iterator iterator = items.iterator();
            do
            {
                i = j;
                if (!iterator.hasNext())
                {
                    break;
                }
                final com.biznessapps.gallery.er.ImageLoadParams item = (com.biznessapps.gallery.al.rootContainer)iterator.next();
                ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(val$appContext, com.biznessapps.layout.layout);
                LoaderImageView loaderimageview = (LoaderImageView)viewgroup.findViewById(com.biznessapps.layout.layout);
                loaderimageview.setImageBitmap(null, true);
                Object obj1 = item.llUrl();
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
                obj1 = new com.biznessapps.utils.google.caching.arams();
                ((com.biznessapps.utils.google.caching.arams) (obj1)).setView(null);
                ((com.biznessapps.utils.google.caching.arams) (obj1)).setTint(null);
                ((com.biznessapps.utils.google.caching.arams) (obj1)).setUrl(((String) (obj)));
                ((com.biznessapps.utils.google.caching.arams) (obj1)).setImageSrc(true);
                ((com.biznessapps.utils.google.caching.arams) (obj1)).setImageFormType(2);
                ((com.biznessapps.utils.google.caching.arams) (obj1)).setImageType(1);
                loaderimageview.setImageDrawable(((String) (obj)), ((com.biznessapps.utils.google.caching.arams) (obj1)));
                loaderimageview.setOnClickListener(new android.view.View.OnClickListener() {

                    final EventPhotosTabUtils._cls1 this$0;
                    final com.biznessapps.gallery.GalleryData.Item val$item;
                    final List val$items;

                    public void onClick(View view)
                    {
                        view = new Intent(appContext, com/biznessapps/gallery/GalleryPreviewActivity);
                        GalleryManager.getInstance().setGalleryItems(items);
                        view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                        view.putExtra("gallery_preview_extra", item);
                        view.putExtra("gallery_current_position_extra", items.indexOf(item));
                        activity.startActivity(view);
                    }

            
            {
                this$0 = EventPhotosTabUtils._cls1.this;
                items = list;
                item = item1;
                super();
            }
                });
                linearlayout.addView(viewgroup);
            } while (true);
        }
        val$sharedPhotoTexView.setText(String.format("%d %s", new Object[] {
            Integer.valueOf(i), val$appContext.getString(com.biznessapps.layout.val.appContext)
        }));
        val$photosLabel.setText(String.format("%d %s", new Object[] {
            Integer.valueOf(i), val$appContext.getString(com.biznessapps.layout.val.appContext)
        }));
    }

    _cls1.val.item(CachingManager cachingmanager, String s, String s1, ViewGroup viewgroup, Context context, Activity activity1, TextView textview, 
            TextView textview1)
    {
        val$cacher = cachingmanager;
        val$eventId = s;
        val$tabId = s1;
        val$rootContainer = viewgroup;
        val$appContext = context;
        val$activity = activity1;
        val$sharedPhotoTexView = textview;
        val$photosLabel = textview1;
        super();
    }
}
