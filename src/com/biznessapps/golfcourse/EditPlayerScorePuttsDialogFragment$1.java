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
        EditPlayerScorePuttsDialogFragment.access$002(EditPlayerScorePuttsDialogFragment.this, EditPlayerScorePuttsDialogFragment.access$100(EditPlayerScorePuttsDialogFragment.this).getValueFromIndex(wheelview.getCurrentItem()));
        if (EditPlayerScorePuttsDialogFragment.access$200(EditPlayerScorePuttsDialogFragment.this) != null)
        {
            EditPlayerScorePuttsDialogFragment.access$200(EditPlayerScorePuttsDialogFragment.this).setMaxValue(EditPlayerScorePuttsDialogFragment.access$000(EditPlayerScorePuttsDialogFragment.this) - 1);
            EditPlayerScorePuttsDialogFragment.access$300(EditPlayerScorePuttsDialogFragment.this).setViewAdapter(EditPlayerScorePuttsDialogFragment.access$200(EditPlayerScorePuttsDialogFragment.this));
            int i = Math.min(EditPlayerScorePuttsDialogFragment.access$300(EditPlayerScorePuttsDialogFragment.this).getCurrentItem(), EditPlayerScorePuttsDialogFragment.access$200(EditPlayerScorePuttsDialogFragment.this).getMaxIndex());
            EditPlayerScorePuttsDialogFragment.access$300(EditPlayerScorePuttsDialogFragment.this).setCurrentItem(i);
            EditPlayerScorePuttsDialogFragment.access$400(EditPlayerScorePuttsDialogFragment.this).ateChanged(EditPlayerScorePuttsDialogFragment.access$300(EditPlayerScorePuttsDialogFragment.this));
        }
        EditPlayerScorePuttsDialogFragment.access$500(EditPlayerScorePuttsDialogFragment.this);
    }

    ()
    {
        this$0 = EditPlayerScorePuttsDialogFragment.this;
        super();
    }
}
