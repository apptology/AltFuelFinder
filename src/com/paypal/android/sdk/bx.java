// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;


// Referenced classes of package com.paypal.android.sdk:
//            aK

public final class bx extends Enum
{

    public static final bx a;
    public static final bx b;
    public static final bx c;
    public static final bx d;
    public static final bx e;
    public static final bx f;
    public static final bx g;
    public static final bx h;
    public static final bx i;
    public static final bx j;
    public static final bx k;
    public static final bx l;
    private static bx m;
    private static final bx p[];
    private aK n;
    private String o;

    private bx(String s, int i1, aK ak, String s1)
    {
        super(s, i1);
        n = ak;
        o = s1;
    }

    public static bx valueOf(String s)
    {
        return (bx)Enum.valueOf(com/paypal/android/sdk/bx, s);
    }

    public static bx[] values()
    {
        return (bx[])p.clone();
    }

    final aK a()
    {
        return n;
    }

    final String b()
    {
        return o;
    }

    static 
    {
        a = new bx("SiteCatalystRequest", 0, aK.a, null);
        b = new bx("FptiRequest", 1, aK.b, null);
        c = new bx("PreAuthRequest", 2, aK.b, "oauth2/token");
        d = new bx("LoginRequest", 3, aK.b, "oauth2/login");
        e = new bx("LoginChallengeRequest", 4, aK.b, "oauth2/login/challenge");
        f = new bx("ConsentRequest", 5, aK.b, "oauth2/consent");
        g = new bx("CreditCardPaymentRequest", 6, aK.b, "payments/payment");
        m = new bx("PayPalPaymentRequest", 7, aK.b, "payments/payment");
        h = new bx("CreateSfoPaymentRequest", 8, aK.b, "orchestration/msdk-create-sfo-payment");
        i = new bx("ApproveAndExecuteSfoPaymentRequest", 9, aK.b, "orchestration/msdk-approve-and-execute-sfo-payment");
        j = new bx("TokenizeCreditCardRequest", 10, aK.b, "vault/credit-card");
        k = new bx("DeleteCreditCardRequest", 11, aK.c, "vault/credit-card");
        l = new bx("GetAppInfoRequest", 12, aK.a, "apis/applications");
        p = (new bx[] {
            a, b, c, d, e, f, g, m, h, i, 
            j, k, l
        });
    }
}
