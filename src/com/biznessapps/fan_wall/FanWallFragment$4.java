// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Intent;
import android.view.View;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanWallFragment, CommentEntity

class val.fanWallItem
    implements android.view.er
{

    final FanWallFragment this$0;
    final CommentEntity val$fanWallItem;
    final String val$uploadImageUrl;

    public void onClick(View view)
    {
        view = new com.biznessapps.gallery.init>();
        view.etFullUrl(val$uploadImageUrl);
        view.etInfo(val$fanWallItem.getComment());
        Object obj = new ArrayList();
        ((List) (obj)).add(view);
        GalleryManager.getInstance().setGalleryItems(((List) (obj)));
        obj = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
        ((Intent) (obj)).putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
        ((Intent) (obj)).putExtra("gallery_preview_extra", view);
        startActivity(((Intent) (obj)));
    }

    ity()
    {
        this$0 = final_fanwallfragment;
        val$uploadImageUrl = s;
        val$fanWallItem = CommentEntity.this;
        super();
    }
}
