// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Intent;
import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.api.ActivitySelector;

// Referenced classes of package com.biznessapps.fan_wall:
//            FanWallFragment, CommentEntity

class this._cls0
    implements android.widget.ClickListener
{

    final FanWallFragment this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        view = (CommentEntity)adapterview.getAdapter().getItem(i);
        if (view != null)
        {
            adapterview = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FanWallViewController"));
            adapterview.putExtra("parent_id", view.getId());
            adapterview.putExtra("ITEM_EXTRA", view);
            view = getIntent().getStringExtra("TAB_SPECIAL_ID");
            adapterview.putExtra("TAB_FRAGMENT", "FanWallViewController");
            adapterview.putExtra("HAS_CHILDS", false);
            adapterview.putExtra("TAB_SPECIAL_ID", view);
            adapterview.putExtra("TAB_LABEL", getString(com.biznessapps.layout.getString));
            startActivityForResult(adapterview, 0);
        }
    }

    ner()
    {
        this$0 = FanWallFragment.this;
        super();
    }
}
