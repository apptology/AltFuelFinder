// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.biznessapps.gallery.GalleryData;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import java.util.List;

// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallActivity

class val.galleryData
    implements android.widget.kListener
{

    final NewFanWallActivity this$0;
    final GalleryData val$galleryData;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (i >= 0 && i < val$galleryData.getItems().size())
        {
            adapterview = (com.biznessapps.gallery..val.galleryData)val$galleryData.getItems().get(i);
            view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
            GalleryManager.getInstance().setGalleryItems(val$galleryData.getItems());
            view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
            view.putExtra("gallery_preview_extra", adapterview);
            view.putExtra("gallery_current_position_extra", i);
            startActivity(view);
        }
    }

    ()
    {
        this$0 = final_newfanwallactivity;
        val$galleryData = GalleryData.this;
        super();
    }
}
