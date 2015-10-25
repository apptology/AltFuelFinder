// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import java.io.Serializable;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1Entity

public static class isLocked
    implements Serializable
{

    private static final long serialVersionUID = 0xb10369cd959dd574L;
    private String couponCode;
    private String couponId;
    private boolean isAlreadyUnLocked;
    private boolean isApproved;
    private boolean isLast;
    private boolean isLocked;

    public String getCouponCode()
    {
        return couponCode;
    }

    public String getCouponId()
    {
        return couponId;
    }

    public boolean isAlreadyUnLocked()
    {
        return isAlreadyUnLocked;
    }

    public boolean isApproved()
    {
        return isApproved;
    }

    public boolean isLast()
    {
        return isLast;
    }

    public boolean isLocked()
    {
        return isLocked;
    }

    public void setAlreadyUnLocked(boolean flag)
    {
        isAlreadyUnLocked = flag;
    }

    public void setApproved(boolean flag)
    {
        isApproved = flag;
    }

    public void setCouponCode(String s)
    {
        couponCode = s;
    }

    public void setCouponId(String s)
    {
        couponId = s;
    }

    public void setLast(boolean flag)
    {
        isLast = flag;
    }

    public void setLocked(boolean flag)
    {
        isLocked = flag;
    }


    public ()
    {
        isLocked = true;
    }
}
