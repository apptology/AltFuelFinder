// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.text.TextUtils;

class ap
{

    private final long XX;
    private String XY;
    private final long vi;
    private final long vj;

    ap(long l, long l1, long l2)
    {
        vi = l;
        vj = l1;
        XX = l2;
    }

    void K(String s)
    {
        if (s == null || TextUtils.isEmpty(s.trim()))
        {
            return;
        } else
        {
            XY = s;
            return;
        }
    }

    long cP()
    {
        return vi;
    }

    long kD()
    {
        return XX;
    }

    String kE()
    {
        return XY;
    }
}
