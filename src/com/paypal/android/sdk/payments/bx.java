// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import com.paypal.android.sdk.co;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.paypal.android.sdk.payments:
//            by

final class bx
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new by();
    private List a;
    private String b;
    private String c;
    private String d;

    bx()
    {
        a = new ArrayList();
    }

    public bx(Parcel parcel)
    {
        this();
        if (parcel != null)
        {
            b = parcel.readString();
            c = parcel.readString();
            d = parcel.readString();
            a = new ArrayList();
            parcel.readList(a, java/lang/String.getClassLoader());
        }
    }

    bx(co co1)
    {
        a = a(co1.u());
        b = co1.v();
        c = co1.w();
        d = co1.x();
    }

    private static List a(Map map)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = map.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = (String)iterator.next();
            if (((String)map.get(s)).toUpperCase().equals("Y"))
            {
                arraylist.add(s.toLowerCase(Locale.US));
            }
        } while (true);
        return arraylist;
    }

    public final List a()
    {
        return a;
    }

    public final String b()
    {
        return b;
    }

    public final String c()
    {
        return c;
    }

    public final String d()
    {
        return d;
    }

    public final int describeContents()
    {
        return 0;
    }

    public final void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(b);
        parcel.writeString(c);
        parcel.writeString(d);
        parcel.writeList(a);
    }

}
