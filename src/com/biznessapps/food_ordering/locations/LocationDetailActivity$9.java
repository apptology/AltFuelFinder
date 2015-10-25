// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.locations;

import android.content.Context;
import com.biznessapps.utils.ViewUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.locations:
//            LocationDetailActivity

class e extends com.biznessapps.food_ordering.tomRunnable
{

    final LocationDetailActivity this$0;
    final List val$orderedItems;

    public void run()
    {
        Context context;
label0:
        {
            context = getApplicationContext();
            if (context != null)
            {
                List list = getResulItems();
                if (val$orderedItems.size() != list.size())
                {
                    break label0;
                }
                LocationDetailActivity.access$1800(LocationDetailActivity.this);
            }
            return;
        }
        ViewUtils.showCustomToast(context, context.getString(com.biznessapps.layout.s_not_available));
    }

    e()
    {
        this$0 = final_locationdetailactivity;
        val$orderedItems = List.this;
        super();
    }
}
