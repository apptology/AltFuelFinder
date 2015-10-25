// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.real_estate;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.real_estate:
//            RealEstateDetailActivity

class this._cls0
    implements android.view.tailActivity._cls5
{

    final RealEstateDetailActivity this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(RealEstateDetailActivity.this);
    }

    ()
    {
        this$0 = RealEstateDetailActivity.this;
        super();
    }
}
