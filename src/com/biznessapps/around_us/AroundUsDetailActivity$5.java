// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsDetailActivity

class this._cls0
    implements android.view.ilActivity._cls5
{

    final AroundUsDetailActivity this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(AroundUsDetailActivity.this);
    }

    ()
    {
        this$0 = AroundUsDetailActivity.this;
        super();
    }
}
