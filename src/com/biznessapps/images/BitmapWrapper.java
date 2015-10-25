// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.images;

import android.graphics.Bitmap;

public class BitmapWrapper
{

    private Bitmap bitmap;
    private String url;

    public BitmapWrapper(Bitmap bitmap1, String s)
    {
        bitmap = bitmap1;
        url = s;
    }

    public Bitmap getBitmap()
    {
        return bitmap;
    }

    public String getUrl()
    {
        return url;
    }

    public void setBitmap(Bitmap bitmap1)
    {
        bitmap = bitmap1;
    }

    public void setUrl(String s)
    {
        url = s;
    }
}
