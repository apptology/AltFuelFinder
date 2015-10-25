// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.contact;

import android.view.View;
import com.biznessapps.common.social.ui.ShareComponent;

// Referenced classes of package com.biznessapps.contact:
//            ContactsMapActivity

class this._cls0
    implements android.view.Activity._cls9
{

    final ContactsMapActivity this$0;

    public void onClick(View view)
    {
        ShareComponent.showSharingOptionDialog(ContactsMapActivity.this);
    }

    t()
    {
        this$0 = ContactsMapActivity.this;
        super();
    }
}
