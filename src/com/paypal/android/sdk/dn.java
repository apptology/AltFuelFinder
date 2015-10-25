// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dn
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dn()
    {
        a.put(df.a, "Cancelar");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Hecho");
        a.put(df.h, "CVV");
        a.put(df.i, "C\363digo postal");
        a.put(df.j, "Caduca");
        a.put(df.k, "MM/AA");
        a.put(df.l, "Mantenga la tarjeta aqu\355.\nSe escanear\341 autom\341ticamente.");
        a.put(df.m, "Teclado\u2026");
        a.put(df.n, "N\372mero de tarjeta");
        a.put(df.o, "Detalles de la tarjeta");
        a.put(df.p, "Este dispositivo no puede usar la c\341mara para leer n\372meros de tarjeta.");
        a.put(df.q, "La c\341mara del dispositivo no est\341 disponible.");
        a.put(df.r, "Al abrir la c\341mara, el dispositivo ha experimentado un error inesperado.");
    }

    public final String a()
    {
        return "es";
    }

    public final String a(Enum enum, String s)
    {
        enum = (df)enum;
        s = (new StringBuilder()).append(enum.toString()).append("|").append(s).toString();
        if (b.containsKey(s))
        {
            return (String)b.get(s);
        } else
        {
            return (String)a.get(enum);
        }
    }

}
