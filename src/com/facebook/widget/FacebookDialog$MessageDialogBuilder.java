// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import java.util.EnumSet;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class e extends e
{

    EnumSet getDialogFeatures()
    {
        return EnumSet.of(MESSAGE_DIALOG);
    }

    public e(Activity activity)
    {
        super(activity);
    }
}
