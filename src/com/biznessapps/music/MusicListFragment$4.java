// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.view.View;
import android.widget.Button;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.music:
//            MusicListFragment

class this._cls0
    implements android.view.
{

    final MusicListFragment this$0;

    public void onClick(View view)
    {
        MusicListFragment.access$002(MusicListFragment.this, false);
        MusicListFragment.access$500(MusicListFragment.this);
        ViewUtils.updateButtonsState(MusicListFragment.access$900(MusicListFragment.this), new Button[] {
            MusicListFragment.access$800(MusicListFragment.this), MusicListFragment.access$700(MusicListFragment.this)
        });
    }

    ()
    {
        this$0 = MusicListFragment.this;
        super();
    }
}
