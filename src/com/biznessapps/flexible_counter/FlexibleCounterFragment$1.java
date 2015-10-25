// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flexible_counter;

import android.view.View;
import com.biznessapps.utils.ViewUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.flexible_counter:
//            FlexibleCounterFragment, StatFieldsEntity

class this._cls0
    implements android.view.leCounterFragment._cls1
{

    final FlexibleCounterFragment this$0;

    public void onClick(View view)
    {
        Object obj = new StringBuilder();
        if (FlexibleCounterFragment.access$000(FlexibleCounterFragment.this).getMessage() == null)
        {
            view = " ";
        } else
        {
            view = FlexibleCounterFragment.access$000(FlexibleCounterFragment.this).getMessage();
        }
        ((StringBuilder) (obj)).append(view).append("\n").append("\n");
        view = FlexibleCounterFragment.access$000(FlexibleCounterFragment.this).getFields();
        if (view != null && view.size() > 0)
        {
            for (int i = 0; i < view.size(); i++)
            {
                ((StringBuilder) (obj)).append((String)view.get(i)).append("        ").append(FlexibleCounterFragment.access$100(FlexibleCounterFragment.this).get(i)).append("\n");
            }

        }
        ((StringBuilder) (obj)).append("\n");
        view = getHoldActivity();
        String s = FlexibleCounterFragment.access$000(FlexibleCounterFragment.this).getEmail();
        obj = ((StringBuilder) (obj)).toString();
        ViewUtils.email(view, new String[] {
            s
        }, ((String) (obj)));
    }

    ()
    {
        this$0 = FlexibleCounterFragment.this;
        super();
    }
}
