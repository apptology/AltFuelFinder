// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            AsyncTask

class this._cls0 extends FutureTask
{

    final AsyncTask this$0;

    protected void done()
    {
        AsyncTask.access$500(AsyncTask.this, get());
_L1:
        return;
        Object obj;
        obj;
        if (obj != null)
        {
            Log.w("AsyncTask", ((Throwable) (obj)));
            return;
        }
          goto _L1
        obj;
        throw new RuntimeException("An error occured while executing doInBackground()", ((ExecutionException) (obj)).getCause());
        obj;
        AsyncTask.access$500(AsyncTask.this, null);
        return;
    }

    (Callable callable)
    {
        this$0 = AsyncTask.this;
        super(callable);
    }
}
