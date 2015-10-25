// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.graphics.Point;
import android.view.View;
import java.util.Hashtable;

// Referenced classes of package com.biznessapps.golfcourse:
//            SmartTableView, OnCellClickListener

class this._cls0
    implements android.view.ner
{

    final SmartTableView this$0;

    public void onClick(View view)
    {
        view = (Point)SmartTableView.access$100(SmartTableView.this).get(view);
        if (SmartTableView.access$200(SmartTableView.this) != null)
        {
            SmartTableView.access$200(SmartTableView.this).onCellClicked(((Point) (view)).x, ((Point) (view)).y);
        }
    }

    er()
    {
        this$0 = SmartTableView.this;
        super();
    }
}
