// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            fa, fo

public static final class CS
{

    public final int CR;
    public final int CS;

    public boolean equals(Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof CS) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (this == obj) goto _L4; else goto _L3
_L3:
        obj = (CS)obj;
        if (((CS) (obj)).CR != CR)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (((CR) (obj)).CS == CS) goto _L4; else goto _L5
_L5:
        return false;
    }

    public int hashCode()
    {
        return fo.hashCode(new Object[] {
            Integer.valueOf(CR), Integer.valueOf(CS)
        });
    }

    public (int i, int j)
    {
        CR = i;
        CS = j;
    }
}