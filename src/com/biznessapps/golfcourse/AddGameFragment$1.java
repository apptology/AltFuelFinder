// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.golfcourse.model.Game;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse:
//            AddGameFragment

class this._cls0
    implements android.view.er
{

    final AddGameFragment this$0;

    public void onClick(View view)
    {
        long al[] = (CommonListEntity)view.getTag();
        view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", AddGameFragment.access$000(AddGameFragment.this));
        view.putExtra("BG_URL_EXTRA", AddGameFragment.access$100(AddGameFragment.this, getHoldActivity().getIntent()));
        if (al.getTitle().equals(getString(com.biznessapps.layout.se)))
        {
            view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.urse));
            view.putExtra("TAB_FRAGMENT", "GOLF_SELECT_COURSE_FRAGMENT");
            startActivityForResult(view, 100);
        } else
        {
            if (al.getTitle().equals(getString(com.biznessapps.layout.t.getString)))
            {
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.ayers));
                if (AddGameFragment.access$200(AddGameFragment.this) != null && AddGameFragment.access$200(AddGameFragment.this).playerIdList != null)
                {
                    al = new long[AddGameFragment.access$200(AddGameFragment.this).playerIdList.size()];
                    for (int i = 0; i < AddGameFragment.access$200(AddGameFragment.this).playerIdList.size(); i++)
                    {
                        al[i] = ((Long)AddGameFragment.access$200(AddGameFragment.this).playerIdList.get(i)).longValue();
                    }

                    view.putExtra("selected_players_id", al);
                }
                view.putExtra("TAB_FRAGMENT", "GOLF_SELECT_PLAYER_FRAGMENT");
                startActivityForResult(view, 101);
                return;
            }
            if (al.getTitle().equals(getString(com.biznessapps.layout.t.getString)))
            {
                view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.t.getString));
                view.putExtra("TAB_FRAGMENT", "GOLF_ADD_NOTE_FRAGMENT");
                view.putExtra("note", AddGameFragment.access$200(AddGameFragment.this).notes);
                startActivityForResult(view, 102);
                return;
            }
            if (al.getTitle().equals(getString(com.biznessapps.layout.t.getString)))
            {
                AddGameFragment.access$300(AddGameFragment.this).show();
                return;
            }
        }
    }

    te()
    {
        this$0 = AddGameFragment.this;
        super();
    }
}
