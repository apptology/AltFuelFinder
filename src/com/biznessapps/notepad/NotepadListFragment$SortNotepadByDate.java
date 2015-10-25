// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.notepad;

import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.biznessapps.notepad:
//            NotepadListFragment, NotepadEntity

private class <init>
    implements Comparator
{

    final NotepadListFragment this$0;

    public int compare(NotepadEntity notepadentity, NotepadEntity notepadentity1)
    {
        if (notepadentity == null || notepadentity.getDate() == null)
        {
            return 1;
        }
        if (notepadentity1 == null || notepadentity1.getDate() == null)
        {
            return -1;
        } else
        {
            return notepadentity1.getDate().compareTo(notepadentity.getDate());
        }
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((NotepadEntity)obj, (NotepadEntity)obj1);
    }

    private ()
    {
        this$0 = NotepadListFragment.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
