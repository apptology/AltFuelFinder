// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;

public class BitmapDrawableNoMinimumSize extends BitmapDrawable
{

    public BitmapDrawableNoMinimumSize(Resources resources, int i)
    {
        super(resources, ((BitmapDrawable)resources.getDrawable(i)).getBitmap());
    }

    public int getMinimumHeight()
    {
        return 0;
    }

    public int getMinimumWidth()
    {
        return 0;
    }
}
