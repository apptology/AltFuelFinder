// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;

public class LoadMoreButton extends Button
{

    public static final int CHUNK_COUNT = 20;
    private boolean canShow;
    private int offset;

    public LoadMoreButton(Context context)
    {
        super(context);
        offset = 0;
        canShow = true;
    }

    public LoadMoreButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        offset = 0;
        canShow = true;
    }

    public LoadMoreButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        offset = 0;
        canShow = true;
    }

    public void canShow(boolean flag)
    {
        canShow = flag;
    }

    public boolean canShow()
    {
        return canShow;
    }

    public void clearOffset()
    {
        offset = 0;
    }

    public int getOffset()
    {
        return offset;
    }

    public void setOffset(int i)
    {
        offset = i;
    }

    public void updateOffset()
    {
        offset = offset + 20;
    }
}
