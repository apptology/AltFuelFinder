// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.utils.ViewUtils;
import junit.framework.Assert;
import net.simonvt.menudrawer.MenuDrawer;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnMenuSelectListener, ScoreBoardActivity

class this._cls0
    implements OnMenuSelectListener
{

    final ScoreBoardActivity this$0;

    public void onMenuSelected(int i)
    {
        Intent intent;
        intent = new Intent(ScoreBoardActivity.this, com/biznessapps/common/activities/SingleFragmentActivity);
        intent.putExtra("TAB_UNIQUE_ID", getTabId());
        intent.putExtra("TAB_SPECIAL_ID", ScoreBoardActivity.access$000(ScoreBoardActivity.this));
        intent.putExtra("BG_URL_EXTRA", ScoreBoardActivity.access$100(ScoreBoardActivity.this));
        popupFragment(com.biznessapps.layout.board_screen_layout);
        if (i != com.biznessapps.layout.board_screen_layout) goto _L2; else goto _L1
_L1:
        Hole hole;
        boolean flag;
        if (ScoreBoardActivity.access$200(ScoreBoardActivity.this).recentHoleNumber != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        hole = ScoreBoardActivity.access$200(ScoreBoardActivity.this).getCourse().getHole(ScoreBoardActivity.access$200(ScoreBoardActivity.this).recentHoleNumber);
        intent.putExtra("TAB_FRAGMENT", "GOLF_DETAIL_HOLE_FRAGMENT");
        intent.putExtra("game_id", ScoreBoardActivity.access$200(ScoreBoardActivity.this).id);
        intent.putExtra("hole_number", hole.holeNumber);
        intent.putExtra("tab_idx", com.biznessapps.layout.mber);
        startFragment(com.biznessapps.layout.hole_details_layout, intent, 104);
_L4:
        mMenuDrawer.closeMenu(true);
        return;
_L2:
        if (i == com.biznessapps.layout.y.mMenuDrawer)
        {
            ViewUtils.showDialog(ScoreBoardActivity.this, null, getString(com.biznessapps.layout.ame), new Runnable() {

                final ScoreBoardActivity._cls2 this$1;

                public void run()
                {
                    setResult(200);
                    onMenuSelected(com.biznessapps.layout.R.id.tvMainMenu);
                }

            
            {
                this$1 = ScoreBoardActivity._cls2.this;
                super();
            }
            }, true);
        } else
        if (i == com.biznessapps.layout.y._fld2)
        {
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.y.getString));
            intent.putExtra("TAB_FRAGMENT", "GOLF_ADD_NOTE_FRAGMENT");
            intent.putExtra("note", ScoreBoardActivity.access$200(ScoreBoardActivity.this).notes);
            startFragment(com.biznessapps.layout.add_note_layout, intent, 102);
        } else
        if (i == com.biznessapps.layout.add_note_layout)
        {
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.y.getString));
            intent.putExtra("TAB_FRAGMENT", "GOLF_LIST_PLAYER_FRAGMENT");
            intent.putExtra("selected_game_id", ScoreBoardActivity.access$200(ScoreBoardActivity.this).id);
            startFragment(com.biznessapps.layout.list_player_layout, intent, 101);
        } else
        if (i == com.biznessapps.layout.list_player_layout)
        {
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.y.getString));
            intent.putExtra("TAB_FRAGMENT", "GOLF_OVERVIEW_FRAGMENT");
            intent.putExtra("game_id", ScoreBoardActivity.access$200(ScoreBoardActivity.this).id);
            startFragment(com.biznessapps.layout.overview_layout, intent, 103);
        } else
        if (i == com.biznessapps.layout.overview_layout)
        {
            finish();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    _cls1.this._cls1()
    {
        this$0 = ScoreBoardActivity.this;
        super();
    }
}
