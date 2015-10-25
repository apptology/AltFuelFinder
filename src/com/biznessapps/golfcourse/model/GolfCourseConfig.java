// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;

import android.content.Context;

public class GolfCourseConfig
{

    private static GolfCourseConfig instance;
    private Context mContext;
    private boolean mUseBlurOverlay;

    private GolfCourseConfig(Context context)
    {
        mUseBlurOverlay = false;
        mContext = context;
    }

    public static GolfCourseConfig getInstance(Context context)
    {
        if (instance == null)
        {
            instance = new GolfCourseConfig(context);
        }
        return instance;
    }

    public void setUseBlurOverlay(boolean flag)
    {
        mUseBlurOverlay = flag;
    }

    public boolean useBlurOverlay()
    {
        return mUseBlurOverlay;
    }
}
