// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.golfcourse.model.Game;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            ListPlayerFragment

class this._cls0
    implements android.view.yerFragment._cls1
{

    final ListPlayerFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", ListPlayerFragment.access$000(ListPlayerFragment.this));
        view.putExtra("BG_URL_EXTRA", ListPlayerFragment.access$100(ListPlayerFragment.this, getHoldActivity().getIntent()));
        if (ListPlayerFragment.access$200(ListPlayerFragment.this) != null)
        {
            view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.rs));
            if (ListPlayerFragment.access$200(ListPlayerFragment.this) != null && ListPlayerFragment.access$200(ListPlayerFragment.this).playerIdList != null)
            {
                long al[] = new long[ListPlayerFragment.access$200(ListPlayerFragment.this).playerIdList.size()];
                for (int i = 0; i < ListPlayerFragment.access$200(ListPlayerFragment.this).playerIdList.size(); i++)
                {
                    al[i] = ((Long)ListPlayerFragment.access$200(ListPlayerFragment.this).playerIdList.get(i)).longValue();
                }

                view.putExtra("except_players_id", al);
            }
            view.putExtra("TAB_FRAGMENT", "GOLF_SELECT_PLAYER_FRAGMENT");
            startFragment(com.biznessapps.layout.select_player_layout, view, 102);
            return;
        } else
        {
            view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.t.getString));
            view.putExtra("TAB_FRAGMENT", "GOLF_EDIT_PLAYER_FRAGMENT");
            startFragment(com.biznessapps.layout.edit_player_layout, view, 100);
            return;
        }
    }

    Activity()
    {
        this$0 = ListPlayerFragment.this;
        super();
    }
}
