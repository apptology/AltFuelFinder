// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.AlertDialog;
import android.view.View;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SharingOptionPopupDialog, OnSharingOptionSelectedListener

class this._cls0
    implements android.view.OptionPopupDialog._cls2
{

    final SharingOptionPopupDialog this$0;

    public void onClick(View view)
    {
        SharingOptionPopupDialog.access$000(SharingOptionPopupDialog.this).dismiss();
        int i = ((Integer)view.getTag()).intValue();
        if (SharingOptionPopupDialog.access$100(SharingOptionPopupDialog.this) != null)
        {
            SharingOptionPopupDialog.access$100(SharingOptionPopupDialog.this).onSharingOptionSelected(i);
        }
    }

    ener()
    {
        this$0 = SharingOptionPopupDialog.this;
        super();
    }
}
