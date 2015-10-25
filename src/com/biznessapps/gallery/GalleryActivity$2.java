// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryActivity, GalleryData, GalleryPreviewActivity, GalleryManager

class this._cls0
    implements android.widget.ClickListener
{

    final GalleryActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (l >= 0L && l < (long)GalleryActivity.access$100(GalleryActivity.this).getItems().size())
        {
            GalleryActivity.access$202(GalleryActivity.this, (int)l);
            adapterview = (this._cls0)GalleryActivity.access$100(GalleryActivity.this).getItems().get(GalleryActivity.access$200(GalleryActivity.this));
            view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
            GalleryManager.getInstance().setGalleryItems(GalleryActivity.access$100(GalleryActivity.this).getItems());
            view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
            view.putExtra("gallery_preview_extra", adapterview);
            view.putExtra("gallery_current_position_extra", GalleryActivity.access$200(GalleryActivity.this));
            startActivity(view);
        }
    }

    vity()
    {
        this$0 = GalleryActivity.this;
        super();
    }
}
