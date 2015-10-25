// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk:
//            cY, cG, cE, cM

public final class cJ
    implements cY
{

    private String a;
    private cM b;

    private cJ(JSONObject jsonobject)
    {
        a = cE.a(cG.aC);
        b = new cM(jsonobject.optJSONArray("funding_sources"), jsonobject.optJSONObject("backup_funding_instrument"));
    }

    public static ArrayList a(JSONObject jsonobject, JSONArray jsonarray)
    {
        ArrayList arraylist = new ArrayList();
        if (jsonobject != null)
        {
            jsonobject = new cJ(jsonobject);
            if (jsonobject.h())
            {
                arraylist.add(jsonobject);
            }
        }
        if (jsonarray != null)
        {
            int i = 0;
            while (i < jsonarray.length()) 
            {
                try
                {
                    jsonobject = new cJ(jsonarray.getJSONObject(i));
                    if (jsonobject.h())
                    {
                        arraylist.add(jsonobject);
                    }
                }
                // Misplaced declaration of an exception variable
                catch (JSONObject jsonobject) { }
                i++;
            }
        }
        return arraylist;
    }

    private boolean h()
    {
        return b.e() > 0;
    }

    public final String a()
    {
        return b.d();
    }

    public final String b()
    {
        return a;
    }

    public final String c()
    {
        return b.a();
    }

    public final String d()
    {
        return b.c();
    }

    public final boolean e()
    {
        return b.b();
    }

    public final cM f()
    {
        return b;
    }

    public final boolean g()
    {
        return b.e() == 1;
    }
}
