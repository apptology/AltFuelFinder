// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.app.Activity;

// Referenced classes of package com.biznessapps.api:
//            LoadDataTaskExternal

public static class isCorrectData
    implements Runnable
{

    private Activity activity;
    private boolean canUseCaching;
    private String dataToParse;
    private boolean isCorrectData;

    public void canUseCaching(boolean flag)
    {
        canUseCaching = flag;
    }

    public boolean canUseCaching()
    {
        return canUseCaching;
    }

    public Activity getActivity()
    {
        return activity;
    }

    public String getDataToParse()
    {
        return dataToParse;
    }

    public boolean isCorrectData()
    {
        return isCorrectData;
    }

    public void run()
    {
    }

    public void setActivity(Activity activity1)
    {
        activity = activity1;
    }

    public void setCorrectData(boolean flag)
    {
        isCorrectData = flag;
    }

    public void setDataToParse(String s)
    {
        dataToParse = s;
    }

    public ()
    {
        isCorrectData = true;
    }
}
