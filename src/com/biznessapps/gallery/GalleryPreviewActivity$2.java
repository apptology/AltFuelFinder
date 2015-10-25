// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.view.View;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.SmartWebView;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryPreviewActivity

class val.imageTextWebView
    implements android.view.Activity._cls2
{

    final GalleryPreviewActivity this$0;
    final SmartWebView val$imageTextWebView;

    public void onClick(View view)
    {
        if (StringUtils.isNotEmpty(((val.imageTextWebView)view.getTag()).imageTextWebView()) && val$imageTextWebView.getVisibility() == 8)
        {
            val$imageTextWebView.setVisibility(0);
            return;
        } else
        {
            val$imageTextWebView.setVisibility(8);
            return;
        }
    }

    ()
    {
        this$0 = final_gallerypreviewactivity;
        val$imageTextWebView = SmartWebView.this;
        super();
    }
}
