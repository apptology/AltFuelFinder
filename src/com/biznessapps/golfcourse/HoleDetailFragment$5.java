// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.golfcourse.model.Game;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment, ScoreBoardActivity

class this._cls0
    implements android.view.ailFragment._cls5
{

    final HoleDetailFragment this$0;

    public void onClick(View view)
    {
        HoleDetailFragment.access$200(HoleDetailFragment.this).isFinished = true;
        popupFragment(com.biznessapps.layout.board_screen_layout);
        view = new Intent(getApplicationContext(), com/biznessapps/golfcourse/ScoreBoardActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", HoleDetailFragment.access$900(HoleDetailFragment.this));
        view.putExtra("BG_URL_EXTRA", HoleDetailFragment.access$1000(HoleDetailFragment.this, getHoldActivity().getIntent()));
        view.putExtra("current_game_id", HoleDetailFragment.access$200(HoleDetailFragment.this).id);
        view.putExtra("stay_on_scoreboard", true);
        view.setFlags(0x1000000);
        view.addFlags(0x4000000);
        startFragment(com.biznessapps.layout.board_screen_layout, view);
    }

    Activity()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
