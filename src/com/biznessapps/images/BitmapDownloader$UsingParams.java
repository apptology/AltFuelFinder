// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.images;

import android.view.View;

// Referenced classes of package com.biznessapps.images:
//            BitmapDownloader

public static class llback
{

    private static final int DEFAULT_BITMAP_SAMPLE_SIZE = 1;
    private llback callback;
    private int reqHeight;
    private int reqWidth;
    private int sampleSize;
    private String url;
    private boolean useReflection;
    private View view;

    public llback getCallback()
    {
        return callback;
    }

    public int getReqHeight()
    {
        return reqHeight;
    }

    public int getReqWidth()
    {
        return reqWidth;
    }

    public int getSampleSize()
    {
        return sampleSize;
    }

    public String getUrl()
    {
        return url;
    }

    public View getView()
    {
        return view;
    }

    public boolean isUseReflection()
    {
        return useReflection;
    }

    public void setCallback(llback llback)
    {
        callback = llback;
    }

    public void setReqHeight(int i)
    {
        reqHeight = i;
    }

    public void setReqWidth(int i)
    {
        reqWidth = i;
    }

    public void setSampleSize(int i)
    {
        sampleSize = i;
    }

    public llback(View view1, String s)
    {
        this(view1, s, null);
    }

    public llback(View view1, String s, llback llback)
    {
        this(view1, s, llback, false, false);
    }

    public llback(View view1, String s, llback llback, boolean flag)
    {
        this(view1, s, llback, flag, false);
    }

    public llback(View view1, String s, llback llback, boolean flag, boolean flag1)
    {
        sampleSize = 1;
        url = s;
        view = view1;
        useReflection = flag1;
        callback = llback;
    }

    public callback(String s)
    {
        this(null, s);
    }
}
