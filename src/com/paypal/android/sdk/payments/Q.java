// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.app.AlertDialog;
import android.view.View;
import com.paypal.android.sdk.cE;
import com.paypal.android.sdk.cG;
import com.paypal.android.sdk.cR;
import java.util.List;

// Referenced classes of package com.paypal.android.sdk.payments:
//            R, LoginActivity

final class Q
    implements android.view.View.OnClickListener
{

    final cR a;
    final List b;
    final LoginActivity c;

    Q(LoginActivity loginactivity, cR cr, List list)
    {
        c = loginactivity;
        a = cr;
        b = list;
        super();
    }

    public final void onClick(View view)
    {
        view = new android.app.AlertDialog.Builder(view.getContext());
        view.setTitle(cE.a(cG.aX)).setAdapter(a, new R(this));
        view.create().show();
    }
}
