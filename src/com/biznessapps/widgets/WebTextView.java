// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.widget.TextView;

// Referenced classes of package com.biznessapps.widgets:
//            URLImageParser

public class WebTextView extends TextView
{

    public WebTextView(Context context)
    {
        super(context);
        init();
    }

    public WebTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public WebTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private void init()
    {
        setMovementMethod(LinkMovementMethod.getInstance());
    }

    public void setHtml(String s)
    {
        setText(Html.fromHtml(s, new URLImageParser(this, getContext()), null));
    }
}
