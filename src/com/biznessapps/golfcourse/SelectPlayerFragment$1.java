// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;

// Referenced classes of package com.biznessapps.golfcourse:
//            SelectPlayerFragment

class this._cls0
    implements android.view.yerFragment._cls1
{

    final SelectPlayerFragment this$0;

    public void onClick(View view)
    {
        view = new Intent(getApplicationContext(), com/biznessapps/common/activities/SingleFragmentActivity);
        view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        view.putExtra("TAB_SPECIAL_ID", SelectPlayerFragment.access$000(SelectPlayerFragment.this));
        view.putExtra("BG_URL_EXTRA", SelectPlayerFragment.access$100(SelectPlayerFragment.this, getHoldActivity().getIntent()));
        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.t.getString));
        view.putExtra("TAB_FRAGMENT", "GOLF_EDIT_PLAYER_FRAGMENT");
        startFragment(com.biznessapps.layout.it_player_layout, view, 100);
    }

    tivity()
    {
        this$0 = SelectPlayerFragment.this;
        super();
    }
}
