// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.paypal.android.sdk:
//            T, R, S

public class Q extends T
{

    private static final String a = com/paypal/android/sdk/Q.getSimpleName();

    public Q()
    {
    }

    public final Intent a(String s, R r, S s1, String s2)
    {
        s = b(s, r, s1, s2);
        s.putExtra("scope", "https://uri.paypal.com/services/payments/basic");
        return s;
    }

    public final Intent b(String s, R r, S s1, String s2)
    {
        Intent intent = a("com.paypal.android.p2pmobile.Sdk", "com.paypal.android.lib.authenticator.activity.SdkActivity");
        Bundle bundle = new Bundle();
        bundle.putString("target_client_id", s);
        if (r != null)
        {
            bundle.putString("token_request_type", r.toString());
        }
        if (s1 != null)
        {
            bundle.putString("response_type", s1.toString());
        }
        bundle.putString("app_guid", s2);
        (new StringBuilder("launching authenticator with bundle:")).append(bundle);
        intent.putExtras(bundle);
        return intent;
    }

}
