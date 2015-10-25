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
//            bz

public final class ProofOfPayment
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new bz();
    private static final String a = com/paypal/android/sdk/payments/ProofOfPayment.getSimpleName();
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    private ProofOfPayment(Parcel parcel)
    {
        this(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
    }

    ProofOfPayment(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    ProofOfPayment(String s, String s1, String s2, String s3, String s4)
    {
        b = s;
        c = s1;
        d = s2;
        e = s3;
        f = s4;
        (new StringBuilder("ProofOfPayment created: ")).append(toString());
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String getCreateTime()
    {
        return d;
    }

    public final String getIntent()
    {
        return e;
    }

    public final String getPaymentId()
    {
        return c;
    }

    public final String getState()
    {
        return b;
    }

    public final String getTransactionId()
    {
        return f;
    }

    public final JSONObject toJSONObject()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("create_time", d);
        jsonobject.put("id", c);
        jsonobject.put("intent", e);
        jsonobject.put("state", b);
        Object obj = jsonobject;
        if (!com.paypal.android.sdk.d.d(f))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        obj = jsonobject;
        if (!com.paypal.android.sdk.d.d(e))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        if (!e.equals("authorize"))
        {
            break MISSING_BLOCK_LABEL_101;
        }
        jsonobject.put("authorization_id", f);
        return jsonobject;
        obj = jsonobject;
        if (!e.equals("order"))
        {
            break MISSING_BLOCK_LABEL_141;
        }
        jsonobject.put("order_id", f);
        return jsonobject;
        obj;
        Log.e(a, "error encoding JSON", ((Throwable) (obj)));
        obj = null;
        return ((JSONObject) (obj));
    }

    public final String toString()
    {
        String s;
        if (com.paypal.android.sdk.d.d(f))
        {
            s = f;
        } else
        {
            s = "no transactionId";
        }
        return (new StringBuilder("{")).append(e).append(": ").append(s).append("}").toString();
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
        parcel.writeString(e);
        parcel.writeString(f);
    }

}
