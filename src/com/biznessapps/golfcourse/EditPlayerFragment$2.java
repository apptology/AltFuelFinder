// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.view.View;
import android.widget.EditText;
import com.biznessapps.common.components.OnWheelDelegateVisibleListener;
import com.biznessapps.common.components.WheelDelegate;

// Referenced classes of package com.biznessapps.golfcourse:
//            EditPlayerFragment

class this._cls0
    implements OnWheelDelegateVisibleListener
{

    final EditPlayerFragment this$0;

    public void onHide(WheelDelegate wheeldelegate, View view)
    {
        EditPlayerFragment.access$100(EditPlayerFragment.this).requestFocus();
    }

    public void onShow(WheelDelegate wheeldelegate, View view)
    {
    }

    eVisibleListener()
    {
        this$0 = EditPlayerFragment.this;
        super();
    }
}
