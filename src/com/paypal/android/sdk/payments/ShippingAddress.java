// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.paypal.android.sdk.d;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk.payments:
//            bC

public final class ShippingAddress
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new bC();
    private static final String a = com/paypal/android/sdk/payments/ShippingAddress.getSimpleName();
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;

    public ShippingAddress()
    {
    }

    private ShippingAddress(Parcel parcel)
    {
        b = parcel.readString();
        c = parcel.readString();
        d = parcel.readString();
        e = parcel.readString();
        f = parcel.readString();
        g = parcel.readString();
        h = parcel.readString();
    }

    ShippingAddress(Parcel parcel, byte byte0)
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

    private static boolean a(String s)
    {
        return com.paypal.android.sdk.d.d(s);
    }

    private static boolean a(String s, String s1)
    {
        if (com.paypal.android.sdk.d.c(s))
        {
            return com.paypal.android.sdk.d.c(s1);
        }
        if (com.paypal.android.sdk.d.c(s1))
        {
            return false;
        } else
        {
            return s.trim().equals(s1.trim());
        }
    }

    final boolean a(JSONObject jsonobject)
    {
        while (!a(jsonobject.optString("recipient_name"), b) || !a(jsonobject.optString("line1"), c) || !a(jsonobject.optString("line2"), d) || !a(jsonobject.optString("city"), e) || !a(jsonobject.optString("state"), f) || !a(jsonobject.optString("country_code"), h) || !a(jsonobject.optString("postal_code"), g)) 
        {
            return false;
        }
        return true;
    }

    public final ShippingAddress city(String s)
    {
        e = s;
        return this;
    }

    public final ShippingAddress countryCode(String s)
    {
        h = s;
        return this;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final boolean isProcessable()
    {
        boolean flag1 = com.paypal.android.sdk.d.d(b);
        boolean flag2 = com.paypal.android.sdk.d.d(c);
        boolean flag3 = com.paypal.android.sdk.d.d(e);
        boolean flag;
        if (com.paypal.android.sdk.d.d(h) && h.length() == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag1, "recipient_name");
        a(flag2, "line1");
        a(flag3, "city");
        a(flag, "country_code");
        return flag1 && flag2 && flag3 && flag;
    }

    public final ShippingAddress line1(String s)
    {
        c = s;
        return this;
    }

    public final ShippingAddress line2(String s)
    {
        d = s;
        return this;
    }

    public final ShippingAddress postalCode(String s)
    {
        g = s;
        return this;
    }

    public final ShippingAddress recipientName(String s)
    {
        b = s;
        return this;
    }

    public final ShippingAddress state(String s)
    {
        f = s;
        return this;
    }

    public final JSONObject toJSONObject()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.accumulate("recipient_name", b);
            jsonobject.accumulate("line1", c);
            jsonobject.accumulate("city", e);
            jsonobject.accumulate("country_code", h);
            if (a(d))
            {
                jsonobject.accumulate("line2", d);
            }
            if (a(f))
            {
                jsonobject.accumulate("state", f);
            }
            if (a(g))
            {
                jsonobject.accumulate("postal_code", g);
            }
        }
        catch (JSONException jsonexception)
        {
            Log.e(a, jsonexception.getMessage());
            return jsonobject;
        }
        return jsonobject;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
        parcel.writeString(e);
        parcel.writeString(f);
        parcel.writeString(g);
        parcel.writeString(h);
    }

}
