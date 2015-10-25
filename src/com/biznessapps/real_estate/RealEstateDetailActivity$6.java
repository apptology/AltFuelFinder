// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.content.Intent;
import android.view.View;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import java.util.List;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateDetailActivity

class val.item
    implements android.view.tailActivity._cls6
{

    final RealEstateDetailActivity this$0;
    final com.biznessapps.gallery.y val$item;
    final List val$items;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
        GalleryManager.getInstance().setGalleryItems(val$items);
        view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
        view.putExtra("gallery_preview_extra", val$item);
        view.putExtra("gallery_current_position_extra", val$items.indexOf(val$item));
        startActivity(view);
    }

    ()
    {
        this$0 = final_realestatedetailactivity;
        val$items = list;
        val$item = com.biznessapps.gallery.y._cls6.val.item.this;
        super();
    }
}
