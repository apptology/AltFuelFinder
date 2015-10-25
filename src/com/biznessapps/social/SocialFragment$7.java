// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class this._cls0
    implements android.widget.mClickListener
{

    final SocialFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (cialItem)adapterview.getAdapter().getItem(i);
        SocialFragment.access$400(SocialFragment.this, adapterview);
    }

    cialItem()
    {
        this$0 = SocialFragment.this;
        super();
    }
}
