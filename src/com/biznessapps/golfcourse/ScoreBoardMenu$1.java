// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;

// Referenced classes of package com.biznessapps.golfcourse:
//            ScoreBoardMenu, OnMenuSelectListener

class this._cls0
    implements android.view.ner
{

    final ScoreBoardMenu this$0;

    public void onClick(View view)
    {
        if (ScoreBoardMenu.access$000(ScoreBoardMenu.this) != null)
        {
            ScoreBoardMenu.access$000(ScoreBoardMenu.this).onMenuSelected(view.getId());
        }
    }

    ner()
    {
        this$0 = ScoreBoardMenu.this;
        super();
    }
}
