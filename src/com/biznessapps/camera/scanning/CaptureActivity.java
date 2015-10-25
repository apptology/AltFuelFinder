// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.KeyEvent;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.Window;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.io.IOException;
import java.util.Vector;

// Referenced classes of package com.biznessapps.camera.scanning:
//            AbstractCaptureActivity, ViewfinderView, CaptureActivityHandler, CameraManager, 
//            InactivityTimer

public class CaptureActivity extends AbstractCaptureActivity
    implements android.view.SurfaceHolder.Callback
{
    private static final class Source extends Enum
    {

        private static final Source $VALUES[];
        public static final Source NATIVE_APP_INTENT;
        public static final Source NONE;
        public static final Source PRODUCT_SEARCH_LINK;
        public static final Source ZXING_LINK;

        public static Source valueOf(String s)
        {
            return (Source)Enum.valueOf(com/biznessapps/camera/scanning/CaptureActivity$Source, s);
        }

        public static Source[] values()
        {
            return (Source[])$VALUES.clone();
        }

        static 
        {
            NATIVE_APP_INTENT = new Source("NATIVE_APP_INTENT", 0);
            PRODUCT_SEARCH_LINK = new Source("PRODUCT_SEARCH_LINK", 1);
            ZXING_LINK = new Source("ZXING_LINK", 2);
            NONE = new Source("NONE", 3);
            $VALUES = (new Source[] {
                NATIVE_APP_INTENT, PRODUCT_SEARCH_LINK, ZXING_LINK, NONE
            });
        }

        private Source(String s, int i)
        {
            super(s, i);
        }
    }


    private static final long INTENT_RESULT_DURATION = 1500L;
    public static final int RESULT_CAMERA_INIT_ERROR = 100;
    public static final String SCAN_RESULT = "SCAN_RESULT";
    private static final String TAG = com/biznessapps/camera/scanning/CaptureActivity.getSimpleName();
    private String characterSet;
    private Vector decodeFormats;
    private CaptureActivityHandler handler;
    private boolean hasSurface;
    private InactivityTimer inactivityTimer;
    private Result lastResult;
    private Source source;
    private ViewfinderView viewfinderView;

    public CaptureActivity()
    {
    }

    private static void drawLine(Canvas canvas, Paint paint, ResultPoint resultpoint, ResultPoint resultpoint1)
    {
        canvas.drawLine(resultpoint.getX(), resultpoint.getY(), resultpoint1.getX(), resultpoint1.getY(), paint);
    }

    private void drawResultPoints(Bitmap bitmap, Result result)
    {
        ResultPoint aresultpoint[] = result.getResultPoints();
        if (aresultpoint != null && aresultpoint.length > 0)
        {
            Canvas canvas = new Canvas(bitmap);
            Paint paint = new Paint();
            paint.setColor(getResources().getColor(com.biznessapps.layout.R.color.result_image_border));
            paint.setStrokeWidth(3F);
            paint.setStyle(android.graphics.Paint.Style.STROKE);
            canvas.drawRect(new Rect(2, 2, bitmap.getWidth() - 2, bitmap.getHeight() - 2), paint);
            paint.setColor(getResources().getColor(com.biznessapps.layout.R.color.result_points));
            if (aresultpoint.length == 2)
            {
                paint.setStrokeWidth(4F);
                drawLine(canvas, paint, aresultpoint[0], aresultpoint[1]);
            } else
            {
                if (aresultpoint.length == 4 && result.getBarcodeFormat().equals(BarcodeFormat.UPC_A) || result.getBarcodeFormat().equals(BarcodeFormat.EAN_13))
                {
                    drawLine(canvas, paint, aresultpoint[0], aresultpoint[1]);
                    drawLine(canvas, paint, aresultpoint[2], aresultpoint[3]);
                    return;
                }
                paint.setStrokeWidth(10F);
                int j = aresultpoint.length;
                int i = 0;
                while (i < j) 
                {
                    bitmap = aresultpoint[i];
                    canvas.drawPoint(bitmap.getX(), bitmap.getY(), paint);
                    i++;
                }
            }
        }
    }

    private void handleCameraInitializationError()
    {
        setResult(100);
        finish();
    }

    private void handleDecodeExternally(Result result, Bitmap bitmap)
    {
        viewfinderView.drawResultBitmap(bitmap);
        bitmap = new Intent(getIntent().getAction());
        bitmap.addFlags(0x80000);
        bitmap.putExtra("SCAN_RESULT", result.toString());
        result = Message.obtain(handler, com.biznessapps.layout.R.id.return_scan_result);
        result.obj = bitmap;
        handler.sendMessageDelayed(result, 1500L);
    }

    private void initCamera(SurfaceHolder surfaceholder)
    {
        try
        {
            CameraManager.get().openDriver(surfaceholder);
        }
        // Misplaced declaration of an exception variable
        catch (SurfaceHolder surfaceholder)
        {
            Log.w(TAG, surfaceholder);
            handleCameraInitializationError();
            return;
        }
        // Misplaced declaration of an exception variable
        catch (SurfaceHolder surfaceholder)
        {
            Log.w(TAG, "Unexpected error initializating camera", surfaceholder);
            handleCameraInitializationError();
            return;
        }
        if (handler == null)
        {
            handler = new CaptureActivityHandler(this, decodeFormats, characterSet);
        }
    }

    private void resetStatusView()
    {
        viewfinderView.setVisibility(0);
        lastResult = null;
    }

    void drawViewfinder()
    {
        viewfinderView.drawViewfinder();
    }

    Handler getHandler()
    {
        return handler;
    }

    ViewfinderView getViewfinderView()
    {
        return viewfinderView;
    }

    void handleDecode(Result result, Bitmap bitmap)
    {
        inactivityTimer.onActivity();
        lastResult = result;
        if (bitmap == null)
        {
            return;
        } else
        {
            drawResultPoints(bitmap, result);
            handleDecodeExternally(result, bitmap);
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().addFlags(128);
        setContentView(com.biznessapps.layout.R.layout.capture_layout);
        CameraManager.init(getApplication());
        viewfinderView = (ViewfinderView)findViewById(com.biznessapps.layout.R.id.viewfinder_view);
        handler = null;
        lastResult = null;
        hasSurface = false;
        inactivityTimer = new InactivityTimer(this);
    }

    protected void onDestroy()
    {
        inactivityTimer.shutdown();
        super.onDestroy();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i != 4) goto _L2; else goto _L1
_L1:
        if (source != Source.NATIVE_APP_INTENT) goto _L4; else goto _L3
_L3:
        setResult(0);
        finish();
_L6:
        return true;
_L4:
        if (source != Source.NONE && source != Source.ZXING_LINK || lastResult == null)
        {
            break; /* Loop/switch isn't completed */
        }
        resetStatusView();
        if (handler == null) goto _L6; else goto _L5
_L5:
        handler.sendEmptyMessage(com.biznessapps.layout.R.id.restart_preview);
        return true;
_L2:
        if (i == 80 || i == 27) goto _L6; else goto _L7
_L7:
        return super.onKeyDown(i, keyevent);
    }

    protected void onPause()
    {
        super.onPause();
        if (handler != null)
        {
            handler.quitSynchronously();
            handler = null;
        }
        CameraManager.get().closeDriver();
    }

    protected void onResume()
    {
        super.onResume();
        resetStatusView();
        SurfaceHolder surfaceholder = ((SurfaceView)findViewById(com.biznessapps.layout.R.id.preview_view)).getHolder();
        if (hasSurface)
        {
            initCamera(surfaceholder);
        } else
        {
            surfaceholder.addCallback(this);
            surfaceholder.setType(3);
        }
        source = Source.NONE;
        decodeFormats = null;
        characterSet = null;
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        if (!hasSurface)
        {
            hasSurface = true;
            initCamera(surfaceholder);
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        hasSurface = false;
    }

}
