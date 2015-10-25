// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.biznessapps.player:
//            BaseServiceAccessor

class this._cls0
    implements ServiceConnection
{

    final BaseServiceAccessor this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        service = createServiceStub(ibinder);
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        service = null;
    }

    ()
    {
        this$0 = BaseServiceAccessor.this;
        super();
    }
}
