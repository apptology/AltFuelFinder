// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;


public final class ImageScaleType extends Enum
{

    private static final ImageScaleType $VALUES[];
    public static final ImageScaleType SCALE_FIT_PROPER;
    public static final ImageScaleType SCALE_FIT_X;
    public static final ImageScaleType SCALE_FIT_XY;
    public static final ImageScaleType SCALE_FIT_Y;

    private ImageScaleType(String s, int i)
    {
        super(s, i);
    }

    public static ImageScaleType valueOf(String s)
    {
        return (ImageScaleType)Enum.valueOf(com/biznessapps/utils/ImageScaleType, s);
    }

    public static ImageScaleType[] values()
    {
        return (ImageScaleType[])$VALUES.clone();
    }

    static 
    {
        SCALE_FIT_X = new ImageScaleType("SCALE_FIT_X", 0);
        SCALE_FIT_Y = new ImageScaleType("SCALE_FIT_Y", 1);
        SCALE_FIT_XY = new ImageScaleType("SCALE_FIT_XY", 2);
        SCALE_FIT_PROPER = new ImageScaleType("SCALE_FIT_PROPER", 3);
        $VALUES = (new ImageScaleType[] {
            SCALE_FIT_X, SCALE_FIT_Y, SCALE_FIT_XY, SCALE_FIT_PROPER
        });
    }
}
