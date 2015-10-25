// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.util.Log;
import com.biznessapps.utils.CommonParser;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1Entity, LoyaltyV2Entity, LoyaltyV2Perk

public class LoyaltyJsonParser extends CommonParser
{

    private static final String COUPONS_DATA = "couponsData";
    private static final String COUPON_CODE = "couponCode";
    private static final String COUPON_ID = "couponID";
    private static final String REWARD_ID = "RewardID";
    private static final String REWARD_ITEMS = "rewardItems";
    private static final String VIEW_PROGRESS = "view_progress";
    private static final String VIEW_TYPE = "view_type";
    private static LoyaltyJsonParser parser;

    public LoyaltyJsonParser()
    {
    }

    public static LoyaltyJsonParser getInstance()
    {
        if (parser == null)
        {
            parser = new LoyaltyJsonParser();
        }
        return parser;
    }

    private LoyaltyV1Entity parseLoyaltyV1Entity(JSONObject jsonobject)
        throws JSONException
    {
        boolean flag = true;
        LoyaltyV1Entity loyaltyv1entity = new LoyaltyV1Entity();
        loyaltyv1entity.setId(getValue(jsonobject, "RewardID"));
        loyaltyv1entity.setTitle(getValue(jsonobject, "text"));
        loyaltyv1entity.setImageUrl(getValue(jsonobject, "thumbnail"));
        loyaltyv1entity.setBackground(getValue(jsonobject, "background"));
        loyaltyv1entity.setHeaderImage(getValue(jsonobject, "headerImage"));
        ArrayList arraylist;
        JSONArray jsonarray;
        JSONObject jsonobject1;
        LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem;
        int i;
        if (getBooleanValue(jsonobject, "view_progress"))
        {
            flag = false;
        }
        loyaltyv1entity.setShowAsPercents(flag);
        loyaltyv1entity.setUseGaugeOption(getBooleanValue(jsonobject, "view_type"));
        arraylist = new ArrayList();
        try
        {
            jsonarray = jsonobject.optJSONArray("couponsData");
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            return loyaltyv1entity;
        }
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_223;
        }
        i = 0;
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject1 = jsonarray.getJSONObject(i);
        loyaltycarditem = new LoyaltyV1Entity.LoyaltyCardItem();
        loyaltycarditem.setCouponCode(getValue(jsonobject1, "couponCode"));
        loyaltycarditem.setCouponId(getValue(jsonobject1, "couponID"));
        if (i == jsonarray.length() - 1)
        {
            loyaltycarditem.setLast(true);
        }
        arraylist.add(loyaltycarditem);
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_117;
_L1:
        loyaltyv1entity.setCoupons(arraylist);
        loyaltyv1entity.setAwardedValue(getIntValue(jsonobject, "current_count"));
        return loyaltyv1entity;
    }

    private LoyaltyV2Entity parseLoyaltyV2Entity(JSONObject jsonobject)
        throws JSONException
    {
        LoyaltyV2Entity loyaltyv2entity = new LoyaltyV2Entity();
        loyaltyv2entity.setId(getValue(jsonobject, "RewardID"));
        loyaltyv2entity.setTitle(getValue(jsonobject, "text"));
        loyaltyv2entity.setImageUrl(getValue(jsonobject, "thumbnail"));
        loyaltyv2entity.setBackground(getValue(jsonobject, "background"));
        loyaltyv2entity.instruction = getValue(jsonobject, "instruction");
        loyaltyv2entity.perkUnitType = getValue(jsonobject, "perk_unit_type");
        loyaltyv2entity.unitShortHand = getValue(jsonobject, "unit_shorthand");
        loyaltyv2entity.totalPerks = getIntValue(jsonobject, "total_perks");
        loyaltyv2entity.stampAwardAmount = getIntValue(jsonobject, "stamp_award_amount");
        loyaltyv2entity.pushAcceptAward = getIntValue(jsonobject, "push_accept_award");
        loyaltyv2entity.rewardOnDownload = getBooleanValue(jsonobject, "reward_on_download");
        loyaltyv2entity.rewardOnDownloadText = getValue(jsonobject, "reward_on_download_text");
        loyaltyv2entity.setAwardedValue(getIntValue(jsonobject, "current_count"));
        loyaltyv2entity.showGaugeView = true;
        Object obj = new ArrayList();
        HashMap hashmap = new HashMap();
        Object obj1 = jsonobject.getJSONArray("perks");
        for (int i = 0; i < ((JSONArray) (obj1)).length(); i++)
        {
            JSONObject jsonobject1 = ((JSONArray) (obj1)).getJSONObject(i);
            LoyaltyV2Perk loyaltyv2perk = new LoyaltyV2Perk();
            loyaltyv2perk.setId(getValue(jsonobject1, "id"));
            loyaltyv2perk.setTitle(getValue(jsonobject1, "title"));
            loyaltyv2perk.setDescription(getValue(jsonobject1, "description"));
            loyaltyv2perk.totalPoints = getIntValue(jsonobject1, "total_points");
            loyaltyv2perk.reused = getBooleanValue(jsonobject1, "reused");
            loyaltyv2perk.setImageUrl(getValue(jsonobject1, "thumbnail"));
            loyaltyv2perk.gaugeIcon = getValue(jsonobject1, "gauge_icon");
            ((List) (obj)).add(loyaltyv2perk);
            hashmap.put(loyaltyv2perk.getId(), loyaltyv2perk);
        }

        loyaltyv2entity.setDefinedLoyaltyPerks(((List) (obj)));
        obj = new HashMap();
        jsonobject = getJSONValue(jsonobject, "user_loyalty_perks");
        obj1 = jsonobject.keys();
        if (jsonobject != null && obj1 != null)
        {
            do
            {
                if (!((Iterator) (obj1)).hasNext())
                {
                    break;
                }
                Object obj2 = (String)((Iterator) (obj1)).next();
                if (getValue(jsonobject, ((String) (obj2))).equals("-1"))
                {
                    if (hashmap.containsKey(obj2))
                    {
                        obj2 = (LoyaltyV2Perk)hashmap.get(obj2);
                        obj2.isConsumed = true;
                        ((HashMap) (obj)).put(((LoyaltyV2Perk) (obj2)).getId(), obj2);
                    } else
                    {
                        Log.w("Loyalty", "consumed perk id doesn't included at the perk list");
                    }
                }
            } while (true);
            loyaltyv2entity.consumedLoyaltyPerks = ((HashMap) (obj));
        }
        return loyaltyv2entity;
    }

    public List parseLoyaltyList(String s)
    {
        ArrayList arraylist = new ArrayList();
        JSONArray jsonarray = (new JSONObject(s)).getJSONArray("rewardItems");
        int i = 0;
_L3:
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_89;
        }
        s = jsonarray.getJSONObject(i);
        if (!getBooleanValue(s, "is_advanced"))
        {
            break MISSING_BLOCK_LABEL_75;
        }
        s = parseLoyaltyV2Entity(s);
_L1:
        arraylist.add(s);
        i++;
        continue; /* Loop/switch isn't completed */
        s = parseLoyaltyV1Entity(s);
          goto _L1
        s;
        s.printStackTrace();
        return arraylist;
        if (true) goto _L3; else goto _L2
_L2:
    }
}
