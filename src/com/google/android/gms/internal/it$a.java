// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            kp, it, ks, kt, 
//            ko, kn

public static final class lV extends kp
{

    public long aaY;
    public aaZ aaZ;
    public aaZ fK;

    public static lV l(byte abyte0[])
        throws ks
    {
        return (lV)kt.a(new <init>(), abyte0);
    }

    public void a(ko ko1)
        throws IOException
    {
        ko1.b(1, aaY);
        if (fK != null)
        {
            ko1.a(2, fK);
        }
        if (aaZ != null)
        {
            ko1.a(3, aaZ);
        }
        super.a(ko1);
    }

    public kt b(kn kn1)
        throws IOException
    {
        return n(kn1);
    }

    public int c()
    {
        int j = super.c() + ko.d(1, aaY);
        int i = j;
        if (fK != null)
        {
            i = j + ko.b(2, fK);
        }
        j = i;
        if (aaZ != null)
        {
            j = i + ko.b(3, aaZ);
        }
        adY = j;
        return j;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        if (obj != this) goto _L2; else goto _L1
_L1:
        boolean flag = true;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (!(obj instanceof adY)) goto _L4; else goto _L3
_L3:
        obj = (adY)obj;
        flag = flag1;
        if (aaY != ((aaY) (obj)).aaY) goto _L4; else goto _L5
_L5:
        if (fK != null) goto _L7; else goto _L6
_L6:
        flag = flag1;
        if (((fK) (obj)).fK != null) goto _L4; else goto _L8
_L8:
        if (aaZ != null) goto _L10; else goto _L9
_L9:
        flag = flag1;
        if (((aaZ) (obj)).aaZ != null) goto _L4; else goto _L11
_L11:
        if (adU != null && !adU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_145;
        }
        if (((adU) (obj)).adU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (!((adU) (obj)).adU.isEmpty()) goto _L4; else goto _L12
_L12:
        return true;
_L7:
        if (!fK.quals(((quals) (obj)).fK))
        {
            return false;
        }
          goto _L8
_L10:
        if (!aaZ.quals(((quals) (obj)).aaZ))
        {
            return false;
        }
          goto _L11
        return adU.equals(((adU) (obj)).adU);
          goto _L8
    }

    public int hashCode()
    {
        boolean flag = false;
        int i1 = (int)(aaY ^ aaY >>> 32);
        int i;
        int j;
        int k;
        if (fK == null)
        {
            i = 0;
        } else
        {
            i = fK.ashCode();
        }
        if (aaZ == null)
        {
            j = 0;
        } else
        {
            j = aaZ.ashCode();
        }
        k = ((flag) ? 1 : 0);
        if (adU != null)
        {
            if (adU.isEmpty())
            {
                k = ((flag) ? 1 : 0);
            } else
            {
                k = adU.hashCode();
            }
        }
        return (j + (i + (i1 + 527) * 31) * 31) * 31 + k;
    }

    public adU lV()
    {
        aaY = 0L;
        fK = null;
        aaZ = null;
        adU = null;
        adY = -1;
        return this;
    }

    public adY n(kn kn1)
        throws IOException
    {
        do
        {
            int i = kn1.mh();
            switch (i)
            {
            default:
                if (a(kn1, i))
                {
                    continue;
                }
                // fall through

            case 0: // '\0'
                return this;

            case 8: // '\b'
                aaY = kn1.mj();
                break;

            case 18: // '\022'
                if (fK == null)
                {
                    fK = new init>();
                }
                kn1.a(fK);
                break;

            case 26: // '\032'
                if (aaZ == null)
                {
                    aaZ = new init>();
                }
                kn1.a(aaZ);
                break;
            }
        } while (true);
    }

    public ()
    {
        lV();
    }
}
