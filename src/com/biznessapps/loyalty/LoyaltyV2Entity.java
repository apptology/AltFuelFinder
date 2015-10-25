// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyCommonEntity, LoyaltyV2Perk

public class LoyaltyV2Entity extends LoyaltyCommonEntity
{

    private static final long serialVersionUID = 0xd450158abf0e6e72L;
    public HashMap consumedLoyaltyPerks;
    private List definedLoyaltyPerks;
    public String instruction;
    public String perkUnitType;
    public int pushAcceptAward;
    public boolean rewardOnDownload;
    public String rewardOnDownloadText;
    public boolean showActivity;
    public boolean showGaugeView;
    public int stampAwardAmount;
    private int totalAwardedPoints;
    public int totalPerks;
    public String unitShortHand;

    public LoyaltyV2Entity()
    {
        definedLoyaltyPerks = new ArrayList();
        consumedLoyaltyPerks = new HashMap();
    }

    private void refreshAvailablePerkItems()
    {
        if (definedLoyaltyPerks != null)
        {
            Iterator iterator = definedLoyaltyPerks.iterator();
            while (iterator.hasNext()) 
            {
                LoyaltyV2Perk loyaltyv2perk = (LoyaltyV2Perk)iterator.next();
                if (loyaltyv2perk.totalPoints <= totalAwardedPoints)
                {
                    loyaltyv2perk.isAvailable = true;
                } else
                {
                    loyaltyv2perk.isAvailable = false;
                }
            }
        }
    }

    public int getAwardedValue()
    {
        return totalAwardedPoints;
    }

    public List getDefinedLoyaltyPerks()
    {
        return definedLoyaltyPerks;
    }

    public int getMaxPerkValue()
    {
        int j = 0;
        int i = 0;
        if (definedLoyaltyPerks != null)
        {
            Iterator iterator = definedLoyaltyPerks.iterator();
            do
            {
                j = i;
                if (!iterator.hasNext())
                {
                    break;
                }
                i = Math.max(i, ((LoyaltyV2Perk)iterator.next()).totalPoints);
            } while (true);
        }
        return j;
    }

    public int getTotalValue()
    {
        return getMaxPerkValue();
    }

    public void markAsConsumed(String s)
    {
        Assert.assertFalse(StringUtils.isEmpty(s));
        Iterator iterator = definedLoyaltyPerks.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            LoyaltyV2Perk loyaltyv2perk = (LoyaltyV2Perk)iterator.next();
            if (loyaltyv2perk.getId().equals(s))
            {
                loyaltyv2perk.isConsumed = true;
                consumedLoyaltyPerks.put(s, loyaltyv2perk);
            }
        } while (true);
        refreshAvailablePerkItems();
    }

    public void setAwardedValue(int i)
    {
        totalAwardedPoints = i;
        refreshAvailablePerkItems();
    }

    public void setDefinedLoyaltyPerks(List list)
    {
        definedLoyaltyPerks = list;
        refreshAvailablePerkItems();
    }
}
