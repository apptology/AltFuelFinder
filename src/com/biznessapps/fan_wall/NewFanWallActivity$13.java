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
//            NewFanWallActivity, CommentEntity

class this._cls0
    implements android.widget.kListener
{

    final NewFanWallActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (CommentEntity)adapterview.getAdapter().getItem(i);
        if (adapterview != null)
        {
            view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FanWallViewController"));
            view.putExtra("parent_id", adapterview.getId());
            String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
            view.putExtra("TAB_FRAGMENT", "FanWallViewController");
            view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.etString));
            view.putExtra("HAS_CHILDS", false);
            view.putExtra("USE_V2_API", true);
            view.putExtra("ITEM_EXTRA", adapterview);
            view.putExtra("TAB_SPECIAL_ID", s);
            startActivityForResult(view, 0);
        }
    }

    ()
    {
        this$0 = NewFanWallActivity.this;
        super();
    }
}
