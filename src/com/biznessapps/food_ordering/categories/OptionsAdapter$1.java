// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.categories;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.ImageView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.food_ordering.entities.OrderOptionEntity;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.food_ordering.categories:
//            OptionsAdapter

class val.item
    implements android.view.ner
{

    final OptionsAdapter this$0;
    final ImageView val$checkView;
    final OrderOptionEntity val$item;

    public void onClick(View view)
    {
        boolean flag = true;
        if (val$checkView.getTag() == null)
        {
            val$checkView.setTag(Boolean.valueOf(true));
            val$checkView.setBackgroundColor(OptionsAdapter.access$100(OptionsAdapter.this).getButtonBgColor());
            val$checkView.setImageResource(com.biznessapps.layout.cked_icon);
            CommonUtils.overrideImageColor(OptionsAdapter.access$200(OptionsAdapter.this).getButtonTextColor(), val$checkView.getDrawable());
        } else
        {
            int i = getContext().getResources().getColor(com.biznessapps.layout.ackground);
            val$checkView.setBackgroundColor(i);
            val$checkView.setImageDrawable(null);
            val$checkView.setTag(null);
        }
        view = OptionsAdapter.access$300(OptionsAdapter.this);
        if (val$checkView.getTag() == null)
        {
            flag = false;
        }
        view.onClicked(flag, val$item);
    }

    ickListener()
    {
        this$0 = final_optionsadapter;
        val$checkView = imageview;
        val$item = OrderOptionEntity.this;
        super();
    }
}
