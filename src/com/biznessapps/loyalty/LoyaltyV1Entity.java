// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import java.io.Serializable;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyCommonEntity

public class LoyaltyV1Entity extends LoyaltyCommonEntity
{
    public static class LoyaltyCardItem
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


        public LoyaltyCardItem()
        {
            isLocked = true;
        }
    }


    private static final long serialVersionUID = 0x680cbf8adde0efd0L;
    private List coupons;
    private boolean showAsPercents;
    private boolean useGaugeOption;

    public LoyaltyV1Entity()
    {
    }

    public int getApprovedCount()
    {
        if (coupons != null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L4:
        return j;
_L2:
        int i = 0;
        Iterator iterator = coupons.iterator();
        do
        {
            j = i;
            if (!iterator.hasNext())
            {
                continue;
            }
            if (((LoyaltyCardItem)iterator.next()).isApproved)
            {
                i++;
            }
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getAwardedValue()
    {
        return getApprovedCount();
    }

    public List getCoupons()
    {
        return coupons;
    }

    public int getTotalValue()
    {
        return coupons.size();
    }

    public void setApprovedCount(int i)
    {
        int j = Math.min(i, coupons.size());
        i = 0;
        while (i < coupons.size()) 
        {
            LoyaltyCardItem loyaltycarditem = (LoyaltyCardItem)coupons.get(i);
            if (i < j)
            {
                loyaltycarditem.setApproved(true);
            } else
            {
                loyaltycarditem.setApproved(false);
            }
            i++;
        }
    }

    public void setAwardedValue(int i)
    {
        setApprovedCount(i);
    }

    public void setCoupons(List list)
    {
        coupons = list;
    }

    public void setShowAsPercents(boolean flag)
    {
        showAsPercents = flag;
    }

    public void setUseGaugeOption(boolean flag)
    {
        useGaugeOption = flag;
    }

    public boolean showAsPercents()
    {
        return showAsPercents;
    }

    public boolean stampCompleted()
    {
        int i = getApprovedCount();
        int j = coupons.size();
        boolean flag;
        if (i <= j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        return i == j;
    }

    public boolean useGaugeOption()
    {
        return useGaugeOption;
    }
}
