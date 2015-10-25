// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;

final class AutoFocusCallback
    implements android.hardware.Camera.AutoFocusCallback
{

    private static final long AUTOFOCUS_INTERVAL_MS = 1500L;
    private static final String TAG = com/biznessapps/camera/scanning/AutoFocusCallback.getSimpleName();
    private Handler autoFocusHandler;
    private int autoFocusMessage;

    AutoFocusCallback()
    {
    }

    public void onAutoFocus(boolean flag, Camera camera)
    {
        if (autoFocusHandler != null)
        {
            camera = autoFocusHandler.obtainMessage(autoFocusMessage, Boolean.valueOf(flag));
            autoFocusHandler.sendMessageDelayed(camera, 1500L);
            autoFocusHandler = null;
            return;
        } else
        {
            Log.d(TAG, "Got auto-focus callback, but no handler for it");
            return;
        }
    }

    void setHandler(Handler handler, int i)
    {
        autoFocusHandler = handler;
        autoFocusMessage = i;
    }

}
