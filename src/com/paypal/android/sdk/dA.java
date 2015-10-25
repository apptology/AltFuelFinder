// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dA
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dA()
    {
        a.put(df.a, "Cancelar");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Conclu\355do");
        a.put(df.h, "CSC");
        a.put(df.i, "C\363digo Postal");
        a.put(df.j, "Validade");
        a.put(df.k, "MM/AA");
        a.put(df.l, "Segure o cart\343o aqui.\nSer\341 lido automaticamente.");
        a.put(df.m, "Teclado\u2026");
        a.put(df.n, "N\372mero do cart\343o");
        a.put(df.o, "Detalhes do cart\343o");
        a.put(df.p, "Este dispositivo n\343o pode utilizar a c\342mara para ler n\372meros de cart\365es.");
        a.put(df.q, "A c\342mara do dispositivo n\343o est\341 dispon\355vel.");
        a.put(df.r, "Ocorreu um erro inesperado no dispositivo ao abrir a c\342mara.");
    }

    public final String a()
    {
        return "pt";
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
