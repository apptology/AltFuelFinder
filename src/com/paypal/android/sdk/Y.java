// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import android.location.Location;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.paypal.android.sdk:
//            au

public final class Y
{

    public String A;
    public String B;
    public Boolean C;
    public String D;
    public String E;
    public Boolean F;
    public String G;
    public String H;
    public long I;
    public long J;
    public String K;
    public int L;
    public int M;
    public String N;
    public int O;
    public String P;
    public Boolean Q;
    public Boolean R;
    public String S;
    public long T;
    public long U;
    public String V;
    public String W;
    public String X;
    public String Y;
    public String Z;
    public String a;
    public String aa;
    public String ab;
    public Map ac;
    private String ad;
    public String b;
    public String c;
    public int d;
    public String e;
    public int f;
    public String g;
    public String h;
    public String i;
    public String j;
    public String k;
    public String l;
    public String m;
    public long n;
    public String o;
    public List p;
    public List q;
    public String r;
    public String s;
    public String t;
    public String u;
    public Location v;
    public int w;
    public String x;
    public String y;
    public String z;

    public Y()
    {
        d = -1;
        f = -1;
        n = -1L;
        w = -1;
        L = -1;
        M = -1;
        O = -1;
        y = "Android";
        ad = "full";
    }

    private static JSONObject a(Location location)
    {
        if (location != null)
        {
            try
            {
                location = new JSONObject((new StringBuilder("{\"lat\":")).append(location.getLatitude()).append(",\"lng\":").append(location.getLongitude()).append(",\"acc\":").append(location.getAccuracy()).append(",\"timestamp\":").append(location.getTime()).append("}").toString());
            }
            // Misplaced declaration of an exception variable
            catch (Location location)
            {
                return null;
            }
            return location;
        } else
        {
            return null;
        }
    }

    private void a(JSONObject jsonobject)
    {
        if (ac != null)
        {
            for (Iterator iterator = ac.entrySet().iterator(); iterator.hasNext();)
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                try
                {
                    jsonobject.put((String)entry.getKey(), entry.getValue());
                }
                catch (JSONException jsonexception)
                {
                    au.a(null, null, jsonexception);
                }
            }

        }
    }

    public final JSONObject a()
    {
        Object obj1;
        JSONObject jsonobject;
        obj1 = null;
        jsonobject = new JSONObject();
        jsonobject.put("app_guid", a);
        jsonobject.put("app_id", b);
        jsonobject.put("app_version", c);
        if (d != -1) goto _L2; else goto _L1
_L1:
        Object obj = null;
_L23:
        jsonobject.put("base_station_id", obj);
        jsonobject.put("bssid", e);
        if (f != -1) goto _L4; else goto _L3
_L3:
        obj = null;
_L24:
        jsonobject.put("cell_id", obj);
        jsonobject.put("comp_version", g);
        jsonobject.put("conf_url", h);
        jsonobject.put("conf_version", i);
        jsonobject.put("conn_type", j);
        jsonobject.put("device_id", k);
        jsonobject.put("device_model", l);
        jsonobject.put("device_name", m);
        if (n != -1L) goto _L6; else goto _L5
_L5:
        obj = null;
_L25:
        jsonobject.put("device_uptime", obj);
        jsonobject.put("ip_addrs", o);
        if (p != null) goto _L8; else goto _L7
_L7:
        obj = null;
_L26:
        jsonobject.put("ip_addresses", obj);
        if (q != null) goto _L10; else goto _L9
_L9:
        obj = null;
_L27:
        jsonobject.put("known_apps", obj);
        if (!"".equals(r)) goto _L12; else goto _L11
_L11:
        obj = null;
_L28:
        jsonobject.put("line_1_number", obj);
        jsonobject.put("linker_id", s);
        jsonobject.put("locale_country", t);
        jsonobject.put("locale_lang", u);
        jsonobject.put("location", a(v));
        if (w != -1) goto _L14; else goto _L13
_L13:
        obj = null;
_L29:
        jsonobject.put("location_area_code", obj);
        jsonobject.put("mac_addrs", x);
        jsonobject.put("os_type", y);
        jsonobject.put("os_version", z);
        jsonobject.put("payload_type", ad);
        jsonobject.put("phone_type", A);
        jsonobject.put("risk_comp_session_id", B);
        jsonobject.put("roaming", C);
        if (!"".equals(D)) goto _L16; else goto _L15
_L15:
        obj = null;
_L30:
        jsonobject.put("sim_operator_name", obj);
        jsonobject.put("sim_serial_number", E);
        jsonobject.put("sms_enabled", F);
        jsonobject.put("ssid", G);
        if (M != -1) goto _L18; else goto _L17
_L17:
        obj = null;
_L31:
        jsonobject.put("cdma_network_id", obj);
        if (L != -1) goto _L20; else goto _L19
_L19:
        obj = null;
_L32:
        jsonobject.put("cdma_system_id", obj);
        jsonobject.put("subscriber_id", H);
        jsonobject.put("timestamp", I);
        jsonobject.put("total_storage_space", J);
        jsonobject.put("tz_name", K);
        jsonobject.put("network_operator", N);
        if (O != -1) goto _L22; else goto _L21
_L21:
        obj = obj1;
_L33:
        int i1;
        try
        {
            jsonobject.put("source_app", obj);
            jsonobject.put("source_app_version", P);
            jsonobject.put("is_emulator", Q);
            jsonobject.put("is_rooted", R);
            jsonobject.put("pairing_id", S);
            jsonobject.put("app_first_install_time", T);
            jsonobject.put("app_last_update_time", U);
            jsonobject.put("android_id", V);
            jsonobject.put("serial_number", Y);
            jsonobject.put("advertising_identifier", W);
            jsonobject.put("notif_token", X);
            jsonobject.put("bluetooth_mac_addrs", null);
            jsonobject.put("gsf_id", Z);
            jsonobject.put("VPN_setting", ab);
            jsonobject.put("proxy_setting", aa);
            a(jsonobject);
        }
        catch (JSONException jsonexception)
        {
            return jsonobject;
        }
        return jsonobject;
_L2:
        obj = Integer.valueOf(d);
          goto _L23
_L4:
        obj = Integer.valueOf(f);
          goto _L24
_L6:
        obj = Long.valueOf(n);
          goto _L25
_L8:
        obj = new JSONArray(p);
          goto _L26
_L10:
        obj = new JSONArray(q);
          goto _L27
_L12:
        obj = r;
          goto _L28
_L14:
        obj = Integer.valueOf(w);
          goto _L29
_L16:
        obj = D;
          goto _L30
_L18:
        obj = Integer.valueOf(M);
          goto _L31
_L20:
        obj = Integer.valueOf(L);
          goto _L32
_L22:
        i1 = O;
        obj = Integer.valueOf(i1);
          goto _L33
    }

    public final JSONObject a(Y y1)
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("is_emulator", y1.Q);
            jsonobject.put("is_rooted", y1.R);
            jsonobject.put("app_guid", y1.a);
            jsonobject.put("risk_comp_session_id", y1.B);
            jsonobject.put("timestamp", y1.I);
            jsonobject.put("payload_type", "incremental");
            jsonobject.put("source_app", y1.O);
            jsonobject.put("pairing_id", y1.S);
            a(jsonobject);
            if (b != null && !b.equals(y1.b))
            {
                jsonobject.put("app_id", y1.b);
            }
            if (c != null && !c.equals(y1.c))
            {
                jsonobject.put("app_version", y1.c);
            }
            if (d != y1.d)
            {
                jsonobject.put("base_station_id", y1.d);
            }
            if (e != null && !e.equals(y1.e))
            {
                jsonobject.put("bssid", y1.e);
            }
            if (f != y1.f)
            {
                jsonobject.put("cell_id", y1.f);
            }
            if (g != null && !g.equals(y1.g))
            {
                jsonobject.put("comp_version", y1.g);
            }
            if (i != null && !i.equals(y1.i))
            {
                jsonobject.put("conf_version", y1.i);
            }
            if (h != null && !h.equals(y1.h))
            {
                jsonobject.put("conf_url", y1.h);
            }
            if (j != null && !j.equals(y1.j))
            {
                jsonobject.put("conn_type", y1.j);
            }
            if (k != null && !k.equals(y1.k))
            {
                jsonobject.put("device_id", y1.k);
            }
            if (l != null && !l.equals(y1.l))
            {
                jsonobject.put("device_model", y1.l);
            }
            if (m != null && !m.equals(y1.m))
            {
                jsonobject.put("device_name", y1.m);
            }
            if (n != y1.n)
            {
                jsonobject.put("device_uptime", y1.n);
            }
            if (o != null && !o.equals(y1.o))
            {
                jsonobject.put("ip_addrs", y1.o);
            }
            if (p != null && y1.p != null && !p.toString().equals(y1.p.toString()))
            {
                jsonobject.put("ip_addresses", new JSONArray(y1.p));
            }
            if (q != null && y1.q != null && !q.toString().equals(y1.q.toString()))
            {
                jsonobject.put("known_apps", new JSONArray(y1.q));
            }
            if (r != null && !r.equals(y1.r))
            {
                jsonobject.put("line_1_number", y1.r);
            }
            if (s != null && !s.equals(y1.s))
            {
                jsonobject.put("linker_id", y1.s);
            }
            if (t != null && !t.equals(y1.t))
            {
                jsonobject.put("locale_country", y1.t);
            }
            if (u != null && !u.equals(y1.u))
            {
                jsonobject.put("locale_lang", y1.u);
            }
            if (v != null && y1.v != null && !v.toString().equals(y1.v.toString()))
            {
                jsonobject.put("location", a(y1.v));
            }
            if (w != y1.w)
            {
                jsonobject.put("location_area_code", y1.w);
            }
            if (x != null && !x.equals(y1.x))
            {
                jsonobject.put("mac_addrs", y1.x);
            }
            if (y != null && !y.equals(y1.y))
            {
                jsonobject.put("os_type", y1.y);
            }
            if (z != null && !z.equals(y1.z))
            {
                jsonobject.put("os_version", y1.z);
            }
            if (A != null && !A.equals(y1.A))
            {
                jsonobject.put("phone_type", y1.A);
            }
            if (C != null && C.equals(y1.C))
            {
                jsonobject.put("roaming", y1.C);
            }
            if (D != null && !D.equals(y1.D))
            {
                jsonobject.put("sim_operator_name", y1.D);
            }
            if (E != null && !E.equals(y1.E))
            {
                jsonobject.put("sim_serial_number", y1.E);
            }
            if (F != null && F.equals(y1.F))
            {
                jsonobject.put("sms_enabled", y1.F);
            }
            if (G != null && !G.equals(y1.G))
            {
                jsonobject.put("ssid", y1.G);
            }
            if (M != y1.M)
            {
                jsonobject.put("cdma_network_id", y1.M);
            }
            if (L != y1.L)
            {
                jsonobject.put("cdma_system_id", y1.L);
            }
            if (H != null && !H.equals(y1.H))
            {
                jsonobject.put("subscriber_id", y1.H);
            }
            if (J != y1.J)
            {
                jsonobject.put("total_storage_space", y1.J);
            }
            if (K != null && !K.equals(y1.K))
            {
                jsonobject.put("tz_name", y1.K);
            }
            if (N != null && !N.equals(y1.N))
            {
                jsonobject.put("network_operator", y1.N);
            }
            if (P != null && !P.equals(y1.P))
            {
                jsonobject.put("source_app_version", y1.P);
            }
            if (T != y1.T)
            {
                jsonobject.put("app_first_install_time", y1.T);
            }
            if (U != y1.U)
            {
                jsonobject.put("app_last_update_time", y1.U);
            }
            if (V != null && !V.equals(y1.V))
            {
                jsonobject.put("android_id", y1.V);
            }
            if (Y != null && !Y.equals(y1.Y))
            {
                jsonobject.put("serial_number", y1.Y);
            }
            if (W != null && !W.equals(y1.W))
            {
                jsonobject.put("advertising_identifier", y1.W);
            }
            if (X != null && !X.equals(y1.X))
            {
                jsonobject.put("notif_token", y1.X);
            }
            if (Z != null && !Z.equals(y1.Z))
            {
                jsonobject.put("gsf_id", y1.Z);
            }
            if (ab != null && !ab.equals(y1.ab))
            {
                jsonobject.put("VPN_setting", y1.ab);
            }
            if (aa != null && !aa.equals(y1.aa))
            {
                jsonobject.put("proxy_setting", y1.aa);
            }
        }
        // Misplaced declaration of an exception variable
        catch (Y y1)
        {
            return jsonobject;
        }
        return jsonobject;
    }
}
