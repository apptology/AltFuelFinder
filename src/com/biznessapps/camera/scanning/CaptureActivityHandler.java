// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.zxing.Result;
import java.util.Vector;

// Referenced classes of package com.biznessapps.camera.scanning:
//            DecodeThread, ViewfinderResultPointCallback, AbstractCaptureActivity, CameraManager

public final class CaptureActivityHandler extends Handler
{
    private static final class State extends Enum
    {

        private static final State $VALUES[];
        public static final State DONE;
        public static final State PREVIEW;
        public static final State SUCCESS;

        public static State valueOf(String s)
        {
            return (State)Enum.valueOf(com/biznessapps/camera/scanning/CaptureActivityHandler$State, s);
        }

        public static State[] values()
        {
            return (State[])$VALUES.clone();
        }

        static 
        {
            PREVIEW = new State("PREVIEW", 0);
            SUCCESS = new State("SUCCESS", 1);
            DONE = new State("DONE", 2);
            $VALUES = (new State[] {
                PREVIEW, SUCCESS, DONE
            });
        }

        private State(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String TAG = com/biznessapps/camera/scanning/CaptureActivityHandler.getSimpleName();
    private final AbstractCaptureActivity activity;
    private final DecodeThread decodeThread;
    private State state;

    CaptureActivityHandler(AbstractCaptureActivity abstractcaptureactivity, Vector vector, String s)
    {
        activity = abstractcaptureactivity;
        decodeThread = new DecodeThread(abstractcaptureactivity, vector, s, new ViewfinderResultPointCallback(abstractcaptureactivity.getViewfinderView()));
        decodeThread.start();
        state = State.SUCCESS;
        CameraManager.get().startPreview();
        restartPreviewAndDecode();
    }

    private void restartPreviewAndDecode()
    {
        if (state == State.SUCCESS)
        {
            state = State.PREVIEW;
            CameraManager.get().requestPreviewFrame(decodeThread.getHandler(), com.biznessapps.layout.R.id.decode);
            CameraManager.get().requestAutoFocus(this, com.biznessapps.layout.R.id.auto_focus);
            activity.drawViewfinder();
        }
    }

    public void handleMessage(Message message)
    {
        if (message.what == com.biznessapps.layout.R.id.auto_focus)
        {
            if (state == State.PREVIEW)
            {
                CameraManager.get().requestAutoFocus(this, com.biznessapps.layout.R.id.auto_focus);
            }
        } else
        {
            if (message.what == com.biznessapps.layout.R.id.restart_preview)
            {
                Log.d(TAG, "Got restart preview message");
                restartPreviewAndDecode();
                return;
            }
            if (message.what == com.biznessapps.layout.R.id.decode_succeeded)
            {
                Log.d(TAG, "Got decode succeeded message");
                state = State.SUCCESS;
                Object obj = message.getData();
                if (obj == null)
                {
                    obj = null;
                } else
                {
                    obj = (Bitmap)((Bundle) (obj)).getParcelable("barcode_bitmap");
                }
                activity.handleDecode((Result)message.obj, ((Bitmap) (obj)));
                return;
            }
            if (message.what == com.biznessapps.layout.R.id.decode_failed)
            {
                state = State.PREVIEW;
                CameraManager.get().requestPreviewFrame(decodeThread.getHandler(), com.biznessapps.layout.R.id.decode);
                return;
            }
            if (message.what == com.biznessapps.layout.R.id.return_scan_result)
            {
                Log.d(TAG, "Got return scan result message");
                activity.setResult(-1, (Intent)message.obj);
                activity.finish();
                return;
            }
            if (message.what == com.biznessapps.layout.R.id.launch_product_query)
            {
                Log.d(TAG, "Got product query message");
                message = new Intent("android.intent.action.VIEW", Uri.parse((String)message.obj));
                message.addFlags(0x80000);
                activity.startActivity(message);
                return;
            }
        }
    }

    public void quitSynchronously()
    {
        state = State.DONE;
        CameraManager.get().stopPreview();
        Message.obtain(decodeThread.getHandler(), com.biznessapps.layout.R.id.quit).sendToTarget();
        try
        {
            decodeThread.join();
        }
        catch (InterruptedException interruptedexception) { }
        removeMessages(com.biznessapps.layout.R.id.decode_succeeded);
        removeMessages(com.biznessapps.layout.R.id.decode_failed);
    }

}
