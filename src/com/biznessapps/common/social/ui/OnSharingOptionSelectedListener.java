// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.graphics.Bitmap;
import android.net.Uri;

// Referenced classes of package com.biznessapps.common.social.ui:
//            OnSharingCompletedListener

public abstract class OnSharingOptionSelectedListener
{

    public Activity activity;
    public Bitmap bitmap;
    public Uri bitmapPath;
    public String description;
    public OnSharingCompletedListener listener;
    public String text;

    public OnSharingOptionSelectedListener()
    {
        activity = null;
        listener = null;
        text = null;
        description = null;
        bitmap = null;
        bitmapPath = null;
    }

    public abstract void onSharingOptionSelected(int i);
}
