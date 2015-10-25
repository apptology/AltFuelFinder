// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.content.DialogInterface;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SharingOptionPopupDialog

class this._cls0
    implements android.content.ener
{

    final SharingOptionPopupDialog this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (dialoginterface != null)
        {
            dialoginterface.cancel();
        }
    }

    A()
    {
        this$0 = SharingOptionPopupDialog.this;
        super();
    }
}
