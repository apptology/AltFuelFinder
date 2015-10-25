// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.golfcourse.model.Course;
import java.io.Serializable;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            GameListFragment

class this._cls0
    implements android.view.r
{

    final GameListFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", GameListFragment.access$200(GameListFragment.this));
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.t.getString));
        view.putExtra("BG_URL_EXTRA", defineBgUrl());
        view.putExtra("TAB_FRAGMENT", "GOLF_ADD_GAME_FRAGMENT");
        if (GameListFragment.access$300(GameListFragment.this) != null && GameListFragment.access$300(GameListFragment.this).size() == 1 && ((Course)GameListFragment.access$300(GameListFragment.this).get(0)).isValid())
        {
            view.putExtra("course", (Serializable)GameListFragment.access$300(GameListFragment.this).get(0));
        }
        startActivityForResult(view, 101);
    }

    ntActivity()
    {
        this$0 = GameListFragment.this;
        super();
    }
}
