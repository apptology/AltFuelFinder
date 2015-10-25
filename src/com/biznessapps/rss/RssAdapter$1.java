// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.rss;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.rss:
//            RssAdapter, RssEntity

class val.isImageExist
    implements android.view.istener
{

    final RssAdapter this$0;
    final ImageView val$arrowNavigationView;
    final TextView val$dateView;
    final boolean val$isImageExist;
    final RssEntity val$item;
    final TextView val$summaryView;

    public void onClick(View view)
    {
        boolean flag;
        if (val$arrowNavigationView.getTag(val$item.hashCode()) == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            RssAdapter.access$000(RssAdapter.this, val$summaryView, val$dateView, val$isImageExist, val$item.getSummary());
            val$arrowNavigationView.setBackgroundResource(com.biznessapps.layout.row_up);
            val$arrowNavigationView.setTag(val$item.hashCode(), val$item);
        } else
        {
            RssAdapter.access$100(RssAdapter.this, val$summaryView, val$dateView, val$isImageExist, val$item.getSummary());
            val$arrowNavigationView.setBackgroundResource(com.biznessapps.layout.row_down);
            val$arrowNavigationView.setTag(val$item.hashCode(), null);
        }
        CommonUtils.overrideImageColor(val$item.getItemTextColor(), val$arrowNavigationView.getBackground());
    }

    ()
    {
        this$0 = final_rssadapter;
        val$arrowNavigationView = imageview;
        val$item = rssentity;
        val$summaryView = textview;
        val$dateView = textview1;
        val$isImageExist = Z.this;
        super();
    }
}
