// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;


// Referenced classes of package com.biznessapps.fan_wall:
//            NewFanWallActivity

class taRunnable extends com.biznessapps.api.oadDataRunnable
{

    final NewFanWallActivity this$0;
    final String val$url;

    public void run()
    {
        setCorrectData(NewFanWallActivity.access$1200(NewFanWallActivity.this, getDataToParse(), val$url));
    }

    taRunnable()
    {
        this$0 = final_newfanwallactivity;
        val$url = String.this;
        super();
    }
}
