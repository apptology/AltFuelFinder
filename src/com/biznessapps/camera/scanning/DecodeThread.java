// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.os.Handler;
import android.os.Looper;
import com.google.zxing.DecodeHintType;
import com.google.zxing.ResultPointCallback;
import java.util.Hashtable;
import java.util.Vector;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.biznessapps.camera.scanning:
//            DecodeFormatManager, DecodeHandler, AbstractCaptureActivity

final class DecodeThread extends Thread
{

    public static final String BARCODE_BITMAP = "barcode_bitmap";
    private final AbstractCaptureActivity activity;
    private Handler handler;
    private final CountDownLatch handlerInitLatch;
    private final Hashtable hints;

    DecodeThread(AbstractCaptureActivity abstractcaptureactivity, Vector vector, String s, ResultPointCallback resultpointcallback)
    {
label0:
        {
            super();
            activity = abstractcaptureactivity;
            handlerInitLatch = new CountDownLatch(1);
            hints = new Hashtable(3);
            if (vector != null)
            {
                abstractcaptureactivity = vector;
                if (!vector.isEmpty())
                {
                    break label0;
                }
            }
            abstractcaptureactivity = new Vector();
            abstractcaptureactivity.addAll(DecodeFormatManager.ONE_D_FORMATS);
            abstractcaptureactivity.addAll(DecodeFormatManager.QR_CODE_FORMATS);
            abstractcaptureactivity.addAll(DecodeFormatManager.DATA_MATRIX_FORMATS);
        }
        hints.put(DecodeHintType.POSSIBLE_FORMATS, abstractcaptureactivity);
        if (s != null)
        {
            hints.put(DecodeHintType.CHARACTER_SET, s);
        }
        hints.put(DecodeHintType.NEED_RESULT_POINT_CALLBACK, resultpointcallback);
    }

    Handler getHandler()
    {
        try
        {
            handlerInitLatch.await();
        }
        catch (InterruptedException interruptedexception) { }
        return handler;
    }

    public void run()
    {
        Looper.prepare();
        handler = new DecodeHandler(activity, hints);
        handlerInitLatch.countDown();
        Looper.loop();
    }
}
