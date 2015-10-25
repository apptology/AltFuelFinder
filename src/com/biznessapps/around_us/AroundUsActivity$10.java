// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsActivity

class this._cls0
    implements android.widget.ickListener
{

    final AroundUsActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (em)adapterview.getAdapter().getItem(i);
        AroundUsActivity.access$1400(AroundUsActivity.this, adapterview);
    }

    em()
    {
        this$0 = AroundUsActivity.this;
        super();
    }
}
