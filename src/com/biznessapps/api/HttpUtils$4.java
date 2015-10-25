// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;


// Referenced classes of package com.biznessapps.api:
//            HttpUtils, AsyncCallback

class val.result
    implements Runnable
{

    final HttpUtils this$0;
    final AsyncCallback val$callback;
    final String val$result;

    public void run()
    {
        if (val$callback != null)
        {
            val$callback.onResult(val$result);
        }
    }

    k()
    {
        this$0 = final_httputils;
        val$callback = asynccallback;
        val$result = String.this;
        super();
    }
}
