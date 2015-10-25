// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import com.biznessapps.golfcourse.model.Course;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment

class this._cls0
    implements android.view.ailFragment._cls3
{

    final HoleDetailFragment this$0;

    public void onClick(View view)
    {
        int _tmp = HoleDetailFragment.access$410(HoleDetailFragment.this);
        boolean flag;
        if (HoleDetailFragment.access$400(HoleDetailFragment.this) > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        HoleDetailFragment.access$502(HoleDetailFragment.this, HoleDetailFragment.access$600(HoleDetailFragment.this).getHole(HoleDetailFragment.access$400(HoleDetailFragment.this)));
        HoleDetailFragment.access$700(HoleDetailFragment.this);
        HoleDetailFragment.access$800(HoleDetailFragment.this);
    }

    ()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
