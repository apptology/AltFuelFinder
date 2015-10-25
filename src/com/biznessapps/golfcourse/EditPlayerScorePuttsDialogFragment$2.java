// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import com.biznessapps.widgets.wheel.DigitalWheelAdapter;
import com.biznessapps.widgets.wheel.WheelView;

// Referenced classes of package com.biznessapps.golfcourse:
//            EditPlayerScorePuttsDialogFragment

class this._cls0
    implements com.biznessapps.widgets.wheel.s._cls0
{

    final EditPlayerScorePuttsDialogFragment this$0;

    public void onStateChanged(WheelView wheelview)
    {
        EditPlayerScorePuttsDialogFragment.access$602(EditPlayerScorePuttsDialogFragment.this, EditPlayerScorePuttsDialogFragment.access$200(EditPlayerScorePuttsDialogFragment.this).getValueFromIndex(wheelview.getCurrentItem()));
        EditPlayerScorePuttsDialogFragment.access$500(EditPlayerScorePuttsDialogFragment.this);
    }

    ()
    {
        this$0 = EditPlayerScorePuttsDialogFragment.this;
        super();
    }
}
