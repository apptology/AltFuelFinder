// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.paypal.android.sdk.bT;
import com.paypal.android.sdk.bv;
import com.paypal.android.sdk.d;
import com.paypal.android.sdk.g;
import java.math.BigDecimal;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk.payments:
//            au, PayPalPaymentDetails, PayPalItem, ShippingAddress

public final class PayPalPayment
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new au();
    public static final String PAYMENT_INTENT_AUTHORIZE = "authorize";
    public static final String PAYMENT_INTENT_ORDER = "order";
    public static final String PAYMENT_INTENT_SALE = "sale";
    private static final String a = com/paypal/android/sdk/payments/PayPalPayment.getSimpleName();
    private BigDecimal b;
    private String c;
    private String d;
    private String e;
    private PayPalPaymentDetails f;
    private String g;
    private PayPalItem h[];
    private boolean i;
    private ShippingAddress j;
    private String k;
    private String l;
    private String m;

    private PayPalPayment(Parcel parcel)
    {
        c = parcel.readString();
        int i1;
        boolean flag;
        try
        {
            b = new BigDecimal(parcel.readString());
        }
        catch (NumberFormatException numberformatexception) { }
        d = parcel.readString();
        g = parcel.readString();
        e = parcel.readString();
        f = (PayPalPaymentDetails)parcel.readParcelable(com/paypal/android/sdk/payments/PayPalPaymentDetails.getClassLoader());
        i1 = parcel.readInt();
        if (i1 > 0)
        {
            h = new PayPalItem[i1];
            parcel.readTypedArray(h, PayPalItem.CREATOR);
        }
        j = (ShippingAddress)parcel.readParcelable(com/paypal/android/sdk/payments/ShippingAddress.getClassLoader());
        if (parcel.readInt() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = flag;
        k = parcel.readString();
        l = parcel.readString();
        m = parcel.readString();
    }

    PayPalPayment(Parcel parcel, byte byte0)
    {
        this(parcel);
    }

    public PayPalPayment(BigDecimal bigdecimal, String s, String s1, String s2)
    {
        b = bigdecimal;
        c = s;
        d = s1;
        g = s2;
        f = null;
        e = null;
        toString();
    }

    private static void a(boolean flag, String s)
    {
        if (!flag)
        {
            Log.e("paypal.sdk", (new StringBuilder()).append(s).append(" is invalid.  Please see the docs.").toString());
        }
    }

    private static boolean a(String s, String s1, int i1)
    {
        if (com.paypal.android.sdk.d.d(s) && s.length() > i1)
        {
            Log.e("paypal.sdk", (new StringBuilder()).append(s1).append(" is too long (max ").append(i1).append(")").toString());
            return false;
        } else
        {
            return true;
        }
    }

    protected final BigDecimal a()
    {
        return b;
    }

    protected final String b()
    {
        return d;
    }

    public final PayPalPayment bnCode(String s)
    {
        e = s;
        return this;
    }

    protected final String c()
    {
        return g;
    }

    public final PayPalPayment custom(String s)
    {
        l = s;
        return this;
    }

    protected final String d()
    {
        return c;
    }

    public final int describeContents()
    {
        return 0;
    }

    protected final String e()
    {
        return e;
    }

    public final PayPalPayment enablePayPalShippingAddressesRetrieval(boolean flag)
    {
        i = flag;
        return this;
    }

    protected final PayPalPaymentDetails f()
    {
        return f;
    }

    protected final PayPalItem[] g()
    {
        return h;
    }

    public final String getAmountAsLocalizedString()
    {
        if (b == null)
        {
            return null;
        } else
        {
            bv bv1 = bv.a();
            return bT.a(Locale.getDefault(), bv1.c().a(), b.doubleValue(), c, true);
        }
    }

    public final ShippingAddress getProvidedShippingAddress()
    {
        return j;
    }

    protected final String h()
    {
        return k;
    }

    protected final String i()
    {
        return l;
    }

    public final PayPalPayment invoiceNumber(String s)
    {
        k = s;
        return this;
    }

    public final boolean isEnablePayPalShippingAddressesRetrieval()
    {
        return i;
    }

    public final boolean isProcessable()
    {
        boolean flag;
        boolean flag4 = bT.a(c);
        boolean flag5 = bT.a(b, c, true);
        boolean flag6 = com.paypal.android.sdk.d.b(d);
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (com.paypal.android.sdk.d.d(g) && (g.equals("sale") || g.equals("authorize") || g.equals("order")))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (f == null)
        {
            flag2 = true;
        } else
        {
            flag2 = f.isProcessable();
        }
        if (com.paypal.android.sdk.d.c(e))
        {
            flag3 = true;
        } else
        {
            flag3 = com.paypal.android.sdk.d.c(e);
        }
        if (h != null && h.length != 0) goto _L2; else goto _L1
_L1:
        flag = true;
_L3:
        PayPalItem apaypalitem[];
        int i1;
        int j1;
        if (!a(k, "invoiceNumber", 256))
        {
            i1 = 0;
        } else
        {
            i1 = 1;
        }
        if (!a(l, "custom", 256))
        {
            i1 = 0;
        }
        if (!a(m, "softDescriptor", 22))
        {
            i1 = 0;
        }
        a(flag4, "currencyCode");
        a(flag5, "amount");
        a(flag6, "shortDescription");
        a(flag1, "paymentIntent");
        a(flag2, "details");
        a(flag3, "bnCode");
        a(flag, "items");
        return flag4 && flag5 && flag6 && flag2 && flag1 && flag3 && flag && i1 != 0;
_L2:
        apaypalitem = h;
        j1 = apaypalitem.length;
        i1 = 0;
_L4:
label0:
        {
            if (i1 >= j1)
            {
                break MISSING_BLOCK_LABEL_329;
            }
            if (apaypalitem[i1].isValid())
            {
                break label0;
            }
            flag = false;
        }
          goto _L3
        i1++;
          goto _L4
        flag = true;
          goto _L3
    }

    public final PayPalPayment items(PayPalItem apaypalitem[])
    {
        h = apaypalitem;
        return this;
    }

    protected final String j()
    {
        return m;
    }

    public final PayPalPayment paymentDetails(PayPalPaymentDetails paypalpaymentdetails)
    {
        f = paypalpaymentdetails;
        return this;
    }

    public final PayPalPayment providedShippingAddress(ShippingAddress shippingaddress)
    {
        j = shippingaddress;
        return this;
    }

    public final PayPalPayment softDescriptor(String s)
    {
        m = s;
        return this;
    }

    public final JSONObject toJSONObject()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("amount", b.toPlainString());
            jsonobject.put("currency_code", c);
            if (f != null)
            {
                jsonobject.put("details", f.toJSONObject());
            }
            jsonobject.put("short_description", d);
            jsonobject.put("intent", g.toString());
            if (com.paypal.android.sdk.d.d(e))
            {
                jsonobject.put("bn_code", e);
            }
            if (h != null && h.length > 0)
            {
                JSONObject jsonobject1 = new JSONObject();
                jsonobject1.accumulate("items", PayPalItem.toJSONArray(h));
                jsonobject.put("item_list", jsonobject1);
            }
        }
        catch (JSONException jsonexception)
        {
            Log.e("paypal.sdk", "error encoding JSON", jsonexception);
            return null;
        }
        return jsonobject;
    }

    public final String toString()
    {
        String s1 = d;
        String s;
        if (b != null)
        {
            s = b.toString();
        } else
        {
            s = null;
        }
        return String.format("PayPalPayment: {%s: $%s %s, %s}", new Object[] {
            s1, s, c, g
        });
    }

    public final void writeToParcel(Parcel parcel, int i1)
    {
        i1 = 0;
        parcel.writeString(c);
        parcel.writeString(b.toString());
        parcel.writeString(d);
        parcel.writeString(g);
        parcel.writeString(e);
        parcel.writeParcelable(f, 0);
        if (h != null)
        {
            parcel.writeInt(h.length);
            parcel.writeTypedArray(h, 0);
        } else
        {
            parcel.writeInt(0);
        }
        parcel.writeParcelable(j, 0);
        if (i)
        {
            i1 = 1;
        }
        parcel.writeInt(i1);
        parcel.writeString(k);
        parcel.writeString(l);
        parcel.writeString(m);
    }

}
