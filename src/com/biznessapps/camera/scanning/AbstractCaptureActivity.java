// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.app.Activity;
import android.graphics.Bitmap;
import android.os.Handler;
import com.google.zxing.Result;

// Referenced classes of package com.biznessapps.camera.scanning:
//            ViewfinderView

public abstract class AbstractCaptureActivity extends Activity
{

    public AbstractCaptureActivity()
    {
    }

    abstract void drawViewfinder();

    abstract Handler getHandler();

    abstract ViewfinderView getViewfinderView();

    abstract void handleDecode(Result result, Bitmap bitmap);
}
