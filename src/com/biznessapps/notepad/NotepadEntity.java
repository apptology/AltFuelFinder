// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.notepad;

import com.biznessapps.common.entities.CommonListEntity;
import java.util.Date;

public class NotepadEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0xeac93f1350db2231L;
    private String content;
    private long noteDate;

    public NotepadEntity()
    {
    }

    public String getContent()
    {
        return content;
    }

    public Date getDate()
    {
        if (date == null)
        {
            date = new Date(noteDate);
        }
        return date;
    }

    public long getNoteDate()
    {
        return noteDate;
    }

    public void setContent(String s)
    {
        content = s;
    }

    public void setNoteDate(long l)
    {
        noteDate = l;
    }
}
