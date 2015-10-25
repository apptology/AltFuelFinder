// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.widget.Button;

// Referenced classes of package com.biznessapps.widgets:
//            BitmapDrawableNoMinimumSize

public class CustomButtonNoDependOnBackgroundSize extends Button
{

    private int mNoDependBackground;

    public CustomButtonNoDependOnBackgroundSize(Context context)
    {
        super(context);
        initUI();
    }

    public CustomButtonNoDependOnBackgroundSize(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        initAttrs(attributeset);
        initUI();
    }

    public CustomButtonNoDependOnBackgroundSize(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initAttrs(attributeset);
        initUI();
    }

    private void initAttrs(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.biznessapps.layout.R.styleable.CustomButtonNoDependOnBackgroundSize);
        mNoDependBackground = attributeset.getResourceId(0, 0);
        attributeset.recycle();
    }

    private void initUI()
    {
        if (mNoDependBackground != 0)
        {
            setBackgroundDrawable(new BitmapDrawableNoMinimumSize(getResources(), mNoDependBackground));
        }
    }
}
