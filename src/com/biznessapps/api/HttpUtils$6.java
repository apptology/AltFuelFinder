// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;


// Referenced classes of package com.biznessapps.api:
//            HttpUtils, AsyncCallback

class k
    implements Runnable
{

    final HttpUtils this$0;
    final String val$baseUrl;
    final AsyncCallback val$callback;
    final String val$names[];
    final String val$values[];

    public void run()
    {
        HttpUtils.access$300(HttpUtils.this, val$baseUrl, val$names, val$values, val$callback);
    }

    k()
    {
        this$0 = final_httputils;
        val$baseUrl = s;
        val$names = as;
        val$values = as1;
        val$callback = AsyncCallback.this;
        super();
    }
}
