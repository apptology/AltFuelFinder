// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import java.io.IOException;

// Referenced classes of package com.biznessapps.camera.scanning:
//            CameraConfigurationManager, PreviewCallback, AutoFocusCallback, PlanarYUVLuminanceSource, 
//            FlashlightManager

public final class CameraManager
{

    private static final int MIN_FRAME_HEIGHT = 240;
    private static final int MIN_FRAME_WIDTH = 240;
    private static final String TAG = com/biznessapps/camera/scanning/CameraManager.getSimpleName();
    private static CameraManager cameraManager;
    private final AutoFocusCallback autoFocusCallback = new AutoFocusCallback();
    private Camera camera;
    private final CameraConfigurationManager configManager;
    private Rect framingRect;
    private Rect framingRectInPreview;
    private boolean initialized;
    private final PreviewCallback previewCallback;
    private boolean previewing;
    private final boolean useOneShotPreviewCallback = true;

    private CameraManager(Context context)
    {
        configManager = new CameraConfigurationManager(context);
        previewCallback = new PreviewCallback(configManager, useOneShotPreviewCallback);
    }

    public static CameraManager get()
    {
        return cameraManager;
    }

    public static void init(Context context)
    {
        if (cameraManager == null)
        {
            cameraManager = new CameraManager(context);
        }
    }

    public PlanarYUVLuminanceSource buildLuminanceSource(byte abyte0[], int i, int j)
    {
        Rect rect = getFramingRectInPreview();
        int k = configManager.getPreviewFormat();
        String s = configManager.getPreviewFormatString();
        switch (k)
        {
        default:
            if ("yuv420p".equals(s))
            {
                return new PlanarYUVLuminanceSource(abyte0, i, j, rect.left, rect.top, rect.width(), rect.height());
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Unsupported picture format: ").append(k).append('/').append(s).toString());
            }

        case 16: // '\020'
        case 17: // '\021'
            return new PlanarYUVLuminanceSource(abyte0, i, j, rect.left, rect.top, rect.width(), rect.height());
        }
    }

    public void closeDriver()
    {
        if (camera != null)
        {
            FlashlightManager.disableFlashlight();
            camera.release();
            camera = null;
        }
    }

    public Rect getFramingRect()
    {
        Point point = configManager.getScreenResolution();
        if (framingRect == null)
        {
            if (camera == null)
            {
                return null;
            }
            int j = (point.x * 3) / 4;
            int i = j;
            if (j < 240)
            {
                i = 240;
            }
            int k = (point.y * 3) / 4;
            j = k;
            if (k < 240)
            {
                j = 240;
            }
            k = (point.x - i) / 2;
            int l = (point.y - j) / 2;
            framingRect = new Rect(k, l, k + i, l + j);
            Log.d(TAG, (new StringBuilder()).append("Calculated framing rect: ").append(framingRect).toString());
        }
        return framingRect;
    }

    public Rect getFramingRectInPreview()
    {
        if (framingRectInPreview == null)
        {
            Rect rect = new Rect(getFramingRect());
            Point point = configManager.getCameraResolution();
            Point point1 = configManager.getScreenResolution();
            rect.left = (rect.left * point.x) / point1.x;
            rect.right = (rect.right * point.x) / point1.x;
            rect.top = (rect.top * point.y) / point1.y;
            rect.bottom = (rect.bottom * point.y) / point1.y;
            framingRectInPreview = rect;
        }
        return framingRectInPreview;
    }

    public void openDriver(SurfaceHolder surfaceholder)
        throws IOException
    {
        if (camera == null)
        {
            camera = Camera.open();
            if (camera == null)
            {
                throw new IOException();
            }
            camera.setPreviewDisplay(surfaceholder);
            if (!initialized)
            {
                initialized = true;
                configManager.initFromCameraParameters(camera);
            }
            configManager.setDesiredCameraParameters(camera);
        }
    }

    public void requestAutoFocus(Handler handler, int i)
    {
        if (camera != null && previewing)
        {
            autoFocusCallback.setHandler(handler, i);
            camera.autoFocus(autoFocusCallback);
        }
    }

    public void requestPreviewFrame(Handler handler, int i)
    {
label0:
        {
            if (camera != null && previewing)
            {
                previewCallback.setHandler(handler, i);
                if (!useOneShotPreviewCallback)
                {
                    break label0;
                }
                camera.setOneShotPreviewCallback(previewCallback);
            }
            return;
        }
        camera.setPreviewCallback(previewCallback);
    }

    public void startPreview()
    {
        if (camera != null && !previewing)
        {
            camera.startPreview();
            previewing = true;
        }
    }

    public void stopPreview()
    {
        if (camera != null && previewing)
        {
            if (!useOneShotPreviewCallback)
            {
                camera.setPreviewCallback(null);
            }
            camera.stopPreview();
            previewCallback.setHandler(null, 0);
            autoFocusCallback.setHandler(null, 0);
            previewing = false;
        }
    }

}
