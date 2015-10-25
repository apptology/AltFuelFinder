// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.calendar;

import android.widget.TextView;

// Referenced classes of package com.biznessapps.widgets.calendar:
//            CalendarAdapter

public class this._cls0
{

    private int backgroundId;
    private TextView dateView;
    private boolean isBlocked;
    private boolean isEnabled;
    private int textColor;
    final CalendarAdapter this$0;

    public TextView getDateView()
    {
        return dateView;
    }

    public CharSequence getText()
    {
        return dateView.getText();
    }

    public boolean isBlocked()
    {
        return isBlocked;
    }

    public boolean isEnabled()
    {
        return isEnabled;
    }

    public void restoreBackground()
    {
        if (backgroundId > 0)
        {
            dateView.setBackgroundResource(backgroundId);
        }
    }

    public void restoreTextColor()
    {
        dateView.setTextColor(textColor);
    }

    public void setBackground(int i)
    {
        setBackground(i, true);
    }

    public void setBackground(int i, boolean flag)
    {
        if (flag)
        {
            backgroundId = i;
        }
        dateView.setBackgroundResource(i);
    }

    public void setBlocked(boolean flag)
    {
        isBlocked = flag;
    }

    public void setDateView(TextView textview)
    {
        dateView = textview;
    }

    public void setEnabled(boolean flag)
    {
        isEnabled = flag;
    }

    public void setText(CharSequence charsequence)
    {
        dateView.setText(charsequence);
    }

    public void setTextColor(int i)
    {
        setTextColor(i, true);
    }

    public void setTextColor(int i, boolean flag)
    {
        if (flag)
        {
            textColor = i;
        }
        dateView.setTextColor(i);
    }

    public ()
    {
        this$0 = CalendarAdapter.this;
        super();
    }
}
