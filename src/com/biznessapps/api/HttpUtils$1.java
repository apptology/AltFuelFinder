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
    final String val$appCode;
    final AsyncCallback val$callback;
    final String val$caption;
    final byte val$data[];
    final String val$eventId;
    final String val$tabId;

    public void run()
    {
        HttpUtils.access$000(HttpUtils.this, val$data, val$appCode, val$tabId, val$eventId, val$caption, val$callback);
    }

    k()
    {
        this$0 = final_httputils;
        val$data = abyte0;
        val$appCode = s;
        val$tabId = s1;
        val$eventId = s2;
        val$caption = s3;
        val$callback = AsyncCallback.this;
        super();
    }
}
