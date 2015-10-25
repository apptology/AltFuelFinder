// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;

// Referenced classes of package com.biznessapps.golfcourse:
//            EditPlayerScorePuttsDialogFragment, OnScorePuttsSelectedListener

class this._cls0
    implements android.view.logFragment._cls3
{

    final EditPlayerScorePuttsDialogFragment this$0;

    public void onClick(View view)
    {
        dismiss();
        if (EditPlayerScorePuttsDialogFragment.access$700(EditPlayerScorePuttsDialogFragment.this) != null)
        {
            EditPlayerScorePuttsDialogFragment.access$700(EditPlayerScorePuttsDialogFragment.this).onSelected(EditPlayerScorePuttsDialogFragment.access$800(EditPlayerScorePuttsDialogFragment.this), EditPlayerScorePuttsDialogFragment.access$000(EditPlayerScorePuttsDialogFragment.this), EditPlayerScorePuttsDialogFragment.access$600(EditPlayerScorePuttsDialogFragment.this));
        }
    }

    ()
    {
        this$0 = EditPlayerScorePuttsDialogFragment.this;
        super();
    }
}
