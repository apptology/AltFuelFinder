// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.news:
//            NewsFragment, SearchEntity

class val.isImageExist
    implements android.view.apter._cls2
{

    final val.arrowNavigationView this$1;
    final ImageView val$arrowNavigationView;
    final TextView val$descriptionView;
    final boolean val$isImageExist;
    final SearchEntity val$item;
    final ViewGroup val$nameDateContainer;

    public void onClick(View view)
    {
        if (StringUtils.isNotEmpty(val$item.getText()))
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
                cess._mth200(this._cls1.this, val$descriptionView, val$nameDateContainer, val$isImageExist, val$item.getText());
                val$arrowNavigationView.setBackgroundResource(com.biznessapps.layout.l.arrowNavigationView);
                val$arrowNavigationView.setTag(val$item.hashCode(), val$item);
            } else
            {
                cess._mth300(this._cls1.this, val$descriptionView, val$nameDateContainer, val$isImageExist, val$item.getText());
                val$arrowNavigationView.setBackgroundResource(com.biznessapps.layout.l.arrowNavigationView);
                val$arrowNavigationView.setTag(val$item.hashCode(), null);
            }
            CommonUtils.overrideImageColor(val$item.getItemTextColor(), val$arrowNavigationView.getBackground());
        }
    }

    ()
    {
        this$1 = final_;
        val$item = searchentity;
        val$arrowNavigationView = imageview;
        val$descriptionView = textview;
        val$nameDateContainer = viewgroup;
        val$isImageExist = Z.this;
        super();
    }
}
