// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.ColorDrawable;
import java.lang.ref.WeakReference;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            ImageWorker

private static class bitmapWorkerTaskReference extends ColorDrawable
{

    private final WeakReference bitmapWorkerTaskReference;

    public sk getBitmapWorkerTask()
    {
        return (sk)bitmapWorkerTaskReference.get();
    }

    public sk(Resources resources, Bitmap bitmap, sk sk)
    {
        super(0);
        bitmapWorkerTaskReference = new WeakReference(sk);
    }
}
