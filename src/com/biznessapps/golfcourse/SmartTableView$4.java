// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.database.DataSetObserver;

// Referenced classes of package com.biznessapps.golfcourse:
//            SmartTableView

class this._cls0 extends DataSetObserver
{

    final SmartTableView this$0;

    public void onChanged()
    {
        if (SmartTableView.access$300(SmartTableView.this))
        {
            SmartTableView.access$400(SmartTableView.this);
            return;
        } else
        {
            SmartTableView.access$500(SmartTableView.this);
            return;
        }
    }

    public void onInvalidated()
    {
        onChanged();
    }

    ()
    {
        this$0 = SmartTableView.this;
        super();
    }
}
