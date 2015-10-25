// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.MultiFormatReader;
import com.google.zxing.ReaderException;
import com.google.zxing.common.HybridBinarizer;
import java.util.Hashtable;

// Referenced classes of package com.biznessapps.camera.scanning:
//            CameraManager, AbstractCaptureActivity, PlanarYUVLuminanceSource

final class DecodeHandler extends Handler
{

    private final AbstractCaptureActivity activity;
    private final MultiFormatReader multiFormatReader = new MultiFormatReader();

    DecodeHandler(AbstractCaptureActivity abstractcaptureactivity, Hashtable hashtable)
    {
        multiFormatReader.setHints(hashtable);
        activity = abstractcaptureactivity;
    }

    private void decode(byte abyte0[], int i, int j)
    {
        Bundle bundle;
        PlanarYUVLuminanceSource planaryuvluminancesource;
        bundle = null;
        planaryuvluminancesource = CameraManager.get().buildLuminanceSource(abyte0, i, j);
        abyte0 = new BinaryBitmap(new HybridBinarizer(planaryuvluminancesource));
        abyte0 = multiFormatReader.decodeWithState(abyte0);
        multiFormatReader.reset();
_L1:
        if (abyte0 != null)
        {
            abyte0 = Message.obtain(activity.getHandler(), com.biznessapps.layout.R.id.decode_succeeded, abyte0);
            bundle = new Bundle();
            bundle.putParcelable("barcode_bitmap", planaryuvluminancesource.renderCroppedGreyscaleBitmap());
            abyte0.setData(bundle);
            abyte0.sendToTarget();
            return;
        } else
        {
            Message.obtain(activity.getHandler(), com.biznessapps.layout.R.id.decode_failed).sendToTarget();
            return;
        }
        abyte0;
        multiFormatReader.reset();
        abyte0 = bundle;
          goto _L1
        abyte0;
        multiFormatReader.reset();
        throw abyte0;
    }

    public void handleMessage(Message message)
    {
        if (message.what == com.biznessapps.layout.R.id.decode)
        {
            decode((byte[])(byte[])message.obj, message.arg1, message.arg2);
        } else
        if (message.what == com.biznessapps.layout.R.id.quit)
        {
            Looper.myLooper().quit();
            return;
        }
    }
}
