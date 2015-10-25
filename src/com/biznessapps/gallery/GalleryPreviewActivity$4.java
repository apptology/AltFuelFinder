// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.biznessapps.widgets.ExtendedViewPager;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryPreviewActivity

class this._cls0 extends Handler
{

    final GalleryPreviewActivity this$0;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            return;

        case 1: // '\001'
            GalleryPreviewActivity.access$200(GalleryPreviewActivity.this).setCurrentItem(GalleryPreviewActivity.access$500(GalleryPreviewActivity.this));
            break;
        }
        GalleryPreviewActivity.access$600(GalleryPreviewActivity.this, 5000);
        if (GalleryPreviewActivity.access$500(GalleryPreviewActivity.this) < GalleryPreviewActivity.access$300(GalleryPreviewActivity.this).size() - 1)
        {
            int _tmp = GalleryPreviewActivity.access$508(GalleryPreviewActivity.this);
            return;
        } else
        {
            GalleryPreviewActivity.access$502(GalleryPreviewActivity.this, 0);
            return;
        }
    }

    (Looper looper)
    {
        this$0 = GalleryPreviewActivity.this;
        super(looper);
    }
}
