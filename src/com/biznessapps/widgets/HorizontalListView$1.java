// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.database.DataSetObserver;

// Referenced classes of package com.biznessapps.widgets:
//            HorizontalListView

class this._cls0 extends DataSetObserver
{

    final HorizontalListView this$0;

    public void onChanged()
    {
        synchronized (HorizontalListView.this)
        {
            HorizontalListView.access$002(HorizontalListView.this, true);
        }
        invalidate();
        requestLayout();
        return;
        exception;
        horizontallistview;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onInvalidated()
    {
        HorizontalListView.access$100(HorizontalListView.this);
        invalidate();
        requestLayout();
    }

    ()
    {
        this$0 = HorizontalListView.this;
        super();
    }
}
