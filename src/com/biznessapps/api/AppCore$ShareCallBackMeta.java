// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;


// Referenced classes of package com.biznessapps.api:
//            AppCore, AsyncCallback

class orgUrl
{

    AsyncCallback callback;
    String orgUrl;
    final AppCore this$0;

    public (AsyncCallback asynccallback, String s)
    {
        this$0 = AppCore.this;
        super();
        callback = asynccallback;
        orgUrl = s;
    }
}
