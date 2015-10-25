// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.util.Log;
import org.json.JSONException;

// Referenced classes of package com.paypal.android.sdk:
//            bo, br, aI, aH

public abstract class bc
    implements bo
{

    private static final String a = com/paypal/android/sdk/bc.getSimpleName();

    public bc()
    {
    }

    protected static void a(br br1)
    {
        try
        {
            (new StringBuilder("parsing success response\n:")).append(br1.h());
            br1.c();
            return;
        }
        catch (Exception exception)
        {
            Log.e("paypal.sdk", "Exception parsing server response", exception);
            br1.a(new aI(aH.c, exception));
            return;
        }
    }

    protected static void a(br br1, int i)
    {
        br1.a(Integer.valueOf(i));
        try
        {
            (new StringBuilder("parsing error response:\n")).append(br1.h());
            br1.d();
            return;
        }
        catch (JSONException jsonexception)
        {
            Log.e("paypal.sdk", "Exception parsing server response", jsonexception);
            br1.a(aH.a.toString(), (new StringBuilder()).append(i).append(" http response received.  Response not parsable: ").append(jsonexception.getMessage()).toString(), null);
            return;
        }
    }

}
