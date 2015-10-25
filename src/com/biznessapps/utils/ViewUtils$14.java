// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.content.DialogInterface;

// Referenced classes of package com.biznessapps.utils:
//            ViewUtils

static final class val.runnable
    implements android.content.ce.OnClickListener
{

    final Runnable val$runnable;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        val$runnable.run();
    }

    lickListener(Runnable runnable1)
    {
        val$runnable = runnable1;
        super();
    }
}
