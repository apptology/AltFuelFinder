// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.golfcourse.model.Player;
import java.util.ArrayList;

// Referenced classes of package com.biznessapps.golfcourse:
//            SelectPlayerFragment

class this._cls0
    implements android.view.yerFragment._cls2
{

    final SelectPlayerFragment this$0;

    public void onClick(View view)
    {
        if (SelectPlayerFragment.access$200(SelectPlayerFragment.this) != null)
        {
            view = getIntent();
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < SelectPlayerFragment.access$300(SelectPlayerFragment.this).getCount(); i++)
            {
                CommonListEntity commonlistentity = (CommonListEntity)SelectPlayerFragment.access$400(SelectPlayerFragment.this).getItem(i);
                Player player = (Player)commonlistentity.getObject();
                if (commonlistentity.getImageId() == SelectPlayerFragment.access$500(SelectPlayerFragment.this))
                {
                    arraylist.add(Long.valueOf(player.getId()));
                }
            }

            if (!arraylist.isEmpty())
            {
                long al[] = new long[arraylist.size()];
                for (int j = 0; j < arraylist.size(); j++)
                {
                    al[j] = ((Long)arraylist.get(j)).longValue();
                }

                view.putExtra("selected_players_id", al);
            }
            finishFragment(-1, view);
            return;
        } else
        {
            finishFragment();
            return;
        }
    }

    ()
    {
        this$0 = SelectPlayerFragment.this;
        super();
    }
}
