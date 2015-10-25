// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.graphics.Point;
import android.hardware.Camera;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.biznessapps.camera.scanning:
//            CameraConfigurationManager

final class PreviewCallback
    implements android.hardware.Camera.PreviewCallback
{

    private static final String TAG = com/biznessapps/camera/scanning/PreviewCallback.getSimpleName();
    private final CameraConfigurationManager configManager;
    private Handler previewHandler;
    private int previewMessage;
    private final boolean useOneShotPreviewCallback;

    PreviewCallback(CameraConfigurationManager cameraconfigurationmanager, boolean flag)
    {
        configManager = cameraconfigurationmanager;
        useOneShotPreviewCallback = flag;
    }

    public void onPreviewFrame(byte abyte0[], Camera camera)
    {
        Point point = configManager.getCameraResolution();
        if (!useOneShotPreviewCallback)
        {
            camera.setPreviewCallback(null);
        }
        if (previewHandler != null)
        {
            previewHandler.obtainMessage(previewMessage, point.x, point.y, abyte0).sendToTarget();
            previewHandler = null;
            return;
        } else
        {
            Log.d(TAG, "Got preview callback, but no handler for it");
            return;
        }
    }

    void setHandler(Handler handler, int i)
    {
        previewHandler = handler;
        previewMessage = i;
    }

}
