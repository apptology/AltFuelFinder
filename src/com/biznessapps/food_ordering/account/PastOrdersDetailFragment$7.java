// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import com.biznessapps.food_ordering.FOUtils;

// Referenced classes of package com.biznessapps.food_ordering.account:
//            PastOrdersDetailFragment

class this._cls0
    implements android.view.stOrdersDetailFragment._cls7
{

    final PastOrdersDetailFragment this$0;

    public void onClick(View view)
    {
        int i = 3;
        boolean flag = false;
        boolean flag1 = FOUtils.updateButtons(getApplicationContext(), PastOrdersDetailFragment.access$900(PastOrdersDetailFragment.this), new Button[] {
            PastOrdersDetailFragment.access$1000(PastOrdersDetailFragment.this), PastOrdersDetailFragment.access$1100(PastOrdersDetailFragment.this), PastOrdersDetailFragment.access$1200(PastOrdersDetailFragment.this)
        });
        view = PastOrdersDetailFragment.this;
        if (!flag1)
        {
            i = 0;
        }
        PastOrdersDetailFragment.access$502(view, i);
        if (flag1)
        {
            PastOrdersDetailFragment.access$1300(PastOrdersDetailFragment.this);
        }
        view = PastOrdersDetailFragment.access$1400(PastOrdersDetailFragment.this);
        if (flag1)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view.setVisibility(i);
        view = PastOrdersDetailFragment.access$1500(PastOrdersDetailFragment.this);
        if (flag1)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 8;
        }
        view.setVisibility(i);
    }

    ()
    {
        this$0 = PastOrdersDetailFragment.this;
        super();
    }
}
