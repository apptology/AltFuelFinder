// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;

// Referenced classes of package com.biznessapps.widgets:
//            CommonStyleableComponent

public class CommonNavigationButton extends Button
    implements CommonStyleableComponent
{

    public CommonNavigationButton(Context context)
    {
        this(context, null);
    }

    public CommonNavigationButton(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public CommonNavigationButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initAttrs(attributeset);
        initUI();
    }

    private void initAttrs(AttributeSet attributeset)
    {
    }

    private void initUI()
    {
        updateUI();
    }

    private void updateUI()
    {
    }

    public void applyStyle(UiSettings uisettings)
    {
        CommonUtils.overrideMediumButtonColor(uisettings.getNavigationBarColor(), getBackground());
    }
}
