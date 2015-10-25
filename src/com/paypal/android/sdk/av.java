// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;

// Referenced classes of package com.paypal.android.sdk:
//            Y, au

final class av
    implements Runnable
{

    private Context a;
    private Y b;

    av(Context context, Y y)
    {
        a = context;
        b = y;
        super();
    }

    public final void run()
    {
        try
        {
            com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = AdvertisingIdClient.getAdvertisingIdInfo(a);
            b.W = info.getId();
            return;
        }
        catch (Throwable throwable)
        {
            au.a(au.f(), throwable.getLocalizedMessage(), throwable);
        }
    }
}
