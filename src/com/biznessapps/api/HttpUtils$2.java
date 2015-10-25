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
    final String val$comment;
    final String val$hash;
    final String val$id;
    final byte val$imageData[];
    final double val$latitude;
    final double val$longitude;
    final String val$name;
    final String val$parentId;
    final String val$tabId;
    final String val$url;
    final String val$userId;
    final int val$userType;

    public void run()
    {
        HttpUtils.access$100(HttpUtils.this, val$url, val$appCode, val$tabId, val$id, val$userType, val$userId, val$name, val$comment, val$hash, val$parentId, val$longitude, val$latitude, val$imageData, val$callback);
    }

    k()
    {
        this$0 = final_httputils;
        val$url = s;
        val$appCode = s1;
        val$tabId = s2;
        val$id = s3;
        val$userType = i;
        val$userId = s4;
        val$name = s5;
        val$comment = s6;
        val$hash = s7;
        val$parentId = s8;
        val$longitude = d;
        val$latitude = d1;
        val$imageData = abyte0;
        val$callback = AsyncCallback.this;
        super();
    }
}
