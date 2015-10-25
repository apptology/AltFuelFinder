// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.email_photo;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.storage.StorageKeeper;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.email_photo:
//            EmailPhotoFragment

class this._cls0
    implements android.widget.ckListener
{

    final EmailPhotoFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
        view = new ArrayList();
        com.biznessapps.gallery.t._cls1 _lcls1;
        for (Iterator iterator = StorageKeeper.instance().getEmailedPhotos().iterator(); iterator.hasNext(); view.add(_lcls1))
        {
            String s = (String)iterator.next();
            _lcls1 = new com.biznessapps.gallery.t>();
            _lcls1.ullUrl(s);
            _lcls1.sFile(true);
        }

        GalleryManager.getInstance().setGalleryItems(view);
        adapterview.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
        adapterview.putExtra("gallery_preview_extra", (Serializable)view.get(i));
        adapterview.putExtra("gallery_current_position_extra", i);
        startActivity(adapterview);
    }

    ()
    {
        this$0 = EmailPhotoFragment.this;
        super();
    }
}
