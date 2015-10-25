// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Hole;
import com.biznessapps.golfcourse.model.PlayerScore;
import java.util.HashMap;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse:
//            OnCellClickListener, ScoreBoardFragment, ScoreBoardAdapter

class this._cls0
    implements OnCellClickListener
{

    final ScoreBoardFragment this$0;

    public void onCellClicked(int i, int j)
    {
        boolean flag1 = true;
        if (j == 0 && i > 2)
        {
            Object obj = ScoreBoardFragment.access$500(ScoreBoardFragment.this).getPlayerFromRowIndex(i - 1);
            boolean flag;
            if (obj != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            obj = (PlayerScore)ScoreBoardFragment.access$200(ScoreBoardFragment.this).scores.get(obj);
            if (obj != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            if (!((PlayerScore) (obj)).isExtended)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            obj.isExtended = flag;
            ScoreBoardFragment.access$500(ScoreBoardFragment.this).notifyDataSetChanged();
        } else
        if (j > 0)
        {
            Hole hole = ScoreBoardFragment.access$500(ScoreBoardFragment.this).getHoleFromColumnIndex(j - 1);
            if (hole != null)
            {
                Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("GOLF_DETAIL_HOLE_FRAGMENT"));
                intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                intent.putExtra("TAB_SPECIAL_ID", ScoreBoardFragment.access$600(ScoreBoardFragment.this));
                intent.putExtra("BG_URL_EXTRA", ScoreBoardFragment.access$700(ScoreBoardFragment.this, getHoldActivity().getIntent()));
                intent.putExtra("TAB_FRAGMENT", "GOLF_DETAIL_HOLE_FRAGMENT");
                intent.putExtra("game_id", ScoreBoardFragment.access$200(ScoreBoardFragment.this).id);
                intent.putExtra("hole_number", hole.holeNumber);
                if (i > 2)
                {
                    intent.putExtra("tab_idx", com.biznessapps.layout.mber);
                }
                startFragment(com.biznessapps.layout.hole_details_layout, intent, 104);
                return;
            }
        }
    }

    Activity()
    {
        this$0 = ScoreBoardFragment.this;
        super();
    }
}
