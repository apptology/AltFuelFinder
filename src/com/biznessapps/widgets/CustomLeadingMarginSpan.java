// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.Layout;

public class CustomLeadingMarginSpan
    implements android.text.style.LeadingMarginSpan.LeadingMarginSpan2
{

    private int lines;
    private int margin;

    public CustomLeadingMarginSpan(int i, int j)
    {
        margin = j;
        lines = i;
    }

    public void drawLeadingMargin(Canvas canvas, Paint paint, int i, int j, int k, int l, int i1, 
            CharSequence charsequence, int j1, int k1, boolean flag, Layout layout)
    {
    }

    public int getLeadingMargin(boolean flag)
    {
        if (flag)
        {
            return margin;
        } else
        {
            return 0;
        }
    }

    public int getLeadingMarginLineCount()
    {
        return lines;
    }
}
