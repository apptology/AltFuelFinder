// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.paypal.android.sdk:
//            dg, df

public final class dB
    implements dg
{

    private static Map a = new HashMap();
    private static Map b = new HashMap();

    public dB()
    {
        a.put(df.a, "Cancelar");
        a.put(df.b, "American Express");
        a.put(df.c, "Discover");
        a.put(df.d, "JCB");
        a.put(df.e, "MasterCard");
        a.put(df.f, "Visa");
        a.put(df.g, "Conclu\355do");
        a.put(df.h, "CVV");
        a.put(df.i, "CEP");
        a.put(df.j, "Vencimento");
        a.put(df.k, "MM/AA");
        a.put(df.l, "Posicionar cart\343o aqui.\nEle ser\341 digitalizado automaticamente.");
        a.put(df.m, "Teclado\u2026");
        a.put(df.n, "N\372mero do Cart\343o");
        a.put(df.o, "Dados do cart\343o");
        a.put(df.p, "Este dispositivo n\343o pode usar a c\342mera para ler n\372meros de cart\343o.");
        a.put(df.q, "A c\342mera do dispositivo n\343o est\341 dispon\355vel.");
        a.put(df.r, "O dispositivo sofreu um erro inesperado ao abrir a c\342mera.");
    }

    public final String a()
    {
        return "pt_BR";
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
