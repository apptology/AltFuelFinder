// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

import android.media.MediaPlayer;
import android.util.Log;
import com.biznessapps.common.entities.CommonListEntity;
import java.io.File;
import java.io.IOException;

public class RecordEntity extends CommonListEntity
{

    private static final String AAC_FORMAT = ".aac";
    private static final String LOG_TAG = com/biznessapps/voice_recording/RecordEntity.getName();
    private static final long serialVersionUID = 0x9b8a5d45c8743ae1L;
    private boolean canPlay;
    private long date;
    private long duration;
    private String fileName;
    private String filePath;
    private String name;
    private long size;

    public RecordEntity(String s, File file)
    {
        canPlay = true;
        int i = s.indexOf(".aac");
        if (i > 0)
        {
            name = s.substring(0, i);
        }
        fileName = s;
        try
        {
            filePath = (new StringBuilder()).append(file.getAbsolutePath()).append("/").append(s).toString();
            s = new File(filePath);
            size = s.length();
            date = s.lastModified();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e(LOG_TAG, "file.length() failed", s);
            filePath = null;
        }
        s = new MediaPlayer();
        try
        {
            s.setDataSource(filePath);
            s.prepare();
            duration = s.getDuration();
            s.release();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            Log.e(LOG_TAG, "mp.getDuration() failed", s);
        }
    }

    public boolean canPlay()
    {
        return canPlay;
    }

    public long getDuration()
    {
        return duration;
    }

    public long getFileDate()
    {
        return date;
    }

    public String getFileName()
    {
        return fileName;
    }

    public String getFilePath()
    {
        return filePath;
    }

    public String getName()
    {
        return name;
    }

    public long getSize()
    {
        return size;
    }

    public void setCanPlay(boolean flag)
    {
        canPlay = flag;
    }

    public void setDuration(long l)
    {
        duration = l;
    }

    public void setSize(long l)
    {
        size = l;
    }

}
