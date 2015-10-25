// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import android.widget.Adapter;
import android.widget.AdapterView;
import com.biznessapps.widgets.RefreshableListView;

// Referenced classes of package com.biznessapps.golfcourse:
//            GameListFragment, GameListLayoutItem

class this._cls0
    implements android.widget.ongClickListener
{

    final GameListFragment this$0;

    public boolean onItemLongClick(AdapterView adapterview, View view, int i, long l)
    {
        adapterview = (GameListLayoutItem)adapterview.getAdapter().getItem(i);
        GameListFragment.access$002(GameListFragment.this, ((GameListLayoutItem) (adapterview)).game);
        GameListFragment.access$100(GameListFragment.this).showContextMenu();
        return true;
    }

    ener()
    {
        this$0 = GameListFragment.this;
        super();
    }
}
