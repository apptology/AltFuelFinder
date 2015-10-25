// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Intent;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.biznessapps.golfcourse:
//            AddNoteFragment

class this._cls0
    implements android.view.er
{

    final AddNoteFragment this$0;

    public void onClick(View view)
    {
        AddNoteFragment.access$002(AddNoteFragment.this, AddNoteFragment.access$100(AddNoteFragment.this).getText().toString());
        view = new Intent();
        view.putExtra("note", AddNoteFragment.access$000(AddNoteFragment.this));
        finishFragment(-1, view);
    }

    ()
    {
        this$0 = AddNoteFragment.this;
        super();
    }
}
