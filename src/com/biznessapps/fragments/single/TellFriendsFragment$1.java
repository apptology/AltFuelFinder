// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.fragments.single:
//            TellFriendsFragment

class this._cls0
    implements android.view.llFriendsFragment._cls1
{

    final TellFriendsFragment this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(getHoldActivity());
    }

    ()
    {
        this$0 = TellFriendsFragment.this;
        super();
    }
}
