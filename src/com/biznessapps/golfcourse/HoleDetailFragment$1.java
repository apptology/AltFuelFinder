// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;

// Referenced classes of package com.biznessapps.golfcourse:
//            HoleDetailFragment, EditPlayerScorePuttsDialogFragment

class this._cls0
    implements android.view.ailFragment._cls1
{

    final HoleDetailFragment this$0;

    public void onClick(View view)
    {
        view = (ayerHoleScoreTag)view.getTag();
        HoleDetailFragment.access$002(HoleDetailFragment.this, EditPlayerScorePuttsDialogFragment.newInstance(getActivity(), null, "EditScore"));
        HoleDetailFragment.access$000(HoleDetailFragment.this).setOnScorePuttsSelectedListener(HoleDetailFragment.access$100(HoleDetailFragment.this));
        HoleDetailFragment.access$000(HoleDetailFragment.this).setHoleScore(view);
    }

    ialogFragment()
    {
        this$0 = HoleDetailFragment.this;
        super();
    }
}
