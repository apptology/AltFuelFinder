// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.parser;

import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.food_ordering.FoodOrderingManager;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.biznessapps.food_ordering.entities.CategoryEntity;
import com.biznessapps.food_ordering.entities.CommonInfo;
import com.biznessapps.food_ordering.entities.OrderEntity;
import com.biznessapps.food_ordering.entities.OrderOptionEntity;
import com.biznessapps.food_ordering.entities.PastOrderEntity;
import com.biznessapps.food_ordering.entities.RestaurantEntity;
import com.biznessapps.food_ordering.entities.TaxEntity;
import com.biznessapps.food_ordering.locations.FOOpeningTime;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParserCommon;
import com.biznessapps.utils.json.ParserConstants;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.food_ordering.parser:
//            FoodOrderingConstants

public class FoodOrderingParser extends JsonParserCommon
    implements ParserConstants, FoodOrderingConstants
{

    public FoodOrderingParser()
    {
    }

    public static final List getAvailableItems(String s)
    {
        ArrayList arraylist = new ArrayList();
        int k;
        s = new JSONArray(s);
        k = s.length();
        int i = 0;
_L4:
        if (i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        com.biznessapps.food_ordering.entities.CategoryEntity.Item item;
        Object obj;
        obj = s.getJSONObject(i);
        item = new com.biznessapps.food_ordering.entities.CategoryEntity.Item();
        item.setId(getStringValue(((JSONObject) (obj)), "item_id"));
        item.setCategoryId(getStringValue(((JSONObject) (obj)), "category_id"));
        item.setNote(getStringValue(((JSONObject) (obj)), "note"));
        item.setQuantity(getIntValue(((JSONObject) (obj)), "quantity"));
        item.setSize(getStringValue(((JSONObject) (obj)), "size"));
        item.setSizeValue(getStringValue(((JSONObject) (obj)), "size_id"));
        item.setTaxExempted(getBooleanValue(((JSONObject) (obj)), "tax_exempted"));
        item.setPrice(getFloatValue(((JSONObject) (obj)), "price"));
        item.setTitle(getStringValue(((JSONObject) (obj)), "name"));
        item.setImageUrl(getStringValue(((JSONObject) (obj)), "thumbnail"));
        obj = ((JSONObject) (obj)).optJSONArray("options");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_262;
        }
        ArrayList arraylist1;
        int l;
        arraylist1 = new ArrayList();
        l = ((JSONArray) (obj)).length();
        int j = 0;
_L2:
        if (j >= l)
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = ((JSONArray) (obj)).getJSONObject(j);
        OrderOptionEntity orderoptionentity = new OrderOptionEntity();
        orderoptionentity.setId(getStringValue(jsonobject, "option_id"));
        orderoptionentity.setName(getStringValue(jsonobject, "name"));
        orderoptionentity.setCharges(getFloatValue(jsonobject, "price"));
        arraylist1.add(orderoptionentity);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        item.setOptions(arraylist1);
        arraylist.add(item);
        i++;
        if (true) goto _L4; else goto _L3
        s;
        s.printStackTrace();
_L3:
        return arraylist;
    }

    private static List getIntervalsForDay(JSONObject jsonobject, String s)
        throws JSONException
    {
        ArrayList arraylist = new ArrayList();
        jsonobject = jsonobject.optJSONArray(s);
        if (jsonobject != null)
        {
            int j = jsonobject.length();
            for (int i = 0; i < j; i++)
            {
                s = jsonobject.getJSONObject(i);
                com.biznessapps.food_ordering.locations.FOOpeningTime.Interval interval = new com.biznessapps.food_ordering.locations.FOOpeningTime.Interval();
                interval.setFrom(getIntValue(s, "from"));
                interval.setTo(getIntValue(s, "to"));
                arraylist.add(interval);
            }

        }
        return arraylist;
    }

    public static AccountEntity parseAccoundData(String s)
    {
        AccountEntity accountentity = new AccountEntity();
        try
        {
            s = new JSONArray(s);
            if (s.length() < 0)
            {
                s = s.getJSONObject(0);
                accountentity.setAddress1(getStringValue(s, "address1"));
                accountentity.setAddress2(getStringValue(s, "address2"));
                accountentity.setZipcode(getStringValue(s, "zipcode"));
                accountentity.setPhone(getStringValue(s, "phone"));
                accountentity.setEmail(getStringValue(s, "email"));
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return accountentity;
        }
        return accountentity;
    }

    public static List parseCategories(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L3:
        CategoryEntity categoryentity;
        Object obj;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_240;
        }
        obj = s.getJSONObject(i);
        categoryentity = new CategoryEntity();
        categoryentity.setId(getStringValue(((JSONObject) (obj)), "id"));
        categoryentity.setTitle(getStringValue(((JSONObject) (obj)), "name"));
        categoryentity.setTotalItems(getIntValue(((JSONObject) (obj)), "total_items"));
        categoryentity.setImageUrl(getStringValue(((JSONObject) (obj)), "image"));
        obj = ((JSONObject) (obj)).optJSONArray("items");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        ArrayList arraylist1 = new ArrayList();
        int j = 0;
_L2:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = ((JSONArray) (obj)).getJSONObject(j);
        com.biznessapps.food_ordering.entities.CategoryEntity.Item item = new com.biznessapps.food_ordering.entities.CategoryEntity.Item();
        item.setId(getStringValue(jsonobject, "id"));
        item.setTitle(getStringValue(jsonobject, "name"));
        item.setDescription(getStringValue(jsonobject, "description"));
        item.setPrice(getFloatValue(jsonobject, "price"));
        item.setImageUrl(getStringValue(jsonobject, "thumbnail"));
        arraylist1.add(item);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        categoryentity.setItems(arraylist1);
        arraylist.add(categoryentity);
        i++;
          goto _L3
        s;
        s.printStackTrace();
        return arraylist;
    }

    public static FoodOrderingManager parseFoodMainData(String s)
    {
        FoodOrderingManager foodorderingmanager = FoodOrderingManager.getInstance();
        s = new JSONArray(s);
        if (s.length() <= 0) goto _L2; else goto _L1
_L1:
        Object obj;
        s = s.getJSONObject(0);
        obj = s.optJSONObject("restaurant");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_292;
        }
        RestaurantEntity restaurantentity = new RestaurantEntity();
        restaurantentity.setTitle(getStringValue(((JSONObject) (obj)), "name"));
        restaurantentity.setDescription(getStringValue(((JSONObject) (obj)), "description"));
        restaurantentity.setCuisineType(getStringValue(((JSONObject) (obj)), "cuisine_type"));
        String s1 = getValue(((JSONObject) (obj)), "currency");
        String s2 = getValue(((JSONObject) (obj)), "currency_sign");
        restaurantentity.setCurrency(s1);
        restaurantentity.setCurrencySign(s2);
        restaurantentity.setDineIn(getBooleanValue(((JSONObject) (obj)), "is_dinein"));
        restaurantentity.setTakeout(getBooleanValue(((JSONObject) (obj)), "is_takeout"));
        restaurantentity.setDelivery(getBooleanValue(((JSONObject) (obj)), "is_delivery"));
        restaurantentity.setDeliveryFee(getFloatValue(((JSONObject) (obj)), "delivery_fee"));
        restaurantentity.setDeliveryRadius(getFloatValue(((JSONObject) (obj)), "delivery_radius"));
        restaurantentity.setDeliveryMin(getFloatValue(((JSONObject) (obj)), "delivery_minimum"));
        restaurantentity.setConvenienceFeeTaxable(getBooleanValue(((JSONObject) (obj)), "convenience_fee_taxable"));
        restaurantentity.setDeliveryFeeTaxable(getBooleanValue(((JSONObject) (obj)), "delivery_fee_taxable"));
        restaurantentity.setFreeDeliveryAmount(getFloatValue(((JSONObject) (obj)), "free_delivery_amount"));
        restaurantentity.setConvenienceFee(getFloatValue(((JSONObject) (obj)), "convenience_fee"));
        restaurantentity.setDeliveryDays(getIntValue(((JSONObject) (obj)), "delivery_days"));
        restaurantentity.setTakeoutDays(getIntValue(((JSONObject) (obj)), "takeout_days"));
        restaurantentity.setLeadTime(getIntValue(((JSONObject) (obj)), "lead_time"));
        foodorderingmanager.setRestaurantEntity(restaurantentity);
        FoodOrderingManager.getInstance().getCart().setCurrency(s1);
        FoodOrderingManager.getInstance().getCart().setCurrencySign(s2);
        obj = s.optJSONArray("tax");
        if (obj == null) goto _L4; else goto _L3
_L3:
        Object obj1;
        int j;
        obj1 = new ArrayList();
        j = ((JSONArray) (obj)).length();
        int i = 0;
_L18:
        if (i >= j) goto _L6; else goto _L5
_L5:
        float f;
        Object obj2;
        JSONObject jsonobject = ((JSONArray) (obj)).optJSONObject(i);
        obj2 = new TaxEntity();
        ((TaxEntity) (obj2)).setTitle(getStringValue(jsonobject, "name"));
        ((TaxEntity) (obj2)).setType(getIntValue(jsonobject, "type"));
        f = getFloatValue(jsonobject, "amount");
        if (f <= 0.0F) goto _L8; else goto _L7
_L7:
        ((TaxEntity) (obj2)).setAmount(f);
        ((List) (obj1)).add(obj2);
          goto _L8
_L6:
        foodorderingmanager.setTaxes(((List) (obj1)));
_L4:
        foodorderingmanager.getCommonInfo().hasNavigationBar(getBooleanValue(s, "navbar"));
        foodorderingmanager.getCommonInfo().setAllowTips(getBooleanValue(s, "allow_tips"));
        foodorderingmanager.getCommonInfo().setViewMode(getStringValue(s, "view_mode"));
        foodorderingmanager.getCommonInfo().setBackground(getStringValue(s, "background"));
        obj = s.optJSONArray("payment_gateways");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_575;
        }
        j = ((JSONArray) (obj)).length();
        obj1 = new ArrayList();
        i = 0;
_L10:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject1 = ((JSONArray) (obj)).getJSONObject(i);
        obj2 = new com.biznessapps.food_ordering.entities.CommonInfo.PaymentMethod();
        ((com.biznessapps.food_ordering.entities.CommonInfo.PaymentMethod) (obj2)).setType(getIntValue(jsonobject1, "gateway_type"));
        ((com.biznessapps.food_ordering.entities.CommonInfo.PaymentMethod) (obj2)).setTitle(getValue(jsonobject1, "gateway_title"));
        ((List) (obj1)).add(obj2);
        i++;
        if (true) goto _L10; else goto _L9
_L9:
        foodorderingmanager.getCommonInfo().setPaymentGateways(((List) (obj1)));
        s = s.optJSONArray("orders");
        if (s == null) goto _L2; else goto _L11
_L11:
        int l;
        l = s.length();
        obj = new ArrayList();
        i = 0;
_L19:
        if (i >= l) goto _L13; else goto _L12
_L12:
        obj2 = s.getJSONObject(i);
        obj1 = ((JSONObject) (obj2)).optJSONArray("order_items");
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_1205;
        }
        if (((JSONArray) (obj1)).length() == 0)
        {
            break MISSING_BLOCK_LABEL_1205;
        }
        PastOrderEntity pastorderentity;
        pastorderentity = new PastOrderEntity();
        pastorderentity.setOrderType(getIntValue(((JSONObject) (obj2)), "order_type"));
        pastorderentity.setLocationId(getValue(((JSONObject) (obj2)), "loc_id"));
        pastorderentity.setTime(DateUtils.getDateWithOffset(getLongValue(((JSONObject) (obj2)), "due_on"), 0.0F));
        pastorderentity.setZip(getValue(((JSONObject) (obj2)), "zip"));
        pastorderentity.setTotalAmount(getFloatValue(((JSONObject) (obj2)), "total_amount"));
        pastorderentity.setCurrency(getValue(((JSONObject) (obj2)), "currency"));
        pastorderentity.setCurrencySign(getValue(((JSONObject) (obj2)), "currency_sign"));
        pastorderentity.setAddressBottomRow(getValue(((JSONObject) (obj2)), "address_bottom_row"));
        pastorderentity.setAddressTopRow(getValue(((JSONObject) (obj2)), "address_top_row"));
        pastorderentity.setAddress1(getValue(((JSONObject) (obj2)), "address_1"));
        pastorderentity.setAddress2(getValue(((JSONObject) (obj2)), "address_2"));
        pastorderentity.setCity(getValue(((JSONObject) (obj2)), "city"));
        pastorderentity.setState(getValue(((JSONObject) (obj2)), "state"));
        pastorderentity.setZip(getValue(((JSONObject) (obj2)), "zip"));
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_1170;
        }
        int i1;
        i1 = ((JSONArray) (obj1)).length();
        obj2 = new ArrayList();
        j = 0;
_L17:
        if (j >= i1)
        {
            break; /* Loop/switch isn't completed */
        }
        com.biznessapps.food_ordering.entities.CategoryEntity.Item item;
        Object obj3;
        obj3 = ((JSONArray) (obj1)).getJSONObject(j);
        item = new com.biznessapps.food_ordering.entities.CategoryEntity.Item();
        item.setId(getStringValue(((JSONObject) (obj3)), "item_id"));
        item.setCategoryId(getStringValue(((JSONObject) (obj3)), "category_id"));
        item.setNote(getStringValue(((JSONObject) (obj3)), "note"));
        item.setQuantity(getIntValue(((JSONObject) (obj3)), "quantity"));
        item.setSize(getStringValue(((JSONObject) (obj3)), "size"));
        item.setSizeValue(getStringValue(((JSONObject) (obj3)), "size_id"));
        item.setTaxExempted(getBooleanValue(((JSONObject) (obj3)), "tax_exempted"));
        item.setPrice(getFloatValue(((JSONObject) (obj3)), "price"));
        item.setTitle(getStringValue(((JSONObject) (obj3)), "name"));
        item.setImageUrl(getStringValue(((JSONObject) (obj3)), "thumbnail"));
        if (j != 0)
        {
            break MISSING_BLOCK_LABEL_1024;
        }
        pastorderentity.setThumbnail(getStringValue(((JSONObject) (obj3)), "thumbnail"));
        obj3 = ((JSONObject) (obj3)).optJSONArray("options");
        if (obj3 == null)
        {
            break MISSING_BLOCK_LABEL_1144;
        }
        ArrayList arraylist;
        int j1;
        arraylist = new ArrayList();
        j1 = ((JSONArray) (obj3)).length();
        int k = 0;
_L15:
        if (k >= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject2 = ((JSONArray) (obj3)).getJSONObject(k);
        OrderOptionEntity orderoptionentity = new OrderOptionEntity();
        orderoptionentity.setId(getStringValue(jsonobject2, "option_id"));
        orderoptionentity.setName(getStringValue(jsonobject2, "name"));
        orderoptionentity.setCharges(getFloatValue(jsonobject2, "price"));
        arraylist.add(orderoptionentity);
        k++;
        if (true) goto _L15; else goto _L14
_L14:
        item.setOptions(arraylist);
        ((List) (obj2)).add(item);
        j++;
        if (true) goto _L17; else goto _L16
_L16:
        pastorderentity.setOrderedItems(((List) (obj2)));
        ((List) (obj)).add(pastorderentity);
        break MISSING_BLOCK_LABEL_1205;
        s;
        s.printStackTrace();
_L2:
        return foodorderingmanager;
_L13:
        foodorderingmanager.setPastOrders(((List) (obj)));
        return foodorderingmanager;
_L8:
        i++;
          goto _L18
        i++;
          goto _L19
    }

    public static final LocationEntity parseLocation(String s)
    {
        LocationEntity locationentity;
        locationentity = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_410;
        }
        s = (new JSONArray(s)).getJSONObject(0);
        locationentity = new LocationEntity();
        boolean flag;
        locationentity.setId(getValue(s, "id"));
        locationentity.setTitle(getValue(s, "name"));
        locationentity.setImageUrl(getValue(s, "image"));
        locationentity.setTelephone(getValue(s, "telephone"));
        locationentity.setTelephoneDisplay(getValue(s, "telephone_display"));
        locationentity.setEmail(getValue(s, "email"));
        locationentity.setWebsite(getValue(s, "website"));
        locationentity.setLatitude(getValue(s, "latitude"));
        locationentity.setLongitude(getValue(s, "longitude"));
        locationentity.setAddressBottomRow(getValue(s, "address_bottom_row"));
        locationentity.setAddressTopRow(getValue(s, "address_top_row"));
        locationentity.setAddress1(getValue(s, "address_1"));
        locationentity.setAddress2(getValue(s, "address_2"));
        locationentity.setCity(getValue(s, "city"));
        locationentity.setState(getValue(s, "state"));
        locationentity.setZip(getValue(s, "zip"));
        locationentity.setComment(getValue(s, "comment"));
        locationentity.setImage1(getValue(s, "image1"));
        locationentity.setImage2(getValue(s, "image2"));
        locationentity.setDistanceType(getValue(s, "distance_type"));
        locationentity.setActiveStatus(getBooleanValue(s, "status"));
        locationentity.setAvailable(getBooleanValue(s, "is_allowed"));
        if (!s.has("opening_times"))
        {
            break MISSING_BLOCK_LABEL_410;
        }
        s = s.getString("opening_times");
        if (!StringUtils.isNotEmpty(s))
        {
            break MISSING_BLOCK_LABEL_410;
        }
        flag = s.equalsIgnoreCase("null");
        if (flag)
        {
            break MISSING_BLOCK_LABEL_410;
        }
        s = new JSONObject(s);
        FOOpeningTime foopeningtime = new FOOpeningTime();
        foopeningtime.addIntervals(2, getIntervalsForDay(s, "Monday"));
        foopeningtime.addIntervals(3, getIntervalsForDay(s, "Tuesday"));
        foopeningtime.addIntervals(4, getIntervalsForDay(s, "Wednesday"));
        foopeningtime.addIntervals(5, getIntervalsForDay(s, "Thursday"));
        foopeningtime.addIntervals(6, getIntervalsForDay(s, "Friday"));
        foopeningtime.addIntervals(7, getIntervalsForDay(s, "Saturday"));
        foopeningtime.addIntervals(1, getIntervalsForDay(s, "Sunday"));
        locationentity.setFoOpeningTime(foopeningtime);
_L4:
        return locationentity;
        s;
_L2:
        LocationEntity locationentity1 = new LocationEntity();
        locationentity1.getNetworkResult().setException(s);
        return locationentity1;
        s;
        if (true) goto _L2; else goto _L1
_L1:
        s;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final List parseLocations(String s)
    {
        ArrayList arraylist = new ArrayList();
        if (s != null) goto _L2; else goto _L1
_L1:
        s = new LocationEntity();
        s.getNetworkResult().setErrorCode(-5);
        arraylist.add(s);
_L6:
        return arraylist;
_L2:
        LocationEntity locationentity;
        Object obj;
        FOOpeningTime foopeningtime;
        int i;
        boolean flag;
        try
        {
            s = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            LocationEntity locationentity1 = new LocationEntity();
            locationentity1.getNetworkResult().setException(s);
            arraylist.add(locationentity1);
            return arraylist;
        }
        i = 0;
        if (i >= s.length())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = s.getJSONObject(i);
        locationentity = new LocationEntity();
        locationentity.setId(getValue(((JSONObject) (obj)), "id"));
        locationentity.setTitle(getValue(((JSONObject) (obj)), "name"));
        locationentity.setImageUrl(getValue(((JSONObject) (obj)), "image"));
        locationentity.setTelephone(getValue(((JSONObject) (obj)), "telephone"));
        locationentity.setTelephoneDisplay(getValue(((JSONObject) (obj)), "telephone_display"));
        locationentity.setEmail(getValue(((JSONObject) (obj)), "email"));
        locationentity.setWebsite(getValue(((JSONObject) (obj)), "website"));
        locationentity.setLatitude(getValue(((JSONObject) (obj)), "latitude"));
        locationentity.setLongitude(getValue(((JSONObject) (obj)), "longitude"));
        locationentity.setAddressBottomRow(getValue(((JSONObject) (obj)), "address_bottom_row"));
        locationentity.setAddressTopRow(getValue(((JSONObject) (obj)), "address_top_row"));
        locationentity.setAddress1(getValue(((JSONObject) (obj)), "address_1"));
        locationentity.setAddress2(getValue(((JSONObject) (obj)), "address_2"));
        locationentity.setCity(getValue(((JSONObject) (obj)), "city"));
        locationentity.setState(getValue(((JSONObject) (obj)), "state"));
        locationentity.setZip(getValue(((JSONObject) (obj)), "zip"));
        locationentity.setComment(getValue(((JSONObject) (obj)), "comment"));
        locationentity.setImage1(getValue(((JSONObject) (obj)), "image1"));
        locationentity.setImage2(getValue(((JSONObject) (obj)), "image2"));
        locationentity.setDistanceType(getValue(((JSONObject) (obj)), "distance_type"));
        locationentity.setActiveStatus(getBooleanValue(((JSONObject) (obj)), "status"));
        locationentity.setAvailable(getBooleanValue(((JSONObject) (obj)), "is_allowed"));
        if (!((JSONObject) (obj)).has("opening_times"))
        {
            break MISSING_BLOCK_LABEL_469;
        }
        obj = ((JSONObject) (obj)).getString("opening_times");
        if (!StringUtils.isNotEmpty(((String) (obj))))
        {
            break MISSING_BLOCK_LABEL_469;
        }
        flag = ((String) (obj)).equalsIgnoreCase("null");
        if (flag)
        {
            break MISSING_BLOCK_LABEL_469;
        }
        try
        {
            obj = new JSONObject(((String) (obj)));
            foopeningtime = new FOOpeningTime();
            foopeningtime.addIntervals(2, getIntervalsForDay(((JSONObject) (obj)), "Monday"));
            foopeningtime.addIntervals(3, getIntervalsForDay(((JSONObject) (obj)), "Tuesday"));
            foopeningtime.addIntervals(4, getIntervalsForDay(((JSONObject) (obj)), "Wednesday"));
            foopeningtime.addIntervals(5, getIntervalsForDay(((JSONObject) (obj)), "Thursday"));
            foopeningtime.addIntervals(6, getIntervalsForDay(((JSONObject) (obj)), "Friday"));
            foopeningtime.addIntervals(7, getIntervalsForDay(((JSONObject) (obj)), "Saturday"));
            foopeningtime.addIntervals(1, getIntervalsForDay(((JSONObject) (obj)), "Sunday"));
            locationentity.setFoOpeningTime(foopeningtime);
        }
        catch (JSONException jsonexception) { }
        arraylist.add(locationentity);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_482;
_L4:
        break MISSING_BLOCK_LABEL_51;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static OrderEntity parseOrder(String s)
    {
        OrderEntity orderentity = new OrderEntity();
        Object obj;
        s = new JSONArray(s);
        if (s.length() >= 0)
        {
            break MISSING_BLOCK_LABEL_367;
        }
        s = s.getJSONObject(0);
        orderentity.setId(getStringValue(s, "id"));
        orderentity.setTitle(getStringValue(s, "name"));
        orderentity.setPrice(getFloatValue(s, "price"));
        orderentity.setThumbnail(getStringValue(s, "thumbnail"));
        orderentity.setImageUrl(getStringValue(s, "image"));
        orderentity.setTaxExempted(getBooleanValue(s, "tax_exempted"));
        obj = s.optJSONArray("options");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_263;
        }
        Object obj1;
        Object obj2;
        OrderOptionEntity orderoptionentity;
        int i;
        try
        {
            obj1 = new ArrayList();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return orderentity;
        }
        i = 0;
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj2 = ((JSONArray) (obj)).getJSONObject(i);
        orderoptionentity = new OrderOptionEntity();
        orderoptionentity.setId(getStringValue(((JSONObject) (obj2)), "id"));
        orderoptionentity.setName(getStringValue(((JSONObject) (obj2)), "name"));
        orderoptionentity.setGroup(getStringValue(((JSONObject) (obj2)), "group"));
        orderoptionentity.setRequired(getBooleanValue(((JSONObject) (obj2)), "required"));
        orderoptionentity.setShown(getBooleanValue(((JSONObject) (obj2)), "shown"));
        orderoptionentity.setMin(getIntValue(((JSONObject) (obj2)), "min"));
        orderoptionentity.setMax(getIntValue(((JSONObject) (obj2)), "max"));
        orderoptionentity.setCharges(getFloatValue(((JSONObject) (obj2)), "charges"));
        ((List) (obj1)).add(orderoptionentity);
        i++;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_112;
_L1:
        orderentity.setOptions(((List) (obj1)));
        s = s.optJSONArray("sizes");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_367;
        }
        obj = new ArrayList();
        i = 0;
_L4:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = s.getJSONObject(i);
        obj2 = new com.biznessapps.food_ordering.entities.OrderEntity.Size();
        ((com.biznessapps.food_ordering.entities.OrderEntity.Size) (obj2)).setId(getStringValue(((JSONObject) (obj1)), "id"));
        ((com.biznessapps.food_ordering.entities.OrderEntity.Size) (obj2)).setSizeName(getStringValue(((JSONObject) (obj1)), "size"));
        ((com.biznessapps.food_ordering.entities.OrderEntity.Size) (obj2)).setPrice(getFloatValue(((JSONObject) (obj1)), "price"));
        ((List) (obj)).add(obj2);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        orderentity.setSizes(((List) (obj)));
        return orderentity;
    }

    public static List parseOrders(String s)
    {
        ArrayList arraylist = new ArrayList();
        int k;
        s = new JSONArray(s);
        k = s.length();
        int i = 0;
_L6:
        if (i >= k)
        {
            break; /* Loop/switch isn't completed */
        }
        OrderEntity orderentity;
        Object obj;
        Object obj1;
        obj = s.getJSONObject(i);
        orderentity = new OrderEntity();
        orderentity.setId(getStringValue(((JSONObject) (obj)), "id"));
        orderentity.setCategoryId(getStringValue(((JSONObject) (obj)), "category_id"));
        orderentity.setTitle(getStringValue(((JSONObject) (obj)), "name"));
        orderentity.setDescription(getStringValue(((JSONObject) (obj)), "description"));
        orderentity.setPrice(getFloatValue(((JSONObject) (obj)), "price"));
        orderentity.setThumbnail(getStringValue(((JSONObject) (obj)), "thumbnail"));
        orderentity.setImageUrl(getStringValue(((JSONObject) (obj)), "image"));
        orderentity.setTaxExempted(getBooleanValue(((JSONObject) (obj)), "tax_exempted"));
        obj1 = ((JSONObject) (obj)).optJSONArray("options");
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_308;
        }
        ArrayList arraylist1 = new ArrayList();
        int j = 0;
_L2:
        if (j >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject1 = ((JSONArray) (obj1)).getJSONObject(j);
        OrderOptionEntity orderoptionentity = new OrderOptionEntity();
        orderoptionentity.setId(getStringValue(jsonobject1, "id"));
        orderoptionentity.setName(getStringValue(jsonobject1, "name"));
        orderoptionentity.setGroup(getStringValue(jsonobject1, "group"));
        orderoptionentity.setRequired(getBooleanValue(jsonobject1, "required"));
        orderoptionentity.setShown(getBooleanValue(jsonobject1, "shown"));
        orderoptionentity.setMin(getIntValue(jsonobject1, "min"));
        orderoptionentity.setMax(getIntValue(jsonobject1, "max"));
        orderoptionentity.setCharges(getFloatValue(jsonobject1, "charges"));
        arraylist1.add(orderoptionentity);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        orderentity.setOptions(arraylist1);
        obj = ((JSONObject) (obj)).optJSONArray("sizes");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_419;
        }
        obj1 = new ArrayList();
        j = 0;
_L4:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = ((JSONArray) (obj)).getJSONObject(j);
        com.biznessapps.food_ordering.entities.OrderEntity.Size size = new com.biznessapps.food_ordering.entities.OrderEntity.Size();
        size.setId(getStringValue(jsonobject, "id"));
        size.setSizeName(getStringValue(jsonobject, "size"));
        size.setPrice(getFloatValue(jsonobject, "price"));
        ((List) (obj1)).add(size);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        orderentity.setSizes(((List) (obj1)));
        arraylist.add(orderentity);
        i++;
        if (true) goto _L6; else goto _L5
        s;
        s.printStackTrace();
_L5:
        return arraylist;
    }
}
