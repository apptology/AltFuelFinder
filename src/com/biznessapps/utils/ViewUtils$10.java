// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class val.buttonToClick
    implements android.widget.itorActionListener
{

    final Button val$buttonToClick;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
label0:
        {
            boolean flag1 = false;
            boolean flag;
            if (i == 6)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            flag = flag1;
            if (keyevent == null)
            {
                break label0;
            }
            flag = flag1;
            if (keyevent.getAction() != 0)
            {
                break label0;
            }
            if (keyevent.getKeyCode() != 66)
            {
                flag = flag1;
                if (keyevent.getKeyCode() != 23)
                {
                    break label0;
                }
            }
            flag = true;
        }
        if (i != 0 || flag)
        {
            val$buttonToClick.performClick();
        }
        return true;
    }

    ionListener(Button button)
    {
        val$buttonToClick = button;
        super();
    }
}
