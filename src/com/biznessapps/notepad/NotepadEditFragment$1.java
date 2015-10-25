// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.notepad;

import android.content.DialogInterface;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.storage.StorageKeeper;

// Referenced classes of package com.biznessapps.notepad:
//            NotepadEditFragment

class this._cls0
    implements android.content.kListener
{

    final NotepadEditFragment this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == -1)
        {
            StorageKeeper.instance().delNote(NotepadEditFragment.access$000(NotepadEditFragment.this));
            NotepadEditFragment.access$102(NotepadEditFragment.this, true);
            getHoldActivity().finish();
        }
    }

    ntActivity()
    {
        this$0 = NotepadEditFragment.this;
        super();
    }
}
