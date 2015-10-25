// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk:
//            cL, d, cG, cE

final class cM
    implements Iterable
{

    private List a;
    private int b;

    public cM(JSONArray jsonarray, JSONObject jsonobject)
    {
        a = new ArrayList();
        int i = 0;
        do
        {
            if (i >= jsonarray.length())
            {
                break;
            }
            cL cl;
            try
            {
                cl = cL.a(jsonarray.getJSONObject(i));
            }
            catch (JSONException jsonexception)
            {
                Log.w("paypal.sdk", (new StringBuilder("Error extracting funding source: ")).append(jsonexception.getMessage()).toString());
                jsonexception = null;
            }
            if (cl != null)
            {
                a.add(cl);
            }
            i++;
        } while (true);
        if (jsonobject != null)
        {
            try
            {
                jsonarray = cL.a(jsonobject);
            }
            // Misplaced declaration of an exception variable
            catch (JSONArray jsonarray)
            {
                Log.w("paypal.sdk", (new StringBuilder("Error parsing backup funding instrument: ")).append(jsonarray.getMessage()).toString());
                jsonarray = null;
            }
            if (jsonarray != null)
            {
                a.add(jsonarray);
            }
        }
        b = f();
    }

    private int f()
    {
        Double double1 = Double.valueOf(0.0D);
        int j = 0;
        for (int i = 0; i < a.size();)
        {
            Double double2 = double1;
            if (((cL)a.get(i)).d().doubleValue() > double1.doubleValue())
            {
                double2 = ((cL)a.get(i)).d();
                j = i;
            }
            i++;
            double1 = double2;
        }

        return j;
    }

    public final cL a(int i)
    {
        a.size();
        return (cL)a.get(0);
    }

    public final String a()
    {
        return ((cL)a.get(b)).a();
    }

    public final boolean b()
    {
        String s = ((cL)a.get(b)).f();
        if (com.paypal.android.sdk.d.d(s))
        {
            return s.toUpperCase().equals("DELAYED_TRANSFER");
        } else
        {
            return false;
        }
    }

    public final String c()
    {
        if (a.size() == 1)
        {
            return ((cL)a.get(0)).b();
        } else
        {
            return cE.a(cG.b);
        }
    }

    public final String d()
    {
        return ((cL)a.get(b)).e();
    }

    public final int e()
    {
        return a.size();
    }

    public final Iterator iterator()
    {
        return a.iterator();
    }

    static 
    {
        com/paypal/android/sdk/cM.getSimpleName();
    }
}
