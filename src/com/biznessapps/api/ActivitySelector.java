// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import com.biznessapps.around_us.AroundUsActivity;
import com.biznessapps.around_us.AroundUsDetailActivity;
import com.biznessapps.car_finder.CarFinderActivity;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.activities.SingleFragmentPortraitActivity;
import com.biznessapps.contact.ContactsMapActivity;
import com.biznessapps.events.EventV2DetailsActivity;
import com.biznessapps.fan_wall.NewFanWallActivity;
import com.biznessapps.food_ordering.FOMainActivity;
import com.biznessapps.food_ordering.locations.LocationDetailActivity;
import com.biznessapps.food_ordering.locations.LocationsMapActivity;
import com.biznessapps.real_estate.RealEstateDetailActivity;
import com.biznessapps.real_estate.RealEstateListActivity;
import com.biznessapps.web.WebSingleFragmentActivity;
import java.util.HashMap;
import java.util.Map;

public class ActivitySelector
{

    private static Map activityFragmentMap;

    public ActivitySelector()
    {
    }

    public static Class getActivityClass(String s)
    {
        Class class1 = (Class)activityFragmentMap.get(s.toLowerCase());
        s = class1;
        if (class1 == null)
        {
            s = com/biznessapps/common/activities/SingleFragmentActivity;
        }
        return s;
    }

    static 
    {
        activityFragmentMap = new HashMap() {

            private static final long serialVersionUID = 0xd7c24321a913bb2dL;

            public Class put(String s, Class class1)
            {
                return (Class)super.put(s.toLowerCase(), class1);
            }

            public volatile Object put(Object obj, Object obj1)
            {
                return put((String)obj, (Class)obj1);
            }

        };
        activityFragmentMap.put("CarFinderViewController", com/biznessapps/car_finder/CarFinderActivity);
        activityFragmentMap.put("AroundUsViewController", com/biznessapps/around_us/AroundUsActivity);
        activityFragmentMap.put("FanWallManagerViewController", com/biznessapps/fan_wall/NewFanWallActivity);
        activityFragmentMap.put("FO_LOCATIONS_MAP", com/biznessapps/food_ordering/locations/LocationsMapActivity);
        activityFragmentMap.put("FO_LOCATION_DETAIL", com/biznessapps/food_ordering/locations/LocationDetailActivity);
        activityFragmentMap.put("CONTACTS_FRAGMENT", com/biznessapps/contact/ContactsMapActivity);
        activityFragmentMap.put("AROUND_US_DETAIL_FRAGMENT", com/biznessapps/around_us/AroundUsDetailActivity);
        activityFragmentMap.put("webviewcontroller", com/biznessapps/web/WebSingleFragmentActivity);
        activityFragmentMap.put("PROTECTED_VIEW_CONTROLLER", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("RealEstateDetailViewController", com/biznessapps/real_estate/RealEstateDetailActivity);
        activityFragmentMap.put("RealEstateViewController", com/biznessapps/real_estate/RealEstateListActivity);
        activityFragmentMap.put("EVENTS_V2_DETAIL_FRAGMENT", com/biznessapps/events/EventV2DetailsActivity);
        activityFragmentMap.put("contentchangerviewcontroller", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("GLOBAL_SEARCH_VIEW_CONTROLLER", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("EmailPhotoViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("tipcalculatorviewcontroller", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("repaymentviewcontroller", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("SocialViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("QRViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("VoiceRecordingViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FAN_ADD_COMMENT_FRAGMENT", com/biznessapps/web/WebSingleFragmentActivity);
        activityFragmentMap.put("RESELLER_DASHBOARD_FRAGMENT", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("PaymentIntegrateViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationAccountViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationApptDetailViewControllerFromMain", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationLoginViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationAccountRecoveryFragment", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationRegisterFragment", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("ReservationBookViewController", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("YOUTUBE_SINGLE_VIEW_FRAGMENT", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("WEB_VIEW_SINGLE_FRAGMENT", com/biznessapps/web/WebSingleFragmentActivity);
        activityFragmentMap.put("FO_CATEGORIES", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_CATEGORIES_ITEMS", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_CATEGORIES_ITEM_DETAIL", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_CONFIRMATION_PAGE", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FOOD_ORDER_CART_CONTROLLER", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_MY_ADDRESS", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_MY_ADDRESSES", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_LOCATIONS", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_LOCATION_CHOOSER", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FoodOrderingViewController", com/biznessapps/food_ordering/FOMainActivity);
        activityFragmentMap.put("FO_ACCOUNT_CONTROLLER", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
        activityFragmentMap.put("FO_PAST_ORDERS_DETAIL", com/biznessapps/common/activities/SingleFragmentPortraitActivity);
    }
}
