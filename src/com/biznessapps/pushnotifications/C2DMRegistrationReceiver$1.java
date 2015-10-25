// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import android.content.Context;

// Referenced classes of package com.biznessapps.pushnotifications:
//            C2DMRegistrationReceiver

class val.registrationId
    implements Runnable
{

    final C2DMRegistrationReceiver this$0;
    final Context val$context;
    final String val$deviceId;
    final String val$registrationId;

    public void run()
    {
        sendDataToServer(val$context, val$deviceId, val$registrationId);
    }

    ()
    {
        this$0 = final_c2dmregistrationreceiver;
        val$context = context1;
        val$deviceId = s;
        val$registrationId = String.this;
        super();
    }
}
