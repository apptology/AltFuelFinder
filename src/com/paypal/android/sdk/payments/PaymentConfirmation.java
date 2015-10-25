// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk.payments:
//            bl, PayPalPayment, ProofOfPayment

public final class PaymentConfirmation
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new bl();
    private static final String a = com/paypal/android/sdk/payments/PaymentConfirmation.getSimpleName();
    private String b;
    private PayPalPayment c;
    private ProofOfPayment d;

    private PaymentConfirmation(Parcel parcel)
    {
        b = parcel.readString();
        c = (PayPalPayment)parcel.readParcelable(com/paypal/android/sdk/payments/PayPalPayment.getClassLoader());
        d = (ProofOfPayment)parcel.readParcelable(com/paypal/android/sdk/payments/ProofOfPayment.getClassLoader());
    }

    PaymentConfirmation(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    PaymentConfirmation(String s, PayPalPayment paypalpayment, ProofOfPayment proofofpayment)
    {
        b = s;
        c = paypalpayment;
        d = proofofpayment;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final String getEnvironment()
    {
        return b;
    }

    public final PayPalPayment getPayment()
    {
        return c;
    }

    public final ProofOfPayment getProofOfPayment()
    {
        return d;
    }

    public final JSONObject toJSONObject()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            JSONObject jsonobject1 = new JSONObject();
            jsonobject1.put("environment", b);
            jsonobject1.put("paypal_sdk_version", "2.9.11");
            jsonobject1.put("platform", "Android");
            jsonobject1.put("product_name", "PayPal-Android-SDK");
            jsonobject.put("client", jsonobject1);
            jsonobject.put("response", d.toJSONObject());
            jsonobject.put("response_type", "payment");
        }
        catch (JSONException jsonexception)
        {
            Log.e(a, "Error encoding JSON", jsonexception);
            return null;
        }
        return jsonobject;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(b);
        parcel.writeParcelable(c, 0);
        parcel.writeParcelable(d, 0);
    }

}
