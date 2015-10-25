// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.paypal.android.sdk.aw;
import com.paypal.android.sdk.b;
import com.paypal.android.sdk.d;
import com.paypal.android.sdk.e;

// Referenced classes of package com.paypal.android.sdk.payments:
//            am, PayPalService, l

public final class PayPalConfiguration
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new am();
    public static final String ENVIRONMENT_NO_NETWORK = "mock";
    public static final String ENVIRONMENT_PRODUCTION = "live";
    public static final String ENVIRONMENT_SANDBOX = "sandbox";
    private static final String a = com/paypal/android/sdk/payments/PayPalConfiguration.getSimpleName();
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private boolean g;
    private String h;
    private String i;
    private boolean j;
    private String k;
    private String l;
    private Uri m;
    private Uri n;
    private boolean o;

    public PayPalConfiguration()
    {
        j = true;
        o = true;
    }

    private PayPalConfiguration(Parcel parcel)
    {
        boolean flag1 = true;
        super();
        j = true;
        o = true;
        c = parcel.readString();
        b = parcel.readString();
        d = parcel.readString();
        e = parcel.readString();
        f = parcel.readString();
        boolean flag;
        if (parcel.readByte() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
        h = parcel.readString();
        i = parcel.readString();
        if (parcel.readByte() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = flag;
        k = parcel.readString();
        l = parcel.readString();
        m = (Uri)parcel.readParcelable(android/net/Uri.getClassLoader());
        n = (Uri)parcel.readParcelable(android/net/Uri.getClassLoader());
        if (parcel.readByte() == 1)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        o = flag;
    }

    PayPalConfiguration(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    private static void a(boolean flag, String s)
    {
        if (!flag)
        {
            Log.e(a, (new StringBuilder()).append(s).append(" is invalid.  Please see the docs.").toString());
        }
    }

    public static final String getApplicationCorrelationId(Context context)
    {
        return getClientMetadataId(context);
    }

    public static final String getClientMetadataId(Context context)
    {
        java.util.concurrent.ExecutorService executorservice = PayPalService.a;
        new l();
        return com.paypal.android.sdk.e.a(executorservice, context, new b(context, "AndroidBasePrefs"), "2.9.11");
    }

    public static final String getLibraryVersion()
    {
        return "2.9.11";
    }

    final String a()
    {
        return b;
    }

    public final PayPalConfiguration acceptCreditCards(boolean flag)
    {
        j = flag;
        return this;
    }

    final String b()
    {
        if (com.paypal.android.sdk.d.a(c))
        {
            c = "live";
            Log.w("paypal.sdk", "defaulting to production environment");
        }
        return c;
    }

    final String c()
    {
        return d;
    }

    public final PayPalConfiguration clientId(String s)
    {
        k = s;
        return this;
    }

    final String d()
    {
        return e;
    }

    public final PayPalConfiguration defaultUserEmail(String s)
    {
        d = s;
        return this;
    }

    public final PayPalConfiguration defaultUserPhone(String s)
    {
        e = s;
        return this;
    }

    public final PayPalConfiguration defaultUserPhoneCountryCode(String s)
    {
        f = s;
        return this;
    }

    public final int describeContents()
    {
        return 0;
    }

    final String e()
    {
        return f;
    }

    public final PayPalConfiguration environment(String s)
    {
        c = s;
        return this;
    }

    final boolean f()
    {
        return g;
    }

    public final PayPalConfiguration forceDefaultsOnSandbox(boolean flag)
    {
        g = flag;
        return this;
    }

    final String g()
    {
        return h;
    }

    final String h()
    {
        return i;
    }

    final boolean i()
    {
        return j;
    }

    final boolean j()
    {
        return o;
    }

    final String k()
    {
        return k;
    }

    final String l()
    {
        return l;
    }

    public final PayPalConfiguration languageOrLocale(String s)
    {
        b = s;
        return this;
    }

    final Uri m()
    {
        return m;
    }

    public final PayPalConfiguration merchantName(String s)
    {
        l = s;
        return this;
    }

    public final PayPalConfiguration merchantPrivacyPolicyUri(Uri uri)
    {
        m = uri;
        return this;
    }

    public final PayPalConfiguration merchantUserAgreementUri(Uri uri)
    {
        n = uri;
        return this;
    }

    final Uri n()
    {
        return n;
    }

    final boolean o()
    {
        boolean flag1 = com.paypal.android.sdk.d.a(a, b(), "environment");
        a(flag1, "environment");
        boolean flag;
        if (flag1)
        {
            if (aw.a(b()))
            {
                flag = true;
            } else
            {
                flag = com.paypal.android.sdk.d.a(a, k, "clientId");
                a(flag, "clientId");
            }
        } else
        {
            flag = false;
        }
        return flag1 && flag;
    }

    public final PayPalConfiguration rememberUser(boolean flag)
    {
        o = flag;
        return this;
    }

    public final PayPalConfiguration sandboxUserPassword(String s)
    {
        h = s;
        return this;
    }

    public final PayPalConfiguration sandboxUserPin(String s)
    {
        i = s;
        return this;
    }

    public final String toString()
    {
        return String.format((new StringBuilder()).append(com/paypal/android/sdk/payments/PayPalConfiguration.getSimpleName()).append(": {environment:%s, client_id:%s, languageOrLocale:%s}").toString(), new Object[] {
            c, k, b
        });
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        boolean flag = true;
        parcel.writeString(c);
        parcel.writeString(b);
        parcel.writeString(d);
        parcel.writeString(e);
        parcel.writeString(f);
        if (g)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
        parcel.writeString(h);
        parcel.writeString(i);
        if (j)
        {
            i1 = 1;
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
        parcel.writeString(k);
        parcel.writeString(l);
        parcel.writeParcelable(m, 0);
        parcel.writeParcelable(n, 0);
        if (o)
        {
            i1 = ((flag) ? 1 : 0);
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
    }

}
