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
//            ScoreBoardActivity, OnMenuSelectListener

class this._cls1
    implements Runnable
{

    final MenuSelected this$1;

    public void run()
    {
        setResult(200);
        MenuSelected(com.biznessapps.layout._cls2.onMenuSelected);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/golfcourse/ScoreBoardActivity$2

/* anonymous class */
    class ScoreBoardActivity._cls2
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
            popupFragment(com.biznessapps.layout.R.layout.golf_course_board_screen_layout);
            if (i != com.biznessapps.layout.R.id.tvCurrentGame) goto _L2; else goto _L1
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
            intent.putExtra("tab_idx", com.biznessapps.layout.R.id.btScore);
            startFragment(com.biznessapps.layout.R.layout.golf_course_hole_details_layout, intent, 104);
_L4:
            mMenuDrawer.closeMenu(true);
            return;
_L2:
            if (i == com.biznessapps.layout.R.id.tvNewGame)
            {
                ViewUtils.showDialog(ScoreBoardActivity.this, null, getString(com.biznessapps.layout.R.string.golf_leave_game), new ScoreBoardActivity._cls2._cls1(), true);
            } else
            if (i == com.biznessapps.layout.R.id.tvNotes)
            {
                intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.add_note));
                intent.putExtra("TAB_FRAGMENT", "GOLF_ADD_NOTE_FRAGMENT");
                intent.putExtra("note", ScoreBoardActivity.access$200(ScoreBoardActivity.this).notes);
                startFragment(com.biznessapps.layout.R.layout.golf_course_add_note_layout, intent, 102);
            } else
            if (i == com.biznessapps.layout.R.id.tvPlayers)
            {
                intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.players));
                intent.putExtra("TAB_FRAGMENT", "GOLF_LIST_PLAYER_FRAGMENT");
                intent.putExtra("selected_game_id", ScoreBoardActivity.access$200(ScoreBoardActivity.this).id);
                startFragment(com.biznessapps.layout.R.layout.golf_course_list_player_layout, intent, 101);
            } else
            if (i == com.biznessapps.layout.R.id.tvOverview)
            {
                intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.overview));
                intent.putExtra("TAB_FRAGMENT", "GOLF_OVERVIEW_FRAGMENT");
                intent.putExtra("game_id", ScoreBoardActivity.access$200(ScoreBoardActivity.this).id);
                startFragment(com.biznessapps.layout.R.layout.golf_course_overview_layout, intent, 103);
            } else
            if (i == com.biznessapps.layout.R.id.tvMainMenu)
            {
                finish();
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

            
            {
                this$0 = ScoreBoardActivity.this;
                super();
            }
    }

}
