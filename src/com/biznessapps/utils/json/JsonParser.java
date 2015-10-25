// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.json;

import android.graphics.Color;
import android.text.Html;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.around_us.AroundUsEntity;
import com.biznessapps.call_us.CallUsEntity;
import com.biznessapps.common.entities.AppInfoEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.CommonEntity;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.entities.EmailCollectInfo;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.coupons.ActivityEntity;
import com.biznessapps.coupons.CouponEntity;
import com.biznessapps.email_photo.EmailPhotoEntity;
import com.biznessapps.events.EventEntity;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.fan_wall.FanWallEntity;
import com.biznessapps.flexible_counter.StatFieldsEntity;
import com.biznessapps.flickr.Galleries;
import com.biznessapps.flickr.GalleryAlbum;
import com.biznessapps.flickr.Photo;
import com.biznessapps.flickr.Photos;
import com.biznessapps.flickr.Photoset;
import com.biznessapps.flickr.RespGalleries;
import com.biznessapps.flickr.RespGalleryPhotos;
import com.biznessapps.flickr.RespUser;
import com.biznessapps.flickr.User;
import com.biznessapps.gallery.GalleryData;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.location.entities.LocationOpeningTime;
import com.biznessapps.mailing_list.MailingListEntity;
import com.biznessapps.menu_items.MenuSectionEntities;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.more.Tab;
import com.biznessapps.mortgage.MortgageEntity;
import com.biznessapps.music.PlaylistEntity;
import com.biznessapps.news.NewsSettings;
import com.biznessapps.news.SearchEntity;
import com.biznessapps.real_estate.RealEstateEntity;
import com.biznessapps.reseller.ResellerInfo;
import com.biznessapps.reservation.ReservationDataKeeper;
import com.biznessapps.reservation.entities.ReservationEntity;
import com.biznessapps.reservation.entities.ReservationServiceItem;
import com.biznessapps.reservation.entities.ReservationTimeItem;
import com.biznessapps.rss.RssEntity;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.youtube.YoutubeRssEntity;
import com.google.gson.Gson;
import java.io.PrintStream;
import java.net.URLDecoder;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import junit.framework.Assert;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.utils.json:
//            JsonParserCommon, ParserConstants

public class JsonParser extends JsonParserCommon
    implements ParserConstants
{

    public JsonParser()
    {
    }

    public static final String getBackground(String s)
    {
        Object obj = null;
        JSONArray jsonarray;
        try
        {
            jsonarray = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        s = obj;
        if (jsonarray.length() > 0)
        {
            s = getValue(jsonarray.getJSONObject(0), "background");
        }
        return s;
    }

    public static String getBearerToken(String s)
    {
        try
        {
            s = (new JSONObject(s)).getString("access_token");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static String getFlickrUserId(String s)
    {
        try
        {
            s = (new JSONObject(s)).getJSONObject("user").getString("id");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static Galleries getGalleries(String s)
    {
        Gson gson = new Gson();
        try
        {
            s = ((RespGalleries)gson.fromJson(s, com/biznessapps/flickr/RespGalleries)).getGalleries();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static NetworkResultEntity getNetworkResult(String s)
    {
        NetworkResultEntity networkresultentity = new NetworkResultEntity();
        try
        {
            s = new JSONArray(s);
            if (s.length() < 0)
            {
                networkresultentity.setErrorCode(getIntValue(s.getJSONObject(0), "error"));
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            networkresultentity.setException(s);
            return networkresultentity;
        }
        return networkresultentity;
    }

    public static NewsSettings getNewsSettings(String s)
    {
        JSONArray jsonarray = null;
        Object obj;
        s = (new JSONArray(s)).getJSONObject(0);
        obj = new NewsSettings();
        ((NewsSettings) (obj)).setGoogleSearchKey(getValue(s, "google_key"));
        ((NewsSettings) (obj)).setTwitterSearchKey(getValue(s, "twitter_key"));
        jsonarray = s.optJSONArray("google_news");
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_192;
        }
        ArrayList arraylist = new ArrayList();
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = jsonarray.getJSONObject(i);
        SearchEntity searchentity = new SearchEntity();
        searchentity.setTitle(jsonobject.optString("title"));
        searchentity.setName(jsonobject.optString("author"));
        searchentity.setText(jsonobject.optString("content"));
        searchentity.setLink(jsonobject.optString("url"));
        searchentity.setTimeStamp(getLongValue(jsonobject, "published"));
        searchentity.setImageUrl(jsonobject.optString("image"));
        searchentity.setNewsSource(1);
        arraylist.add(searchentity);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        ((NewsSettings) (obj)).setGoogleSearchList(arraylist);
        jsonarray = s.optJSONArray("twitter_news");
        if (jsonarray == null)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        arraylist = new ArrayList();
        i = 0;
_L4:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject1 = jsonarray.getJSONObject(i);
        SearchEntity searchentity1 = new SearchEntity();
        searchentity1.setTitle(jsonobject1.optString("title"));
        searchentity1.setName(jsonobject1.optString("author"));
        searchentity1.setText(jsonobject1.optString("content"));
        searchentity1.setLink(jsonobject1.optString("url"));
        searchentity1.setTimeStamp(getLongValue(jsonobject1, "published"));
        searchentity1.setImageUrl(jsonobject1.optString("image"));
        searchentity1.setNewsSource(2);
        arraylist.add(searchentity1);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        ((NewsSettings) (obj)).setTwitterSearchList(arraylist);
        ((NewsSettings) (obj)).setBackground(getValue(s, "background"));
        return ((NewsSettings) (obj));
        s;
        obj = jsonarray;
_L6:
        s.printStackTrace();
        return ((NewsSettings) (obj));
        s;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static List getPhotoStream(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = (new JSONObject(s)).getJSONObject("photos").getJSONArray("photo");
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = s.getJSONObject(i);
        com.biznessapps.gallery.GalleryData.Item item = new com.biznessapps.gallery.GalleryData.Item();
        String s1 = getValue(((JSONObject) (obj)), "id");
        String s2 = getValue(((JSONObject) (obj)), "farm");
        String s3 = getValue(((JSONObject) (obj)), "secret");
        String s4 = getValue(((JSONObject) (obj)), "server");
        obj = getValue(((JSONObject) (obj)), "title");
        item.setFullUrl(String.format("https://farm%s.staticflickr.com/%s/%s_%s.jpg", new Object[] {
            s2, s4, s1, s3
        }));
        item.setInfo(((String) (obj)));
        arraylist.add(item);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static Photos getPhotosInGallery(String s)
    {
        Gson gson = new Gson();
        try
        {
            s = ((RespGalleryPhotos)gson.fromJson(s, com/biznessapps/flickr/RespGalleryPhotos)).getPhotos();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static Photoset getPhotosInPhotoset(String s)
    {
        Photoset photoset;
        ArrayList arraylist;
        photoset = new Photoset();
        arraylist = new ArrayList();
        s = (new JSONObject(s)).getJSONObject("photoset").getJSONArray("photo");
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        Photo photo = new Photo();
        photo.setId(getValue(jsonobject, "id"));
        photo.setTitle(getValue(jsonobject, "title"));
        photo.setUrl(getValue(jsonobject, "url_m"));
        photo.setFarm(getValue(jsonobject, "farm"));
        photo.setSecret(getValue(jsonobject, "secret"));
        photo.setServer(getValue(jsonobject, "server"));
        arraylist.add(photo);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        photoset.setPhotos(arraylist);
        return photoset;
    }

    public static List getPhotosets(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = (new JSONObject(s)).getJSONObject("photosets").getJSONArray("photoset");
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        Photoset photoset = new Photoset();
        photoset.setId(getValue(jsonobject, "id"));
        photoset.setTitle(getValue(jsonobject.getJSONObject("title"), "_content"));
        photoset.setFarm(getValue(jsonobject, "farm"));
        photoset.setSecret(getValue(jsonobject, "secret"));
        photoset.setServer(getValue(jsonobject, "server"));
        photoset.setPrimary(getValue(jsonobject, "primary"));
        photoset.setDescription(getValue(jsonobject.getJSONObject("description"), "_content"));
        arraylist.add(photoset);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final String getTellFriendImage(String s)
    {
        String s1;
        String s2;
        s1 = null;
        s2 = null;
        JSONArray jsonarray = new JSONArray(s);
        int i;
        i = 0;
        s = s2;
_L2:
        s1 = s;
        s2 = s;
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s;
        s = getValue(jsonarray.getJSONObject(i), "image");
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
        s2 = s1;
_L1:
        return s2;
    }

    public static String getTwitterIconUrl(String s)
    {
        try
        {
            s = (new JSONObject(s)).getString("profile_image_url");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static boolean hasDataError(String s)
    {
        boolean flag1 = false;
        int i;
        boolean flag;
        try
        {
            s = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return true;
        }
        flag = flag1;
        if (s.length() >= 0)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        i = getIntValue(s.getJSONObject(0), "error");
        flag = flag1;
        if (i != 0)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean hasInvalidTokenError(String s)
    {
        boolean flag1 = false;
        int i;
        boolean flag;
        try
        {
            s = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return true;
        }
        flag = flag1;
        if (s.length() >= 0)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        i = getIntValue(s.getJSONObject(0), "error");
        flag = flag1;
        if (i == 9)
        {
            flag = true;
        }
        return flag;
    }

    public static boolean isAllowedCommenting(String s)
    {
        boolean flag;
        try
        {
            flag = getBooleanValue(new JSONObject(s), "allow_comment");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }

    public static boolean isSuccess(String s)
    {
        boolean flag;
        try
        {
            flag = StringUtils.isNotEmpty((new JSONObject(s)).optString("result"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return false;
        }
        return flag;
    }

    public static final List parseActivitiesList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        ActivityEntity activityentity = new ActivityEntity();
        int j = getIntValue(jsonobject, "action");
        int k = getIntValue(jsonobject, "sequence");
        String s1 = getValue(jsonobject, "name");
        String s2 = getValue(jsonobject, "avatar_url");
        if (StringUtils.isNotEmpty(s1))
        {
            activityentity.setAction(j);
            activityentity.setSequence(k);
            activityentity.setName(s1);
            activityentity.setAvatarUrl(s2);
            activityentity.setPerk(getValue(jsonobject, "perk"));
            activityentity.setPoints(getIntValue(jsonobject, "points"));
            activityentity.setTimeStamp(getLongValue(jsonobject, "time"));
            arraylist.add(activityentity);
        }
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        Collections.sort(arraylist, new Comparator() {

            public int compare(ActivityEntity activityentity1, ActivityEntity activityentity2)
            {
                if (activityentity1.getDate() != null && activityentity2.getDate() != null)
                {
                    if (activityentity1.getDate().getTime() < activityentity2.getDate().getTime())
                    {
                        return 1;
                    }
                    if (activityentity1.getDate().getTime() != activityentity2.getDate().getTime())
                    {
                        return -1;
                    }
                }
                return 0;
            }

            public volatile int compare(Object obj, Object obj1)
            {
                return compare((ActivityEntity)obj, (ActivityEntity)obj1);
            }

        });
        return arraylist;
    }

    public static final AppInfoEntity parseAppInfo(JSONObject jsonobject)
        throws JSONException
    {
        AppInfoEntity appinfoentity = new AppInfoEntity();
        appinfoentity.setImageUrl(getValue(jsonobject, "image"));
        if (jsonobject.has("imagesInOrder"))
        {
            JSONArray jsonarray = jsonobject.getJSONArray("imagesInOrder");
            if (getValue(jsonobject, "manyImages").equalsIgnoreCase("yes"))
            {
                appinfoentity.setHasManyImages(true);
            }
            ArrayList arraylist = new ArrayList();
            for (int i = 0; i < jsonarray.length(); i++)
            {
                arraylist.add(jsonarray.getString(i));
            }

            appinfoentity.setImagesInOrder(arraylist);
        }
        if (jsonobject.has("linkedTabs"))
        {
            JSONArray jsonarray1 = jsonobject.getJSONArray("linkedTabs");
            ArrayList arraylist1 = new ArrayList();
            for (int j = 0; j < jsonarray1.length(); j++)
            {
                JSONObject jsonobject1 = jsonarray1.getJSONObject(j);
                Tab tab = new Tab();
                tab.setTabId(getValue(jsonobject1, "tab_id"));
                tab.setItemId(getValue(jsonobject1, "item_id"));
                tab.setSectionId(getValue(jsonobject1, "cat_id"));
                tab.setViewController(getValue(jsonobject1, "view"));
                arraylist1.add(tab);
            }

            appinfoentity.setImagesLinkedTabs(arraylist1);
        }
        appinfoentity.setForIpadOnly(getBooleanValue(jsonobject, "only4ipad"));
        if (jsonobject.has("addresses"))
        {
            appinfoentity.getLocations().addAll(parseLocation(jsonobject.get("addresses").toString()));
        }
        if (jsonobject.has("home_sub_tabs"))
        {
            jsonobject = jsonobject.getJSONArray("home_sub_tabs");
            Random random = new Random();
            ArrayList arraylist2 = new ArrayList();
            int k = 0;
            while (k < jsonobject.length()) 
            {
                JSONObject jsonobject2 = jsonobject.getJSONObject(k);
                Tab tab1 = new Tab();
                tab1.setTabId(getValue(jsonobject2, "tab_id"));
                tab1.setImage(getValue(jsonobject2, "TabImage"));
                if (getValue(jsonobject2, "Custom_Icon").equals("0"))
                {
                    tab1.setTabImageUrl((new StringBuilder()).append(UrlWrapper.getInstance().getHost()).append("images/subtabicons/").append(tab1.getImage()).toString());
                } else
                {
                    String s = AppCore.getInstance().getAppSettings().getAppId();
                    tab1.setTabImageUrl(String.format((new StringBuilder()).append(UrlWrapper.getInstance().getHost()).append("uploads/cutom_icon/%s/%s").toString(), new Object[] {
                        s, tab1.getImage()
                    }));
                }
                tab1.setViewController(getValue(jsonobject2, "ViewController"));
                tab1.setNavigationController(getValue(jsonobject2, "NavigationController"));
                tab1.setLastUpdated(getValue(jsonobject2, "LastUpdated"));
                tab1.setLabel(getValue(jsonobject2, "TabLabelText"));
                tab1.setTabLabelFont(getValue(jsonobject2, "TabLabelFont"));
                tab1.setTabLabelTextColor(getValue(jsonobject2, "TabLableTextColor"));
                tab1.setTabLabelTextBgColor(getValue(jsonobject2, "TabLableTextBackgroundColor"));
                tab1.setSeq(getIntValue(jsonobject2, "seq"));
                tab1.setHide(getBooleanValue(jsonobject2, "is_hide"));
                tab1.setId(System.currentTimeMillis() + (long)random.nextInt());
                arraylist2.add(tab1);
                k++;
            }
            if (!arraylist2.isEmpty())
            {
                appinfoentity.setSubTabs(arraylist2);
            }
        }
        return appinfoentity;
    }

    public static final AppSettings parseAppSettings(JSONObject jsonobject)
        throws JSONException
    {
        AppSettings appsettings;
        Object obj2;
        boolean flag;
        if (jsonobject != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        appsettings = new AppSettings();
        appsettings.setAppId(getValue(jsonobject, "AppID"));
        appsettings.setAppName(getValue(jsonobject, "AppName"));
        appsettings.setConsumerKey(getValue(jsonobject, "consumer_key"));
        appsettings.setConsumerSecret(getValue(jsonobject, "consumer_secret"));
        appsettings.setGaAccountId(getValue(jsonobject, "ga_property_id"));
        appsettings.setGlobalBgColor(getValue(jsonobject, "global_background_color"));
        appsettings.setHomeLayoutType(getIntValue(jsonobject, "home_layout"));
        appsettings.setEvenRowColor(getValue(jsonobject, "EvenRowColor"));
        appsettings.setOddRowColor(getValue(jsonobject, "OddRowColor"));
        appsettings.setFeatureTextColor(getValue(jsonobject, "FeatureTextColor"));
        appsettings.setButtonTextColor(getValue(jsonobject, "ButtonTextColor"));
        appsettings.setButtonBgColor(getValue(jsonobject, "ButtonBgColor"));
        appsettings.setEvenRowTextColor(getValue(jsonobject, "EvenRowTextColor"));
        appsettings.setOddRowTextColor(getValue(jsonobject, "OddRowTextColor"));
        appsettings.setNavigBarColor(getValue(jsonobject, "NavigationBarColor"));
        appsettings.setNavigBarTextColor(getValue(jsonobject, "NavigationTextColor"));
        appsettings.setNavigBarTextShadowColor(getValue(jsonobject, "NavigationTextShadowColor"));
        appsettings.setSectionBarColor(getValue(jsonobject, "SectionBarColor"));
        appsettings.setSectionBarTextColor(getValue(jsonobject, "SectionBarTextColor"));
        appsettings.setNavigationMenuType(getIntValue(jsonobject, "premium_navigation_position"));
        appsettings.setMessateLinkedTab(getValue(jsonobject, "message_icon_linked_tab"));
        appsettings.setMessageIconOpacity(getIntValue(jsonobject, "message_icon_opacity"));
        appsettings.setMusicIconOpacity(getIntValue(jsonobject, "music_icon_opacity"));
        appsettings.setUseBlurEffect(getBooleanValue(jsonobject, "blur_effect"));
        appsettings.setUseBlurEffectForHome(getBooleanValue(jsonobject, "blur_effect_home_screen"));
        appsettings.setUseBlurEffectForMoreTab(getBooleanValue(jsonobject, "blur_effect_more_tab"));
        appsettings.setUseBlurEffectForMessagesTab(getBooleanValue(jsonobject, "message_tab_blurred"));
        appsettings.setServerTimezone(getIntValue(jsonobject, "timezone"));
        appsettings.setSplashImage(getValue(jsonobject, "splash_image"));
        appsettings.setPushingIp(getValue(jsonobject, "pushing_address"));
        appsettings.setProtectedHeaderColor(getValue(jsonobject, "protected_header_color"));
        obj2 = jsonobject.optJSONObject("email_collect_tab");
        if (obj2 != null)
        {
            Object obj1 = ((JSONObject) (obj2)).optJSONArray("tab_ids");
            if (obj1 != null)
            {
                ArrayList arraylist = new ArrayList();
                for (int i = 0; i < ((JSONArray) (obj1)).length(); i++)
                {
                    arraylist.add(((JSONArray) (obj1)).optString(i));
                }

                obj1 = ((JSONObject) (obj2)).optString("email_collect_title");
                obj2 = ((JSONObject) (obj2)).optString("email_collect_body");
                EmailCollectInfo emailcollectinfo = new EmailCollectInfo();
                emailcollectinfo.setTabIds(arraylist);
                emailcollectinfo.setTitle(((String) (obj1)));
                emailcollectinfo.setBody(((String) (obj2)));
                appsettings.setEmailCollectInfo(emailcollectinfo);
                System.out.println((new StringBuilder()).append("!!!!!!!!!!!! set email collect = ").append(appsettings.getEmailCollectInfo()).toString());
            }
        }
        if (getValue(jsonobject, "is_protected").equals("1"))
        {
            appsettings.setProtected(true);
        }
        if (getValue(jsonobject, "MailingListPrompt").equals("1"))
        {
            appsettings.setMailingListPrompt(true);
        }
        appsettings.setSocialOnBoard(getBooleanValue(jsonobject, "social_onboarding"));
        appsettings.setHomeTabTextColor(ViewUtils.getColor(getValue(jsonobject, "tab_text"), 0xff000000));
        appsettings.setShowHomeTabText(getBooleanValue(jsonobject, "tab_showtext"));
        appsettings.setMessageIconUsed(getBooleanValue(jsonobject, "message_icon_on"));
        flag = getBooleanValue(jsonobject, "music_icon_on");
        if (getValue(jsonobject, "music_icon_linked_tab").equals("0"))
        {
            flag = false;
        }
        appsettings.setMusicIconUsed(flag);
        appsettings.setShowNewsFeed(getBooleanValue(jsonobject, "ShowNewsFeed"));
        if (getValue(jsonobject, "message_icon_pos_h").equals("0"))
        {
            appsettings.setMessageIconLeft(true);
        }
        if (getValue(jsonobject, "music_icon_pos_h").equals("0"))
        {
            appsettings.setMusicIconLeft(true);
        }
        if (getValue(jsonobject, "message_icon_pos_v").equals("0"))
        {
            appsettings.setMessageIconTop(true);
        }
        if (getValue(jsonobject, "music_icon_pos_v").equals("0"))
        {
            appsettings.setMusicIconTop(true);
        }
        appsettings.setHasCallButton(getValue(jsonobject, "CallButton").equalsIgnoreCase("yes"));
        appsettings.setHasDirectionButton(getValue(jsonobject, "DirectionButton").equalsIgnoreCase("yes"));
        appsettings.setHasTellFriendButton(getValue(jsonobject, "TellFriendButton").equalsIgnoreCase("yes"));
        appsettings.setAppStoreUrl(getValue(jsonobject, "AppStoreURL"));
        appsettings.setPlayStoreUrl(getValue(jsonobject, "PlayStoreURL"));
        appsettings.setHtmlStoreUrl(getValue(jsonobject, "HTML5URL"));
        appsettings.setModernSlidingUsed(getBooleanValue(jsonobject, "ismodernsliding"));
        appsettings.setAnimationMode(getIntValue(jsonobject, "slidingEnabled"));
        appsettings.setUseTextColors(getValue(jsonobject, "UseTextColors"));
        appsettings.setMoreTabBg(getValue(jsonobject, "moreTabBackgroundForiPhone"));
        appsettings.setMoreTabTabletBg(getValue(jsonobject, "moreTabBackgroundForiPad"));
        if (getValue(jsonobject, "moreButtonNavigation").equalsIgnoreCase("yes"))
        {
            appsettings.setMoreButtonNavigation(true);
        }
        appsettings.setMoreIconUrl(getValue(jsonobject, "moreButtonNavigationIcon"));
        appsettings.setRows(getIntValue(jsonobject, "rows"));
        appsettings.setCols(getIntValue(jsonobject, "cols"));
        appsettings.setTabSrc(getValue(jsonobject, "tab_src"));
        appsettings.setTabTint(getValue(jsonobject, "tab_tint"));
        appsettings.setTabTintOpacity(getFloatValue(jsonobject, "tab_tint_opacity"));
        appsettings.setTabIcon(getValue(jsonobject, "tab_icon"));
        appsettings.setTabText(getValue(jsonobject, "tab_text"));
        appsettings.setTabFont(getValue(jsonobject, "tab_font"));
        if (getValue(jsonobject, "tab_showtext") != null && getValue(jsonobject, "tab_showtext").equals("0"))
        {
            appsettings.setShowText(false);
        }
        appsettings.setUseHomeOldBg(getBooleanValue(jsonobject, "is_background"));
        appsettings.setNormalHeader(getBooleanValue(jsonobject, "is_normal_header"));
        appsettings.setHeaderHeight(getFloatValue(jsonobject, "header_height"));
        appsettings.setHeaderWidth(getFloatValue(jsonobject, "header_width"));
        appsettings.setHeaderAlignment(getValue(jsonobject, "header_align"));
        appsettings.setHeaderSrc(getValue(jsonobject, "header_src"));
        appsettings.setHeaderTint(getValue(jsonobject, "header_tint"));
        appsettings.setHeaderTintOpacity(getFloatValue(jsonobject, "header_tint_opacity"));
        appsettings.setShouldHideComments(getBooleanValue(jsonobject, "hide_comment"));
        appsettings.setFacebookAppId(getValue(jsonobject, "facebook_api_key"));
        appsettings.setGlobalHeaderUrl(getValue(jsonobject, "global_header"));
        appsettings.setNavTintOpacity(getFloatValue(jsonobject, "nav_tint_opacity"));
        appsettings.setRssIconUrl(getValue(jsonobject, "RSSIcon"));
        Object obj = jsonobject.getJSONObject("ads");
        if (obj != null)
        {
            boolean flag1 = "admob".equalsIgnoreCase(getValue(((JSONObject) (obj)), "ads_type"));
            appsettings.setAdmob(flag1);
            appsettings.setUseAds(getBooleanValue(((JSONObject) (obj)), "show_ads"));
            if (flag1)
            {
                appsettings.setAdsId(getValue(((JSONObject) (obj)), "admob_pub_id"));
            } else
            {
                appsettings.setAdsId(getValue(((JSONObject) (obj)), "dfp_unit_id"));
            }
        }
        jsonobject = jsonobject.optJSONObject("moreTab");
        if (jsonobject != null)
        {
            try
            {
                obj = new Tab();
                ((Tab) (obj)).setLabel(getValue(jsonobject, "TabLabel"));
                ((Tab) (obj)).setImage(getValue(jsonobject, "TabImage"));
                ((Tab) (obj)).setViewController("moreviewcontroller");
                ((Tab) (obj)).setHasCustomDesign(getBooleanValue(jsonobject, "custom_design"));
                ((Tab) (obj)).setOpenInSafari(getBooleanValue(jsonobject, "openInSafari"));
                ((Tab) (obj)).setTabSrc(getValue(jsonobject, "tab_src"));
                ((Tab) (obj)).setTabIcon(getValue(jsonobject, "tab_icon"));
                ((Tab) (obj)).setTabTint(getValue(jsonobject, "tab_tint"));
                ((Tab) (obj)).setTabTintOpacity(getFloatValue(jsonobject, "tab_tint_opacity"));
                ((Tab) (obj)).setTabText(getValue(jsonobject, "tab_text"));
                ((Tab) (obj)).setShowText(getBooleanValue(jsonobject, "tab_showtext"));
                ((Tab) (obj)).setNavigBarColor(getValue(jsonobject, "NavigationBarColor"));
                ((Tab) (obj)).setNavigBarTextColor(getValue(jsonobject, "NavigationTextColor"));
                ((Tab) (obj)).setNavigBarTextShadowColor(getValue(jsonobject, "NavigationTextShadowColor"));
                ((Tab) (obj)).setSectionBarColor(getValue(jsonobject, "SectionBarColor"));
                ((Tab) (obj)).setSectionBarTextColor(getValue(jsonobject, "SectionBarTextColor"));
                ((Tab) (obj)).setGlobalHeaderUrl(getValue(jsonobject, "global_header"));
                ((Tab) (obj)).setNavTintOpacity(getFloatValue(jsonobject, "nav_tint_opacity"));
                ((Tab) (obj)).setGlobalBgColor(getValue(jsonobject, "global_background_color"));
                ((Tab) (obj)).setEvenRowColor(getValue(jsonobject, "EvenRowColor"));
                ((Tab) (obj)).setOddRowColor(getValue(jsonobject, "OddRowColor"));
                ((Tab) (obj)).setFeatureTextColor(getValue(jsonobject, "FeatureTextColor"));
                ((Tab) (obj)).setButtonTextColor(getValue(jsonobject, "ButtonTextColor"));
                ((Tab) (obj)).setButtonBgColor(getValue(jsonobject, "ButtonBgColor"));
                ((Tab) (obj)).setEvenRowTextColor(getValue(jsonobject, "EvenRowTextColor"));
                ((Tab) (obj)).setOddRowTextColor(getValue(jsonobject, "OddRowTextColor"));
                appsettings.setMoreTab(((Tab) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return appsettings;
            }
        }
        return appsettings;
    }

    public static AroundUsEntity parseAroundUsData(String s)
    {
        AroundUsEntity aroundusentity = new AroundUsEntity();
        if (s != null) goto _L2; else goto _L1
_L1:
        aroundusentity.getNetworkResult().setErrorCode(-5);
_L8:
        return aroundusentity;
_L2:
        Object obj;
        ArrayList arraylist;
        JSONObject jsonobject;
        com.biznessapps.around_us.AroundUsEntity.PoiItem poiitem;
        LocationEntity locationentity;
        int i;
        int j;
        try
        {
            s = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            aroundusentity.getNetworkResult().setException(s);
            return aroundusentity;
        }
        i = 0;
        if (i >= s.length())
        {
            continue; /* Loop/switch isn't completed */
        }
        obj = s.getJSONObject(i);
        aroundusentity.setImageUrl(getValue(((JSONObject) (obj)), "background"));
        aroundusentity.setGreenTitle(getValue(((JSONObject) (obj)), "green_title"));
        aroundusentity.setGreenColor(getValue(((JSONObject) (obj)), "green_color"));
        aroundusentity.setGreenTextColor(getValue(((JSONObject) (obj)), "green_color_text"));
        aroundusentity.setPurpleTitle(getValue(((JSONObject) (obj)), "purple_title"));
        aroundusentity.setPurpleColor(getValue(((JSONObject) (obj)), "purple_color"));
        aroundusentity.setPurpleTextColor(getValue(((JSONObject) (obj)), "purple_color_text"));
        aroundusentity.setRedTitle(getValue(((JSONObject) (obj)), "red_title"));
        aroundusentity.setRedColor(getValue(((JSONObject) (obj)), "red_color"));
        aroundusentity.setRedTextColor(getValue(((JSONObject) (obj)), "red_color_text"));
        obj = ((JSONObject) (obj)).getJSONArray("poi");
        arraylist = new ArrayList();
        j = 0;
_L4:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject = ((JSONArray) (obj)).getJSONObject(j);
        poiitem = new com.biznessapps.around_us.AroundUsEntity.PoiItem();
        locationentity = new LocationEntity();
        locationentity.setAddress1(getValue(jsonobject, "address1"));
        locationentity.setAddress2(getValue(jsonobject, "address2"));
        locationentity.setCity(getValue(jsonobject, "city"));
        locationentity.setState(getValue(jsonobject, "state"));
        locationentity.setZip(getValue(jsonobject, "zip"));
        locationentity.setTelephone(getValue(jsonobject, "telephone"));
        locationentity.setEmail(getValue(jsonobject, "email"));
        locationentity.setWebsite(getValue(jsonobject, "website"));
        poiitem.setId(getValue(jsonobject, "id"));
        poiitem.setName(getValue(jsonobject, "name"));
        poiitem.setColor(getValue(jsonobject, "color"));
        poiitem.setDescription(getValue(jsonobject, "description"));
        poiitem.setLongitude(getValue(jsonobject, "longitude"));
        poiitem.setLatitude(getValue(jsonobject, "latitude"));
        poiitem.setImageUrl(getValue(jsonobject, "image"));
        poiitem.setLocation(locationentity);
        poiitem.setDistanceType(getValue(jsonobject, "distance_type"));
        arraylist.add(poiitem);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        aroundusentity.setPoi(arraylist);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        break MISSING_BLOCK_LABEL_453;
_L6:
        break MISSING_BLOCK_LABEL_35;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static final String parseBackgroundData(String s)
    {
        String s1;
        String s2;
        s1 = null;
        s2 = null;
        JSONArray jsonarray = new JSONArray(s);
        int i;
        i = 0;
        s = s2;
_L2:
        s1 = s;
        s2 = s;
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s;
        s = getValue(jsonarray.getJSONObject(i), "background");
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
        s2 = s1;
_L1:
        return s2;
    }

    public static final List parseCallUsItems(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        CallUsEntity callusentity = new CallUsEntity();
        callusentity.setTitle(getValue(jsonobject, "title"));
        callusentity.setPhone(getValue(jsonobject, "phone"));
        callusentity.setId(getValue(jsonobject, "id"));
        callusentity.setBackground(getValue(jsonobject, "background"));
        arraylist.add(callusentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final CommonEntity parseCommonData(String s)
    {
        Exception exception;
        Object obj;
        obj = null;
        exception = null;
        JSONArray jsonarray = new JSONArray(s);
        s = obj;
        if (jsonarray.length() <= 0) goto _L2; else goto _L1
_L1:
        s = new CommonEntity();
        int i = 0;
_L4:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        s.setImageUrl(getValue(jsonarray.getJSONObject(i), "image"));
        i++;
        if (true) goto _L4; else goto _L3
        Exception exception1;
        exception1;
        s = exception;
        exception = exception1;
_L5:
        exception.printStackTrace();
_L2:
        return s;
        exception;
        if (true) goto _L5; else goto _L3
_L3:
        return s;
    }

    public static final List parseCoupons(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        CouponEntity couponentity = new CouponEntity();
        couponentity.setId(getValue(jsonobject, "id"));
        couponentity.setTitle(getValue(jsonobject, "title"));
        float f = getFloatValue(jsonobject, "timezone_value");
        couponentity.setStartDate(DateUtils.getDateWithLocalOffset(getLongValue(jsonobject, "start_date"), f));
        couponentity.setEndDate(DateUtils.getEndDateWithLocalOffset(getLongValue(jsonobject, "end_date"), f));
        couponentity.setCheckinTarget(getIntValue(jsonobject, "checkin_target"));
        couponentity.setCheckinTargetMax(getIntValue(jsonobject, "checkin_target"));
        couponentity.setCheckinInterval(getIntValue(jsonobject, "checkin_interval"));
        if (getValue(jsonobject, "reusable").equals("1"))
        {
            couponentity.setReusable(true);
        }
        couponentity.setLongitude(getValue(jsonobject, "longitude"));
        couponentity.setLatitude(getValue(jsonobject, "latitude"));
        couponentity.setDescription(getValue(jsonobject, "description"));
        couponentity.setCode(getValue(jsonobject, "code"));
        if (StringUtils.isNotEmpty(getValue(jsonobject, "background")))
        {
            couponentity.setBackground(getValue(jsonobject, "background"));
        }
        couponentity.setHeaderImage(getValue(jsonobject, "headerImage"));
        couponentity.setDistanceType(getValue(jsonobject, "radius_unit"));
        couponentity.setRadius(getFloatValue(jsonobject, "radius"));
        if (jsonobject.has("locations"))
        {
            couponentity.setLocations(parseLocationList(jsonobject.getString("locations")));
        }
        arraylist.add(couponentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final List parseCouponsLocation(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        com.biznessapps.coupons.CouponEntity.CouponsLocation couponslocation = new com.biznessapps.coupons.CouponEntity.CouponsLocation();
        couponslocation.setLatitude(getValue(jsonobject, "latitude"));
        couponslocation.setLongitude(getValue(jsonobject, "longitude"));
        arraylist.add(couponslocation);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final EmailPhotoEntity parseEmailPhoto(String s)
    {
        Object obj = null;
        JSONArray jsonarray;
        jsonarray = new JSONArray(s);
        s = new EmailPhotoEntity();
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = jsonarray.getJSONObject(i);
        s.setDescription(getValue(((JSONObject) (obj)), "description"));
        s.setEmail(getValue(((JSONObject) (obj)), "email"));
        s.setImageUrl(getValue(((JSONObject) (obj)), "background"));
        s.setSubject(getValue(((JSONObject) (obj)), "subject"));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        s;
_L4:
        s.printStackTrace();
        return ((EmailPhotoEntity) (obj));
        Exception exception;
        exception;
        obj = s;
        s = exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final EventEntity parseEventDetail(String s)
    {
        EventEntity evententity = new EventEntity();
        if (s != null) goto _L2; else goto _L1
_L1:
        evententity.getNetworkResult().setErrorCode(-5);
_L6:
        return evententity;
_L2:
        JSONObject jsonobject;
        int i;
        try
        {
            s = new JSONArray(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            evententity.getNetworkResult().setException(s);
            return evententity;
        }
        i = 0;
        if (i >= s.length())
        {
            continue; /* Loop/switch isn't completed */
        }
        jsonobject = s.getJSONObject(i);
        evententity.setId(getValue(jsonobject, "id"));
        evententity.setTitle(getValue(jsonobject, "title"));
        evententity.setCity(getValue(jsonobject, "city"));
        evententity.setDescription(getValue(jsonobject, "description"));
        evententity.setImageUrl(getValue(jsonobject, "header_image"));
        evententity.setGoingCount(getIntValue(jsonobject, "goingcount"));
        evententity.setPhotoCount(getIntValue(jsonobject, "photocount"));
        evententity.setCommentsCount(getIntValue(jsonobject, "commentscount"));
        evententity.setAddress1(getValue(jsonobject, "address1"));
        evententity.setAddress2(getValue(jsonobject, "address2"));
        evententity.setLatitude(getValue(jsonobject, "latitude"));
        evententity.setLongitude(getValue(jsonobject, "longitude"));
        evententity.setDatetimeBegin(DateUtils.getDateWithOffset(getLongValue(jsonobject, "start_time")));
        evententity.setDatetimeEnd(DateUtils.getDateWithOffset(getLongValue(jsonobject, "end_time")));
        evententity.setZip(getValue(jsonobject, "zip"));
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_220;
_L4:
        break MISSING_BLOCK_LABEL_34;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static final List parseEvents(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L5:
        EventEntity evententity;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_329;
        }
        JSONObject jsonobject = s.getJSONObject(i);
        evententity = new EventEntity();
        evententity.setId(getValue(jsonobject, "id"));
        evententity.setTitle(getValue(jsonobject, "title"));
        evententity.setSection(getValue(jsonobject, "section"));
        evententity.setBackground(getValue(jsonobject, "background"));
        evententity.setCity(getValue(jsonobject, "city"));
        evententity.setState(getValue(jsonobject, "state"));
        if (jsonobject.has("recurring") && jsonobject.has("recurring_day"))
        {
            evententity.setRecurring(getBooleanValue(jsonobject, "recurring"));
            evententity.setRecurringDay(com.biznessapps.events.EventEntity.RecurringDay.findDay(getIntValue(jsonobject, "recurring_day")));
        }
        float f = getFloatValue(jsonobject, "timezone_value");
        int j = AppCore.getInstance().getAppSettings().getServerTimezone();
        evententity.setDatetimeBegin(DateUtils.getDateWithOffset(getLongValue(jsonobject, "start_time"), f, j));
        evententity.setDatetimeEnd(DateUtils.getDateWithOffset(getLongValue(jsonobject, "end_time"), f, j));
        if (evententity.getDatetimeBegin() == null) goto _L2; else goto _L1
_L1:
        String s1;
        s1 = (new SimpleDateFormat("MMMM")).format(Long.valueOf(evententity.getDatetimeBegin().getTime()));
        if (s1.length() <= 4)
        {
            break MISSING_BLOCK_LABEL_315;
        }
        evententity.setMonth(s1.substring(0, 3));
_L3:
        evententity.setDay((new SimpleDateFormat("dd")).format(Long.valueOf(evententity.getDatetimeBegin().getTime())));
_L2:
        arraylist.add(evententity);
        i++;
        continue; /* Loop/switch isn't completed */
        evententity.setMonth(s1);
          goto _L3
        s;
        s.printStackTrace();
        return arraylist;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static final List parseEventsV2(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L5:
        EventEntity evententity;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_377;
        }
        JSONObject jsonobject = s.getJSONObject(i);
        evententity = new EventEntity();
        evententity.setId(getValue(jsonobject, "id"));
        evententity.setTitle(getValue(jsonobject, "title"));
        evententity.setSection(getValue(jsonobject, "section"));
        evententity.setBackground(getValue(jsonobject, "background"));
        evententity.setCity(getValue(jsonobject, "city"));
        evententity.setState(getValue(jsonobject, "state"));
        evententity.setAddress1(getValue(jsonobject, "address1"));
        evententity.setAddress2(getValue(jsonobject, "address2"));
        evententity.setAddressBottomRow(getValue(jsonobject, "address_bottom_row"));
        evententity.setAddressTopRow(getValue(jsonobject, "address_top_row"));
        if (jsonobject.has("recurring") && jsonobject.has("recurring_day"))
        {
            evententity.setRecurring(getBooleanValue(jsonobject, "recurring"));
            evententity.setRecurringDay(com.biznessapps.events.EventEntity.RecurringDay.findDay(getIntValue(jsonobject, "recurring_day")));
        }
        float f = getFloatValue(jsonobject, "timezone_value");
        int j = AppCore.getInstance().getAppSettings().getServerTimezone();
        evententity.setDatetimeBegin(DateUtils.getDateWithOffset(getLongValue(jsonobject, "start_time"), f, j));
        evententity.setDatetimeEnd(DateUtils.getDateWithOffset(getLongValue(jsonobject, "end_time"), f, j));
        if (evententity.getDatetimeBegin() == null) goto _L2; else goto _L1
_L1:
        String s1;
        s1 = (new SimpleDateFormat("MMMM")).format(Long.valueOf(evententity.getDatetimeBegin().getTime()));
        if (s1.length() <= 4)
        {
            break MISSING_BLOCK_LABEL_363;
        }
        evententity.setMonth(s1.substring(0, 3));
_L3:
        evententity.setDay((new SimpleDateFormat("dd")).format(Long.valueOf(evententity.getDatetimeBegin().getTime())));
_L2:
        arraylist.add(evententity);
        i++;
        continue; /* Loop/switch isn't completed */
        evententity.setMonth(s1);
          goto _L3
        s;
        s.printStackTrace();
        return arraylist;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static final List parseFacebookSearchList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = (new JSONObject(s)).getJSONArray("data");
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        SearchEntity searchentity = new SearchEntity();
        searchentity.setNewsDate(getValue(jsonobject, "created_time"));
        searchentity.setTitle(getValue(jsonobject, "name"));
        searchentity.setImageUrl(getValue(jsonobject, "picture"));
        searchentity.setText(getValue(jsonobject, "message"));
        arraylist.add(searchentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static List parseFanComments(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        CommentEntity commententity = new CommentEntity();
        commententity.setComment(getValue(jsonobject, "comment"));
        commententity.setId(getValue(jsonobject, "id"));
        commententity.setImageUrl(getValue(jsonobject, "image"));
        commententity.setTitle(getValue(jsonobject, "name"));
        commententity.setReplies(getIntValue(jsonobject, "replies"));
        commententity.setTimeStamp(getLongValue(jsonobject, "timestamp"));
        commententity.setLatitude(getValue(jsonobject, "latitude"));
        commententity.setLongitude(getValue(jsonobject, "longitude"));
        commententity.setBackground(getValue(jsonobject, "background"));
        commententity.setUploadImageUrl(getValue(jsonobject, "uploadedImage"));
        arraylist.add(commententity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static List parseFanWallData(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L3:
        FanWallEntity fanwallentity;
        Object obj;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_204;
        }
        fanwallentity = new FanWallEntity();
        obj = s.getJSONObject(i);
        fanwallentity.setImageUrl(getValue(((JSONObject) (obj)), "image"));
        obj = ((JSONObject) (obj)).getJSONArray("comments");
        int j = 0;
_L2:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = ((JSONArray) (obj)).getJSONObject(j);
        CommentEntity commententity = new CommentEntity();
        commententity.setComment(getValue(jsonobject, "comment"));
        commententity.setId(getValue(jsonobject, "id"));
        commententity.setImageUrl(getValue(jsonobject, "image"));
        commententity.setTitle(getValue(jsonobject, "name"));
        commententity.setReplies(getIntValue(jsonobject, "replies"));
        commententity.setTimeStamp(getLongValue(jsonobject, "time"));
        fanwallentity.addComment(commententity);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        arraylist.add(fanwallentity);
        i++;
          goto _L3
        s;
        s.printStackTrace();
        return arraylist;
    }

    public static final GalleryData parseFlickrData(String s)
    {
        GalleryData gallerydata;
        boolean flag1;
        flag1 = true;
        gallerydata = new GalleryData();
        s = new JSONArray(s);
        if (s.length() >= 0)
        {
            break MISSING_BLOCK_LABEL_110;
        }
        s = s.getJSONObject(0);
        boolean flag;
        if (getValue(s, "gallery_type").equalsIgnoreCase("coverflow"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        gallerydata.setUseCoverflow(flag);
        gallerydata.setUserId(getValue(s, "userId"));
        gallerydata.setApiKey(getValue(s, "APIKEY"));
        if (getValue(s, "display").equalsIgnoreCase("photo_set"))
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        try
        {
            gallerydata.setDisplayPhotosets(flag);
            gallerydata.setBackground(getValue(s, "background"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return gallerydata;
        }
        return gallerydata;
    }

    public static User parseFlickrUser(String s)
    {
        Gson gson = new Gson();
        try
        {
            s = ((RespUser)gson.fromJson(s, com/biznessapps/flickr/RespUser)).getUser();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public static final GalleryData parseGalleryMetadata(String s)
    {
        JSONArray jsonarray = null;
        Object obj;
        ArrayList arraylist;
        s = new JSONArray(s);
        arraylist = new ArrayList();
        obj = new GalleryData();
        int i = 0;
_L2:
        GalleryAlbum galleryalbum;
        ArrayList arraylist1;
        JSONObject jsonobject;
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject = s.getJSONObject(i);
        jsonarray = jsonobject.getJSONArray("images");
        galleryalbum = new GalleryAlbum();
        arraylist1 = new ArrayList();
        galleryalbum.setId(getValue(jsonobject, "section_id"));
        galleryalbum.setTitle(getValue(jsonobject, "name"));
        galleryalbum.setUseCoverflow(getBooleanValue(jsonobject, "coverflow"));
        galleryalbum.setImageUrl(getValue(jsonobject, "thumbnail"));
        int j;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_299;
        }
        com.biznessapps.gallery.GalleryData.Item item;
        try
        {
            ((GalleryData) (obj)).setBackground(getValue(jsonobject, "background"));
            break MISSING_BLOCK_LABEL_299;
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        break MISSING_BLOCK_LABEL_289;
        for (; j >= jsonarray.length(); j = 0)
        {
            break MISSING_BLOCK_LABEL_254;
        }

        jsonobject = jsonarray.getJSONObject(j);
        item = new com.biznessapps.gallery.GalleryData.Item();
        item.setId(getValue(jsonobject, "id"));
        item.setExt(getValue(jsonobject, "ext"));
        item.setHeight(getValue(jsonobject, "height"));
        item.setWidth(getValue(jsonobject, "width"));
        item.setInfo(getValue(jsonobject, "info"));
        arraylist1.add(item);
        j++;
        break MISSING_BLOCK_LABEL_145;
        galleryalbum.setItems(arraylist1);
        arraylist.add(galleryalbum);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        ((GalleryData) (obj)).setAlbums(arraylist);
        return ((GalleryData) (obj));
        s;
        obj = jsonarray;
        s.printStackTrace();
        return ((GalleryData) (obj));
    }

    public static final List parseGlobalSearchData(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        SearchEntity searchentity = new SearchEntity();
        searchentity.setTabId(getValue(jsonobject, "tab_id"));
        searchentity.setSectionId(getValue(jsonobject, "section_id"));
        searchentity.setItemId(getValue(jsonobject, "item_id"));
        searchentity.setSection(getValue(jsonobject, "section"));
        searchentity.setThumbnail(getValue(jsonobject, "thumbnail"));
        if (StringUtils.isNotEmpty(getValue(jsonobject, "user_profile")))
        {
            searchentity.setThumbnail(getValue(jsonobject, "user_profile"));
        }
        searchentity.setLink(getValue(jsonobject, "link"));
        searchentity.setNewsType(getValue(jsonobject, "news_type"));
        searchentity.setText(getValue(jsonobject, "content"));
        arraylist.add(searchentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final CommonListEntity parseInfo(String s)
    {
        Object obj;
        JSONObject jsonobject;
        jsonobject = null;
        obj = null;
        if (!StringUtils.isNotEmpty(s))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        obj = new JSONArray(s);
        s = new CommonListEntity();
        int i = 0;
_L2:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject = ((JSONArray) (obj)).getJSONObject(i);
        s.setId(getValue(jsonobject, "id"));
        s.setTitle(getValue(jsonobject, "title"));
        s.setDescription(getValue(jsonobject, "description"));
        s.setImageUrl(getValue(jsonobject, "image"));
        s.setBackground(getValue(jsonobject, "background"));
        s.setHeaderImage(getValue(jsonobject, "header_image"));
        s.setHasNewDesign(getBooleanValue(jsonobject, "isNewDesign"));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        obj = s;
        return ((CommonListEntity) (obj));
        s;
        obj = jsonobject;
_L4:
        s.printStackTrace();
        return ((CommonListEntity) (obj));
        Exception exception;
        exception;
        obj = s;
        s = exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final List parseInfoList(String s)
    {
        ArrayList arraylist = new ArrayList();
        JSONArray jsonarray = new JSONArray(s);
        int i = 0;
_L1:
        String s1;
        CommonListEntity commonlistentity;
        JSONObject jsonobject;
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_199;
        }
        commonlistentity = new CommonListEntity();
        jsonobject = jsonarray.getJSONObject(i);
        commonlistentity.setId(getValue(jsonobject, "id"));
        commonlistentity.setTitle(getValue(jsonobject, "title"));
        commonlistentity.setDescription(getValue(jsonobject, "description"));
        s1 = getValue(jsonobject, "thumbnail");
        s = s1;
        if (StringUtils.isEmpty(s1))
        {
            s = getValue(jsonobject, "image");
        }
        if (getValue(jsonobject, "isNewDesign").equals("1"))
        {
            commonlistentity.setHasNewDesign(true);
        }
        commonlistentity.setImageUrl(s);
        commonlistentity.setSection(getValue(jsonobject, "section"));
        commonlistentity.setBackground(getValue(jsonobject, "background"));
        commonlistentity.setHeaderImage(getValue(jsonobject, "header_image"));
        arraylist.add(commonlistentity);
        i++;
          goto _L1
        s;
        s.printStackTrace();
        return arraylist;
    }

    public static final GalleryData parseInstagramData(String s)
    {
        GalleryData gallerydata = new GalleryData();
        try
        {
            s = new JSONArray(s);
            if (s.length() < 0)
            {
                s = s.getJSONObject(0);
                gallerydata.setUseCoverflow(false);
                gallerydata.setUserId(getValue(s, "user_id"));
                gallerydata.setApiKey(getValue(s, "token"));
                gallerydata.setBackground(getValue(s, "background"));
            }
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return gallerydata;
        }
        return gallerydata;
    }

    public static final String parseInstagramImages(GalleryData gallerydata, String s)
    {
        Object obj;
        Object obj1;
        JSONArray jsonarray;
        jsonarray = null;
        obj = gallerydata.getItems();
        obj1 = obj;
        if (obj == null)
        {
            obj1 = new ArrayList();
        }
        obj = jsonarray;
        JSONObject jsonobject = new JSONObject(s);
        obj = jsonarray;
        s = getValue(getJSONValue(jsonobject, "pagination"), "next_url");
        obj = s;
        jsonarray = jsonobject.getJSONArray("data");
        int i = 0;
_L2:
        obj = s;
        int j = jsonarray.length();
        obj = s;
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_235;
        }
        obj = jsonarray.getJSONObject(i);
        if (((JSONObject) (obj)).getString("type").equals("video"))
        {
            break MISSING_BLOCK_LABEL_242;
        }
        JSONObject jsonobject1;
        jsonobject = getJSONValue(getJSONValue(((JSONObject) (obj)), "images"), "standard_resolution");
        jsonobject1 = getJSONValue(((JSONObject) (obj)), "caption");
        obj = null;
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_153;
        }
        obj = getValue(jsonobject1, "text");
        com.biznessapps.gallery.GalleryData.Item item = new com.biznessapps.gallery.GalleryData.Item();
        item.setHeight(getValue(jsonobject, "height"));
        item.setWidth(getValue(jsonobject, "width"));
        item.setFullUrl(getValue(jsonobject, "url"));
        item.setInfo(((String) (obj)));
        ((List) (obj1)).add(item);
        break MISSING_BLOCK_LABEL_242;
        Exception exception;
        exception;
        obj = s;
        try
        {
            exception.printStackTrace();
            break MISSING_BLOCK_LABEL_242;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        gallerydata.setItems(((List) (obj1)));
        return ((String) (obj));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static final List parseLocation(String s)
    {
        ArrayList arraylist = new ArrayList();
        if (s != null) goto _L2; else goto _L1
_L1:
        s = new LocationEntity();
        s.getNetworkResult().setErrorCode(-5);
        arraylist.add(s);
_L9:
        return arraylist;
_L2:
        LocationEntity locationentity;
        Object obj;
        JSONObject jsonobject;
        LocationOpeningTime locationopeningtime;
        int i;
        int j;
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
        if (!((JSONObject) (obj)).has("opening_times") || !StringUtils.isNotEmpty(((JSONObject) (obj)).getString("opening_times")) || ((JSONObject) (obj)).get("opening_times").toString().equalsIgnoreCase("null")) goto _L4; else goto _L3
_L3:
        obj = new JSONArray(((JSONObject) (obj)).get("opening_times").toString());
        j = 0;
_L5:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        jsonobject = ((JSONArray) (obj)).getJSONObject(j);
        locationopeningtime = new LocationOpeningTime();
        locationopeningtime.setDay(getValue(jsonobject, "day"));
        locationopeningtime.setOpenFrom(getValue(jsonobject, "open_from"));
        locationopeningtime.setOpenTo(getValue(jsonobject, "open_to"));
        locationentity.getOpeningTimes().add(locationopeningtime);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
        arraylist.add(locationentity);
        i++;
        if (true) goto _L7; else goto _L6
_L6:
        break MISSING_BLOCK_LABEL_444;
_L7:
        break MISSING_BLOCK_LABEL_51;
        if (true) goto _L9; else goto _L8
_L8:
    }

    public static final List parseLocationList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
        do
        {
label0:
            {
                if (i < s.length())
                {
                    JSONObject jsonobject = s.getJSONObject(i);
                    LocationEntity locationentity = new LocationEntity();
                    String s1 = getValue(jsonobject, "id");
                    if (StringUtils.isEmpty(s1))
                    {
                        break label0;
                    }
                    try
                    {
                        locationentity.setId(s1);
                        locationentity.setTitle(getValue(jsonobject, "title"));
                        locationentity.setLatitude(getValue(jsonobject, "latitude"));
                        locationentity.setLongitude(getValue(jsonobject, "longitude"));
                        locationentity.setAddress1(getValue(jsonobject, "address_1"));
                        locationentity.setAddress2(getValue(jsonobject, "address_2"));
                        locationentity.setAddressBottomRow(getValue(jsonobject, "address_bottom_row"));
                        locationentity.setAddressTopRow(getValue(jsonobject, "address_top_row"));
                        locationentity.setCity(getValue(jsonobject, "city"));
                        locationentity.setState(getValue(jsonobject, "state"));
                        locationentity.setZip(getValue(jsonobject, "zip"));
                        locationentity.setTelephone(getValue(jsonobject, "telephone"));
                        locationentity.setEmail(getValue(jsonobject, "email"));
                        locationentity.setWebsite(getValue(jsonobject, "website"));
                        locationentity.setBackground(getValue(jsonobject, "background"));
                        locationentity.setItemBgUrl(getValue(jsonobject, "each_background"));
                        locationentity.setTimezoneValue(getFloatValue(jsonobject, "timezone_value"));
                        locationentity.setTabId(getValue(jsonobject, "tab_id"));
                        locationentity.setDistanceType(getValue(jsonobject, "distance_type"));
                        arraylist.add(locationentity);
                        break label0;
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        s.printStackTrace();
                    }
                }
                return arraylist;
            }
            i++;
        } while (true);
    }

    public static final MailingListEntity parseMailingList(String s)
    {
        Object obj1 = null;
        Object obj;
        s = new JSONArray(s);
        obj = new MailingListEntity();
        int i = 0;
_L4:
        ArrayList arraylist;
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = s.getJSONObject(i);
        ((MailingListEntity) (obj)).setImageUrl(getValue(((JSONObject) (obj1)), "image"));
        ((MailingListEntity) (obj)).setLogoImage(getValue(((JSONObject) (obj1)), "logo_image"));
        ((MailingListEntity) (obj)).setDescription(getValue(((JSONObject) (obj1)), "description"));
        obj1 = ((JSONObject) (obj1)).getJSONArray("categories");
        if (((JSONArray) (obj1)).length() <= 0)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        arraylist = new ArrayList();
        int j = 0;
_L2:
        if (j >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONArray jsonarray = ((JSONArray) (obj1)).getJSONArray(j);
        com.biznessapps.mailing_list.MailingListEntity.Category category = new com.biznessapps.mailing_list.MailingListEntity.Category();
        category.setId(jsonarray.getString(0));
        category.setName(jsonarray.getString(1));
        arraylist.add(category);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        ((MailingListEntity) (obj)).setCategories(arraylist);
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        return ((MailingListEntity) (obj));
        s;
        obj = obj1;
_L6:
        s.printStackTrace();
        return ((MailingListEntity) (obj));
        s;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static final List parseMenuItemsList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        MenuSectionEntities menusectionentities = new MenuSectionEntities();
        menusectionentities.setId(getValue(jsonobject, "id"));
        menusectionentities.setPrice(getValue(jsonobject, "price"));
        menusectionentities.setCurrency(getValue(jsonobject, "currency"));
        menusectionentities.setCurrencySign(getValue(jsonobject, "currency_sign"));
        menusectionentities.setTitle(getValue(jsonobject, "title"));
        menusectionentities.setBackground(getValue(jsonobject, "background"));
        arraylist.add(menusectionentities);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final List parseMenuList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        CommonListEntity commonlistentity = new CommonListEntity();
        commonlistentity.setId(getValue(jsonobject, "id"));
        commonlistentity.setSection(getValue(jsonobject, "section"));
        commonlistentity.setTitle(getValue(jsonobject, "title"));
        commonlistentity.setBackground(getValue(jsonobject, "background"));
        arraylist.add(commonlistentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final List parseMessages(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        MessageEntity messageentity = new MessageEntity();
        messageentity.setId(getValue(jsonobject, "id"));
        messageentity.setTitle(getValue(jsonobject, "title"));
        messageentity.setTimeStamp(getLongValue(jsonobject, "date"));
        messageentity.setBackground(getValue(jsonobject, "background"));
        messageentity.setTabId(getValue(jsonobject, "rich_tab_id"));
        messageentity.setType(getIntValue(jsonobject, "rich_type"));
        messageentity.setUrl(getValue(jsonobject, "rich_url"));
        messageentity.setCategoryId(getValue(jsonobject, "rich_cat_id"));
        messageentity.setDetailId(getValue(jsonobject, "rich_detail_id"));
        arraylist.add(messageentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final MortgageEntity parseMortgage(String s)
    {
        Object obj = null;
        JSONArray jsonarray;
        jsonarray = new JSONArray(s);
        s = new MortgageEntity();
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = jsonarray.getJSONObject(i);
        s.setInterest(getValue(((JSONObject) (obj)), "interest"));
        s.setReadOnly(getBooleanValue(((JSONObject) (obj)), "readonly"));
        s.setImageUrl(getValue(((JSONObject) (obj)), "image"));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        s;
_L4:
        s.printStackTrace();
        return ((MortgageEntity) (obj));
        Exception exception;
        exception;
        obj = s;
        s = exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final List parseMusicList(String s)
    {
        Object obj = null;
        JSONArray jsonarray;
        jsonarray = new JSONArray(s);
        s = new ArrayList();
        int i = 0;
_L7:
        if (i >= jsonarray.length()) goto _L2; else goto _L1
_L1:
        obj = jsonarray.getJSONObject(i);
        if (!StringUtils.isEmpty(getValue(((JSONObject) (obj)), "id"))) goto _L4; else goto _L3
_L4:
        PlaylistEntity playlistentity = new PlaylistEntity();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        playlistentity.setBackground(getValue(((JSONObject) (obj)), "background"));
        playlistentity.setHeader(getValue(((JSONObject) (obj)), "header"));
        playlistentity.setTintColor(getValue(((JSONObject) (obj)), "tint"));
        playlistentity.setArtist(getValue(((JSONObject) (obj)), "artist"));
        playlistentity.setDuration(getIntValue(((JSONObject) (obj)), "duration"));
        playlistentity.setAlbum(getValue(((JSONObject) (obj)), "album"));
        playlistentity.setId(getValue(((JSONObject) (obj)), "id"));
        playlistentity.setItune(getValue(((JSONObject) (obj)), "itune"));
        playlistentity.setDescription(getValue(((JSONObject) (obj)), "note"));
        playlistentity.setOnSale(getIntValue(((JSONObject) (obj)), "onsale"));
        playlistentity.setAlbumArt(getValue(((JSONObject) (obj)), "album_art"));
        playlistentity.setPreviewUrl(Html.fromHtml(getValue(((JSONObject) (obj)), "previewUrl")).toString());
        playlistentity.setTitle(getValue(((JSONObject) (obj)), "title"));
        s.add(playlistentity);
          goto _L3
        obj;
_L5:
        ((Exception) (obj)).printStackTrace();
        return s;
_L2:
        return s;
        Exception exception;
        exception;
        s = ((String) (obj));
        obj = exception;
        if (true) goto _L5; else goto _L3
_L3:
        i++;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public static final AppInfoEntity parseNewDesignData(String s)
    {
        AppInfoEntity appinfoentity = new AppInfoEntity();
        s = new JSONArray(s);
        int i = 0;
_L3:
        JSONArray jsonarray;
        Object obj;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_136;
        }
        obj = s.getJSONObject(i);
        appinfoentity.setImageUrl(getValue(((JSONObject) (obj)), "image"));
        jsonarray = ((JSONObject) (obj)).getJSONArray("imagesInOrder");
        if (getValue(((JSONObject) (obj)), "manyImages").equalsIgnoreCase("yes"))
        {
            appinfoentity.setHasManyImages(true);
        }
        obj = new ArrayList();
        int j = 0;
_L2:
        if (j >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj)).add(jsonarray.getString(j));
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        appinfoentity.setImagesInOrder(((List) (obj)));
        i++;
          goto _L3
        s;
        s.printStackTrace();
        return appinfoentity;
    }

    public static List parsePhotos(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        Object obj = s.getJSONObject(i);
        com.biznessapps.gallery.GalleryData.Item item = new com.biznessapps.gallery.GalleryData.Item();
        item.setInfo(getValue(((JSONObject) (obj)), "caption"));
        item.setId(getValue(((JSONObject) (obj)), "id"));
        obj = getValue(((JSONObject) (obj)), "image");
        if (StringUtils.isNotEmpty(((String) (obj))))
        {
            item.setFullUrl(((String) (obj)));
            arraylist.add(item);
        }
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final GalleryData parsePicasaData(String s)
    {
        GalleryData gallerydata = new GalleryData();
        s = new JSONArray(s);
        if (s.length() >= 0)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        s = s.getJSONObject(0);
        boolean flag;
        if (getValue(s, "gallery_type").equalsIgnoreCase("coverflow"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        try
        {
            gallerydata.setUseCoverflow(flag);
            gallerydata.setUserId(getValue(s, "userId"));
            gallerydata.setBackground(getValue(s, "background"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return gallerydata;
        }
        return gallerydata;
    }

    public static final RealEstateEntity parseRealEstateItem(String s)
    {
        RealEstateEntity realestateentity = new RealEstateEntity();
        s = new JSONArray(s);
        if (s.length() <= 0) goto _L2; else goto _L1
_L1:
        Object obj;
        s = s.getJSONObject(0);
        realestateentity.setId(getValue(s, "id"));
        realestateentity.setLatitude(getValue(s, "latitude"));
        realestateentity.setLongitude(getValue(s, "longitude"));
        realestateentity.setAddress1(getValue(s, "address_1"));
        realestateentity.setAddress2(getValue(s, "address_2"));
        realestateentity.setAddressBottomRow(getValue(s, "address_bottom_row"));
        realestateentity.setAddressTopRow(getValue(s, "address_top_row"));
        realestateentity.setCity(getValue(s, "city"));
        realestateentity.setState(getValue(s, "state"));
        realestateentity.setZip(getValue(s, "zip"));
        realestateentity.setType(getValue(s, "type"));
        realestateentity.setDistanceType(getValue(s, "distance_type"));
        realestateentity.setPrice(getValue(s, "price"));
        realestateentity.setPriceUnit(getValue(s, "price_unit"));
        realestateentity.setBaths(getValue(s, "baths"));
        realestateentity.setBeds(getValue(s, "beds"));
        realestateentity.setBackground(getValue(s, "background"));
        realestateentity.setImageUrl(getValue(s, "thumbnail_url"));
        realestateentity.setDescription(getValue(s, "description"));
        realestateentity.setAgent(getValue(s, "agent"));
        realestateentity.setPhoneNumber(getValue(s, "phonenumber"));
        realestateentity.setEmail(getValue(s, "email"));
        realestateentity.setStatus(getValue(s, "status"));
        realestateentity.setYearBuild(getIntValue(s, "yearbuilt"));
        realestateentity.setYearUpdated(getIntValue(s, "yearupdated"));
        realestateentity.setLotSize(getValue(s, "lotsize"));
        realestateentity.setLotUnit(getValue(s, "lotunit"));
        realestateentity.setHouseUnit(getValue(s, "houseunit"));
        realestateentity.setSqft(getValue(s, "sqft"));
        realestateentity.setBasement(getValue(s, "basement"));
        realestateentity.setArchitecturalStyle(getValue(s, "architectural_style"));
        obj = s.optJSONArray("appliances");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_428;
        }
        Object obj1 = new ArrayList();
        int i = 0;
_L4:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        realestateentity.setAppliances(((List) (obj1)));
        obj = s.optJSONArray("cooling_type");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_487;
        }
        obj1 = new ArrayList();
        i = 0;
_L6:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L6; else goto _L5
_L5:
        realestateentity.setCoolingTypes(((List) (obj1)));
        obj = s.optJSONArray("floor_covering");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_546;
        }
        obj1 = new ArrayList();
        i = 0;
_L8:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L8; else goto _L7
_L7:
        realestateentity.setFloorCovering(((List) (obj1)));
        obj = s.optJSONArray("heating_type");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_605;
        }
        obj1 = new ArrayList();
        i = 0;
_L10:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L10; else goto _L9
_L9:
        realestateentity.setHeatingTypes(((List) (obj1)));
        obj = s.optJSONArray("heating_fuel");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_664;
        }
        obj1 = new ArrayList();
        i = 0;
_L12:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L12; else goto _L11
_L11:
        realestateentity.setHeatingFuel(((List) (obj1)));
        obj = s.optJSONArray("indoor_features");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_723;
        }
        obj1 = new ArrayList();
        i = 0;
_L14:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L14; else goto _L13
_L13:
        realestateentity.setIndoorFeature(((List) (obj1)));
        obj = s.optJSONArray("rooms");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_782;
        }
        obj1 = new ArrayList();
        i = 0;
_L16:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L16; else goto _L15
_L15:
        realestateentity.setRooms(((List) (obj1)));
        obj = s.optJSONArray("building_amenities");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_841;
        }
        obj1 = new ArrayList();
        i = 0;
_L18:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L18; else goto _L17
_L17:
        realestateentity.setBuildingAmenities(((List) (obj1)));
        obj = s.optJSONArray("exterior");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_900;
        }
        obj1 = new ArrayList();
        i = 0;
_L20:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L20; else goto _L19
_L19:
        realestateentity.setExterior(((List) (obj1)));
        obj = s.optJSONArray("outdoor_amenities");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_959;
        }
        obj1 = new ArrayList();
        i = 0;
_L22:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L22; else goto _L21
_L21:
        realestateentity.setOutdoorAmenities(((List) (obj1)));
        obj = s.optJSONArray("parking");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1018;
        }
        obj1 = new ArrayList();
        i = 0;
_L24:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L24; else goto _L23
_L23:
        realestateentity.setParking(((List) (obj1)));
        obj = s.optJSONArray("roof");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1077;
        }
        obj1 = new ArrayList();
        i = 0;
_L26:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L26; else goto _L25
_L25:
        realestateentity.setRoof(((List) (obj1)));
        obj = s.optJSONArray("view");
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_1136;
        }
        obj1 = new ArrayList();
        i = 0;
_L28:
        if (i >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj1)).add(((JSONArray) (obj)).optString(i));
        i++;
        if (true) goto _L28; else goto _L27
_L27:
        realestateentity.setView(((List) (obj1)));
        s = s.optJSONObject("gallery");
        if (s == null) goto _L2; else goto _L29
_L29:
        boolean flag;
        flag = getBooleanValue(s, "enable_description");
        s = s.getJSONArray("photos");
        obj = new ArrayList();
        i = 0;
_L34:
        if (i >= s.length()) goto _L31; else goto _L30
_L30:
        obj1 = new com.biznessapps.gallery.GalleryData.Item();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_1245;
        }
        ((com.biznessapps.gallery.GalleryData.Item) (obj1)).setInfo(s.getJSONObject(i).getString("description"));
_L32:
        ((com.biznessapps.gallery.GalleryData.Item) (obj1)).setFullUrl(s.getJSONObject(i).getString("url"));
        ((List) (obj)).add(obj1);
        i++;
        continue; /* Loop/switch isn't completed */
        ((com.biznessapps.gallery.GalleryData.Item) (obj1)).setInfo(realestateentity.getAddress1());
          goto _L32
        s;
        s.printStackTrace();
_L2:
        return realestateentity;
_L31:
        realestateentity.setGallery(((List) (obj)));
        return realestateentity;
        if (true) goto _L34; else goto _L33
_L33:
    }

    public static final List parseRealEstateList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        JSONObject jsonobject;
        RealEstateEntity realestateentity;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_313;
        }
        jsonobject = s.getJSONObject(i);
        realestateentity = new RealEstateEntity();
        if (StringUtils.isEmpty(getValue(jsonobject, "id")) || getValue(jsonobject, "id").equalsIgnoreCase("0"))
        {
            break MISSING_BLOCK_LABEL_315;
        }
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        realestateentity.setShowAll(getBooleanValue(jsonobject, "show_all"));
        realestateentity.setId(getValue(jsonobject, "id"));
        realestateentity.setLatitude(getValue(jsonobject, "latitude"));
        realestateentity.setLongitude(getValue(jsonobject, "longitude"));
        realestateentity.setAddress1(getValue(jsonobject, "address_1"));
        realestateentity.setAddress2(getValue(jsonobject, "address_2"));
        realestateentity.setAddressBottomRow(getValue(jsonobject, "address_bottom_row"));
        realestateentity.setAddressTopRow(getValue(jsonobject, "address_top_row"));
        realestateentity.setCity(getValue(jsonobject, "city"));
        realestateentity.setState(getValue(jsonobject, "state"));
        realestateentity.setZip(getValue(jsonobject, "zip"));
        realestateentity.setType(getValue(jsonobject, "type"));
        realestateentity.setDistanceType(getValue(jsonobject, "distance_type"));
        realestateentity.setPrice(getValue(jsonobject, "price"));
        realestateentity.setPriceUnit(getValue(jsonobject, "price_unit"));
        realestateentity.setBaths(getValue(jsonobject, "baths"));
        realestateentity.setBeds(getValue(jsonobject, "beds"));
        realestateentity.setBackground(getValue(jsonobject, "background"));
        realestateentity.setImageUrl(getValue(jsonobject, "thumbnail_url"));
        realestateentity.setRent(getIntValue(jsonobject, "rent"));
        arraylist.add(realestateentity);
        break MISSING_BLOCK_LABEL_315;
        s;
        s.printStackTrace();
        return arraylist;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static final ResellerInfo parseResellerInfo(String s)
    {
        ResellerInfo resellerinfo = new ResellerInfo();
        Object obj;
        com.biznessapps.reseller.ResellerInfo.AppInfo appinfo;
        JSONObject jsonobject;
        int i;
        try
        {
            s = new JSONObject(s);
            obj = s.getJSONObject("reseller");
            resellerinfo.setUsername(((JSONObject) (obj)).getString("username"));
            resellerinfo.setPhone(((JSONObject) (obj)).getString("telephone"));
            resellerinfo.setName(((JSONObject) (obj)).getString("reseller_name"));
            resellerinfo.setOwnerEmail(((JSONObject) (obj)).getString("owner_email"));
            resellerinfo.setLocations(((JSONObject) (obj)).getString("locations"));
            resellerinfo.setPartnerDomain(((JSONObject) (obj)).getString("partner_domain"));
            resellerinfo.setPartnerName(((JSONObject) (obj)).getString("partner_name"));
            resellerinfo.setPartnerContactEmail(((JSONObject) (obj)).getString("partner_contact_email"));
            resellerinfo.setPartnerSupportEmail(((JSONObject) (obj)).getString("partner_support_email"));
            resellerinfo.setActive(getBooleanValue(((JSONObject) (obj)), "is_active"));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return resellerinfo;
        }
        try
        {
            resellerinfo.setHeaderBgColor(Color.parseColor(((JSONObject) (obj)).getString("header_background_color")));
        }
        catch (Exception exception) { }
        s = s.getJSONArray("apps");
        obj = new ArrayList();
        i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        appinfo = new com.biznessapps.reseller.ResellerInfo.AppInfo();
        jsonobject = s.getJSONObject(i);
        appinfo.setId(jsonobject.getString("id"));
        appinfo.setName(jsonobject.getString("name"));
        appinfo.setAppCode(jsonobject.getString("code"));
        appinfo.setThumbnail(jsonobject.getString("thumbnail"));
        appinfo.setLive(getBooleanValue(jsonobject, "live"));
        appinfo.setDemo(getBooleanValue(jsonobject, "demo"));
        appinfo.setActive(getBooleanValue(jsonobject, "active"));
        ((List) (obj)).add(appinfo);
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        resellerinfo.setApps(((List) (obj)));
        return resellerinfo;
    }

    public static ReservationDataKeeper parseReservationCenterData(ReservationDataKeeper reservationdatakeeper, String s)
    {
        s = new JSONArray(s);
        int i = 0;
_L13:
        if (i >= s.length()) goto _L2; else goto _L1
_L1:
        Object obj;
        JSONArray jsonarray;
        Object obj1;
        obj = s.getJSONObject(i);
        reservationdatakeeper.setAdminEmail(getValue(((JSONObject) (obj)), "admin_email"));
        reservationdatakeeper.setBackground(getValue(((JSONObject) (obj)), "background"));
        reservationdatakeeper.setBrief(getValue(((JSONObject) (obj)), "brief"));
        reservationdatakeeper.setHeaderImage(getValue(((JSONObject) (obj)), "headerImage"));
        if (!((JSONObject) (obj)).has("open_time"))
        {
            break MISSING_BLOCK_LABEL_178;
        }
        jsonarray = ((JSONObject) (obj)).getJSONArray("open_time");
        obj1 = new ArrayList();
        int j = 0;
_L4:
        if (j >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = jsonarray.getJSONObject(j);
        LocationOpeningTime locationopeningtime = new LocationOpeningTime();
        locationopeningtime.setDay(getValue(jsonobject, "day"));
        locationopeningtime.setTime(getValue(jsonobject, "time"));
        ((List) (obj1)).add(locationopeningtime);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        reservationdatakeeper.setOpenTimes(((List) (obj1)));
        if (!((JSONObject) (obj)).has("block_days")) goto _L6; else goto _L5
_L5:
        jsonarray = ((JSONObject) (obj)).getJSONArray("block_days");
        obj1 = new ArrayList();
        j = 0;
_L14:
        if (j >= jsonarray.length()) goto _L8; else goto _L7
_L7:
        Object obj2;
        Date date;
        obj2 = jsonarray.getJSONObject(j);
        date = DateUtils.getBlockedDay(getValue(((JSONObject) (obj2)), "date"));
        if (date == null)
        {
            break MISSING_BLOCK_LABEL_494;
        }
        ArrayList arraylist;
        try
        {
            com.biznessapps.reservation.ReservationDataKeeper.BlockedDayEntity blockeddayentity = new com.biznessapps.reservation.ReservationDataKeeper.BlockedDayEntity();
            blockeddayentity.setDate(date);
            blockeddayentity.setNote(getValue(((JSONObject) (obj2)), "note"));
            ((List) (obj1)).add(blockeddayentity);
            break MISSING_BLOCK_LABEL_494;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            reservationdatakeeper.getNetworkResult().setException(s);
        }
          goto _L2
_L8:
        reservationdatakeeper.setBlockedDays(((List) (obj1)));
_L6:
        reservationdatakeeper.setLocations(parseLocationList(getValue(((JSONObject) (obj)), "locations")));
        if (!((JSONObject) (obj)).has("payment_gateways")) goto _L10; else goto _L9
_L9:
        obj = ((JSONObject) (obj)).getJSONArray("payment_gateways");
        arraylist = new ArrayList();
        j = 0;
_L12:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = ((JSONArray) (obj)).getJSONObject(j);
        obj2 = new com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod();
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setGatewayType(getIntValue(((JSONObject) (obj1)), "gateway_type"));
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setGatewayTitle(getValue(((JSONObject) (obj1)), "gateway_title"));
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setGatewayAppId(getValue(((JSONObject) (obj1)), "gateway_appid"));
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setGatewayKey(getValue(((JSONObject) (obj1)), "gateway_key"));
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setGatewayPassword(getValue(((JSONObject) (obj1)), "gateway_password"));
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setOthers(getValue(((JSONObject) (obj1)), "others"));
        ((com.biznessapps.reservation.ReservationDataKeeper.PaymentMethod) (obj2)).setCurrency(getValue(((JSONObject) (obj1)), "currency"));
        arraylist.add(obj2);
        j++;
        if (true) goto _L12; else goto _L11
_L11:
        reservationdatakeeper.setPaymentMethods(arraylist);
_L10:
        i++;
          goto _L13
_L2:
        return reservationdatakeeper;
        j++;
          goto _L14
    }

    public static final List parseReservationData(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = (new JSONArray(s)).getJSONObject(0);
        if (s.has("error") && Integer.parseInt(s.optString("error")) == 9)
        {
            return null;
        }
        s = s.getJSONArray("orders");
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        ReservationEntity reservationentity = new ReservationEntity();
        reservationentity.setId(getValue(jsonobject, "id"));
        reservationentity.setUserId(getValue(jsonobject, "user_id"));
        reservationentity.setItemId(getValue(jsonobject, "item_id"));
        reservationentity.setPaidAmount(getFloatValue(jsonobject, "paid_amount"));
        reservationentity.setServiceName(getValue(jsonobject, "service_name"));
        reservationentity.setOrderState(getIntValue(jsonobject, "order_state"));
        reservationentity.setNote(getValue(jsonobject, "note"));
        reservationentity.setAppId(getValue(jsonobject, "app_id"));
        reservationentity.setTabId(getValue(jsonobject, "tab_id"));
        reservationentity.setCurrency(getValue(jsonobject, "currency"));
        reservationentity.setCurrencySign(getValue(jsonobject, "currency_sign"));
        reservationentity.setLocId(getValue(jsonobject, "loc_id"));
        reservationentity.setTransactionId(getValue(jsonobject, "transaction_id"));
        reservationentity.setCheckoutMethod(getIntValue(jsonobject, "checkout_method"));
        reservationentity.setBillingAddressId(getValue(jsonobject, "billing_address_id"));
        reservationentity.setCost(getFloatValue(jsonobject, "cost"));
        reservationentity.setDuration(getValue(jsonobject, "duration"));
        reservationentity.setImageUrl(getValue(jsonobject, "image_url"));
        reservationentity.setThumbnail(getValue(jsonobject, "thumbnail"));
        reservationentity.setCity(getValue(jsonobject, "location_city"));
        reservationentity.setState(getValue(jsonobject, "location_state"));
        reservationentity.setZip(getValue(jsonobject, "location_zip"));
        reservationentity.setAddress1(getValue(jsonobject, "location_address_1"));
        reservationentity.setAddress2(getValue(jsonobject, "location_address_2"));
        reservationentity.setAddressTopRow(getValue(jsonobject, "location_address_top"));
        reservationentity.setAddressBottomRow(getValue(jsonobject, "location_address_bottom"));
        reservationentity.setCreateTime(getValue(jsonobject, "placed_on"));
        int j = getIntValue(jsonobject, "time_from");
        int k = getIntValue(jsonobject, "time_to");
        int l = getIntValue(jsonobject, "timezone");
        reservationentity.setDate(getValue(jsonobject, "date"), j, k, l);
        arraylist.add(reservationentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static final List parseReservationServiceData(String s)
    {
        ArrayList arraylist = new ArrayList();
        JSONArray jsonarray;
        jsonarray = new JSONArray(s);
        if (hasDataError(s))
        {
            break MISSING_BLOCK_LABEL_230;
        }
        int i = 0;
_L3:
        Object obj;
        ArrayList arraylist1;
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_230;
        }
        obj = jsonarray.optJSONObject(i);
        s = new ReservationServiceItem();
        s.setId(getValue(((JSONObject) (obj)), "id"));
        s.setName(getValue(((JSONObject) (obj)), "name"));
        s.setMins(getIntValue(((JSONObject) (obj)), "mins"));
        s.setPrice(getFloatValue(((JSONObject) (obj)), "price"));
        s.setCurrency(getValue(((JSONObject) (obj)), "currency"));
        s.setCurrencySign(getValue(((JSONObject) (obj)), "currency_sign"));
        s.setNote(getValue(((JSONObject) (obj)), "note"));
        s.setReserveFee(getFloatValue(((JSONObject) (obj)), "reserv_fee"));
        s.setThumbnail(getValue(((JSONObject) (obj)), "thumbnail"));
        obj = ((JSONObject) (obj)).optJSONArray("rest_week");
        arraylist1 = new ArrayList();
        int j = 0;
_L2:
        if (j >= ((JSONArray) (obj)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist1.add(((JSONArray) (obj)).optString(j).toLowerCase());
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        s.setRestWeeks(arraylist1);
        arraylist.add(s);
        i++;
          goto _L3
        s;
        s.printStackTrace();
        return arraylist;
    }

    public static List parseReservationTimeData(String s)
    {
        Object obj;
        Object obj1;
        obj1 = new ArrayList();
        obj = obj1;
        JSONArray jsonarray = new JSONArray(s);
        obj = obj1;
        if (!jsonarray.optJSONObject(0).has("error"))
        {
            break MISSING_BLOCK_LABEL_56;
        }
        obj = obj1;
        if (Integer.parseInt(jsonarray.optJSONObject(0).optString("error")) == 9)
        {
            return null;
        }
        s = ((String) (obj1));
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        obj = obj1;
        s = new ArrayList();
          goto _L2
_L4:
        obj = s;
        obj1 = s;
        int i;
        if (i >= jsonarray.length())
        {
            break MISSING_BLOCK_LABEL_163;
        }
        obj = s;
        obj1 = jsonarray.getJSONObject(i);
        obj = s;
        ReservationTimeItem reservationtimeitem = new ReservationTimeItem();
        obj = s;
        reservationtimeitem.setFrom(getIntValue(((JSONObject) (obj1)), "from"));
        obj = s;
        reservationtimeitem.setTo(getIntValue(((JSONObject) (obj1)), "to"));
        obj = s;
        s.add(reservationtimeitem);
        i++;
        continue; /* Loop/switch isn't completed */
        s;
        s.printStackTrace();
        obj1 = obj;
        return ((List) (obj1));
_L2:
        i = 0;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final MessageEntity parseRichNotification(String s)
    {
        MessageEntity messageentity = new MessageEntity();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        messageentity.setId(getValue(jsonobject, "id"));
        if (!getValue(jsonobject, "rich_tab_id").equalsIgnoreCase("0"))
        {
            messageentity.setTabId(getValue(jsonobject, "rich_tab_id"));
        }
        messageentity.setType(getIntValue(jsonobject, "rich_type"));
        messageentity.setUrl(getValue(jsonobject, "rich_url"));
        messageentity.setCategoryId(getValue(jsonobject, "rich_cat_id"));
        messageentity.setDetailId(getValue(jsonobject, "rich_detail_id"));
        messageentity.setLatitude(getValue(jsonobject, "latitude"));
        messageentity.setLongitude(getValue(jsonobject, "longitude"));
        messageentity.setRadius(getValue(jsonobject, "radius"));
        messageentity.setPaths(getValue(jsonobject, "paths"));
        messageentity.setActiveTill(getLongValue(jsonobject, "active_until"));
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return messageentity;
    }

    public static final List parseRssList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L1:
        JSONObject jsonobject;
        RssEntity rssentity;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_243;
        }
        jsonobject = s.getJSONObject(i);
        rssentity = new RssEntity();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        rssentity.setBackground(getValue(jsonobject, "background"));
        rssentity.setTintColor(getValue(jsonobject, "tint"));
        rssentity.setRssUrl(getValue(jsonobject, "audio"));
        rssentity.setCreator(getValue(jsonobject, "creator"));
        rssentity.setDescription(getValue(jsonobject, "description"));
        rssentity.setId(getValue(jsonobject, "id"));
        rssentity.setAudioType(getValue(jsonobject, "type").equalsIgnoreCase("audio"));
        rssentity.setImageUrl(getValue(jsonobject, "imageurl"));
        rssentity.setLink(getValue(jsonobject, "link"));
        rssentity.setSection(getValue(jsonobject, "section"));
        rssentity.setSubtitle(getValue(jsonobject, "subtitle"));
        rssentity.setSummary(getValue(jsonobject, "summary"));
        rssentity.setTitle(getValue(jsonobject, "title"));
        rssentity.setIcon(getValue(jsonobject, "icon"));
        rssentity.setDate(DateUtils.getDateWithOffset(getLongValue(jsonobject, "pubDate"), 0.0F));
        arraylist.add(rssentity);
        i++;
          goto _L1
        s;
        s.printStackTrace();
        return arraylist;
    }

    public static final ReservationDataKeeper parseSessionToken(String s)
    {
        ReservationDataKeeper reservationdatakeeper = new ReservationDataKeeper();
        s = new JSONArray(s);
        if (s.length() >= 0)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        s = s.getJSONObject(0);
        reservationdatakeeper.setSessionToken(URLDecoder.decode(getValue(s, "token")));
        s = s.optJSONObject("user_info");
        if (s != null)
        {
            try
            {
                reservationdatakeeper.setUserEmail(s.optString("u"));
                reservationdatakeeper.setUserFirstName(s.optString("f"));
                reservationdatakeeper.setUserLastName(s.optString("l"));
                reservationdatakeeper.setUserPhone(s.optString("c"));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return reservationdatakeeper;
            }
        }
        return reservationdatakeeper;
    }

    public static final StatFieldsEntity parseStatFields(String s)
    {
        Object obj;
        Object obj1;
        obj1 = null;
        obj = null;
        JSONArray jsonarray = new JSONArray(s);
        s = ((String) (obj1));
        if (jsonarray.length() <= 0) goto _L2; else goto _L1
_L1:
        s = new StatFieldsEntity();
        int i = 0;
_L6:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = jsonarray.getJSONObject(i);
        s.setEmail(getValue(((JSONObject) (obj1)), "email"));
        s.setImageUrl(getValue(((JSONObject) (obj1)), "image"));
        s.setMessage(getValue(((JSONObject) (obj1)), "message"));
        obj = new ArrayList();
        obj1 = ((JSONObject) (obj1)).getJSONArray("fields");
        int j = 0;
_L4:
        if (j >= ((JSONArray) (obj1)).length())
        {
            break; /* Loop/switch isn't completed */
        }
        ((List) (obj)).add(((JSONArray) (obj1)).getString(j));
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        s.setFields(((List) (obj)));
        i++;
        if (true) goto _L6; else goto _L5
        Exception exception;
        exception;
        s = ((String) (obj));
        obj = exception;
_L7:
        ((Exception) (obj)).printStackTrace();
_L2:
        return s;
        obj;
        if (true) goto _L7; else goto _L5
_L5:
        return s;
    }

    public static final List parseTabs(String s, List list)
    {
        ArrayList arraylist = new ArrayList();
        Random random;
        s = new JSONArray(s);
        random = new Random();
        int i = 0;
_L2:
        Tab tab;
        JSONObject jsonobject;
        boolean flag;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_583;
        }
        jsonobject = s.getJSONObject(i);
        tab = new Tab();
        tab.setLabel(getValue(jsonobject, "TabLabel"));
        tab.setImage(getValue(jsonobject, "TabImage"));
        tab.setViewController(getValue(jsonobject, "ViewController"));
        tab.setNavigationController(getValue(jsonobject, "NavigationController"));
        tab.setLastUpdated(getValue(jsonobject, "LastUpdated"));
        tab.setUrl(getValue(jsonobject, "URL"));
        tab.setItemId(getValue(jsonobject, "item_id"));
        tab.setSectionId(getValue(jsonobject, "section_id"));
        tab.setUseBlurEffect(getBooleanValue(jsonobject, "blur_effect"));
        flag = getBooleanValue(jsonobject, "custom_design");
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        tab.setHasCustomDesign(flag);
        tab.setTabSrc(getValue(jsonobject, "tab_src"));
        tab.setOpenInSafari(getBooleanValue(jsonobject, "openInSafari"));
        tab.setShowText(getBooleanValue(jsonobject, "tab_showtext"));
        tab.setId(System.currentTimeMillis() + (long)random.nextInt());
        tab.setTabId(getValue(jsonobject, "tab_id"));
        tab.setTabIcon(getValue(jsonobject, "tab_icon"));
        tab.setTabTint(getValue(jsonobject, "tab_tint"));
        tab.setTabTintOpacity(getFloatValue(jsonobject, "tab_tint_opacity"));
        tab.setTabText(getValue(jsonobject, "tab_text"));
        tab.setGlobalBgColor(getValue(jsonobject, "global_background_color"));
        tab.setEvenRowColor(getValue(jsonobject, "EvenRowColor"));
        tab.setOddRowColor(getValue(jsonobject, "OddRowColor"));
        tab.setFeatureTextColor(getValue(jsonobject, "FeatureTextColor"));
        tab.setButtonTextColor(getValue(jsonobject, "ButtonTextColor"));
        tab.setButtonBgColor(getValue(jsonobject, "ButtonBgColor"));
        tab.setEvenRowTextColor(getValue(jsonobject, "EvenRowTextColor"));
        tab.setOddRowTextColor(getValue(jsonobject, "OddRowTextColor"));
        tab.setNavigBarColor(getValue(jsonobject, "NavigationBarColor"));
        tab.setNavigBarTextColor(getValue(jsonobject, "NavigationTextColor"));
        tab.setNavigBarTextShadowColor(getValue(jsonobject, "NavigationTextShadowColor"));
        tab.setSectionBarColor(getValue(jsonobject, "SectionBarColor"));
        tab.setSectionBarTextColor(getValue(jsonobject, "SectionBarTextColor"));
        tab.setGlobalHeaderUrl(getValue(jsonobject, "global_header"));
        tab.setNavTintOpacity(getFloatValue(jsonobject, "nav_tint_opacity"));
        arraylist.add(tab);
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_585;
        }
        try
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Tab tab1 = (Tab)iterator.next();
                if (tab1.getTabId().equalsIgnoreCase(tab.getTabId()))
                {
                    tab.setHide(tab1.isHide());
                }
            } while (true);
            break MISSING_BLOCK_LABEL_585;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        return arraylist;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static final CommonEntity parseTip(String s)
    {
        Object obj = null;
        JSONArray jsonarray;
        jsonarray = new JSONArray(s);
        s = new CommonEntity();
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        s.setImageUrl(getValue(jsonarray.getJSONObject(i), "image"));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        s;
_L4:
        s.printStackTrace();
        return ((CommonEntity) (obj));
        Exception exception;
        exception;
        obj = s;
        s = exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final List parseTwitterSearchList(String s)
    {
        ArrayList arraylist = new ArrayList();
        JSONArray jsonarray = (new JSONObject(s)).optJSONArray("statuses");
        if (jsonarray == null) goto _L2; else goto _L1
_L1:
        int i = 0;
_L6:
        if (i >= jsonarray.length()) goto _L2; else goto _L3
_L3:
        Object obj;
        JSONObject jsonobject;
        SearchEntity searchentity;
        jsonobject = jsonarray.getJSONObject(i);
        searchentity = new SearchEntity();
        obj = new SimpleDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.US);
        s = null;
        obj = ((SimpleDateFormat) (obj)).parse(getValue(jsonobject, "created_at"));
        s = ((String) (obj));
_L4:
        searchentity.setTimeStamp(s.getTime() / 1000L);
        s = jsonobject.getJSONObject("user");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_177;
        }
        searchentity.setTitle(getValue(s, "name"));
        if (s.has("screen_name"))
        {
            searchentity.setName((new StringBuilder()).append("@").append(getValue(s, "screen_name")).toString());
        }
        searchentity.setImageUrl(getValue(s, "profile_image_url"));
        searchentity.setText(getValue(jsonobject, "text"));
        arraylist.add(searchentity);
        i++;
        continue; /* Loop/switch isn't completed */
        ParseException parseexception;
        parseexception;
        parseexception.printStackTrace();
          goto _L4
        s;
        s.printStackTrace();
_L2:
        return arraylist;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static final EmailPhotoEntity parseVoiceData(String s)
    {
        Object obj = null;
        JSONArray jsonarray;
        jsonarray = new JSONArray(s);
        s = new EmailPhotoEntity();
        int i = 0;
_L2:
        if (i >= jsonarray.length())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = jsonarray.getJSONObject(i);
        s.setDescription(getValue(((JSONObject) (obj)), "description"));
        s.setEmail(getValue(((JSONObject) (obj)), "email"));
        s.setImageUrl(getValue(((JSONObject) (obj)), "image"));
        s.setSubject(getValue(((JSONObject) (obj)), "subject"));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        return s;
        s;
_L4:
        s.printStackTrace();
        return ((EmailPhotoEntity) (obj));
        Exception exception;
        exception;
        obj = s;
        s = exception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static final List parseWebTiers(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        CommonListEntity commonlistentity = new CommonListEntity();
        commonlistentity.setId(getValue(jsonobject, "id"));
        commonlistentity.setUrl(getValue(jsonobject, "url"));
        commonlistentity.setSection(getValue(jsonobject, "section"));
        commonlistentity.setTitle(getValue(jsonobject, "title"));
        commonlistentity.setBackground(getValue(jsonobject, "background"));
        commonlistentity.setImageUrl(getValue(jsonobject, "thumbnail"));
        commonlistentity.setOpenInSafari(getBooleanValue(jsonobject, "openInSafari"));
        arraylist.add(commonlistentity);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static List parseYoutubeComments(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        if (s.length() <= 0) goto _L2; else goto _L1
_L1:
        s = s.getJSONArray(0);
        if (s == null) goto _L2; else goto _L3
_L3:
        int i = 0;
_L4:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject = s.getJSONObject(i);
        CommentEntity commententity = new CommentEntity();
        commententity.setId(getValue(jsonobject, "id"));
        commententity.setComment(getValue(jsonobject, "content"));
        commententity.setImageUrl(getValue(jsonobject, "author_avatar"));
        commententity.setTitle(getValue(jsonobject, "author"));
        commententity.setTimeStamp(getLongValue(jsonobject, "published"));
        arraylist.add(commententity);
        i++;
        if (true) goto _L4; else goto _L2
        s;
        s.printStackTrace();
_L2:
        return arraylist;
    }

    public static final List parseYoutubeRssList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L1:
        JSONObject jsonobject;
        YoutubeRssEntity youtuberssentity;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_277;
        }
        jsonobject = s.getJSONObject(i);
        youtuberssentity = new YoutubeRssEntity();
        youtuberssentity.setCreator(getValue(jsonobject, "creator"));
        youtuberssentity.setCreatorAvatar(getValue(jsonobject, "creator_avatar"));
        youtuberssentity.setDescription(getValue(jsonobject, "description"));
        youtuberssentity.setFeedlinkCountHint(getValue(jsonobject, "gd:feedlink_countHint"));
        youtuberssentity.setFeedlinkHref(getValue(jsonobject, "gd:feedlink_href"));
        youtuberssentity.setId(getValue(jsonobject, "id"));
        youtuberssentity.setImageUrl(getValue(jsonobject, "imageurl"));
        youtuberssentity.setLink(getValue(jsonobject, "link"));
        youtuberssentity.setMediaThumbnailUrl(getValue(jsonobject, "media:thumbnail_url"));
        youtuberssentity.setTimeStamp(getLongValue(jsonobject, "pubDate"));
        youtuberssentity.setRatingAverage(getValue(jsonobject, "gd:rating_average"));
        youtuberssentity.setCounts(getValue(jsonobject, "numlikes"));
        youtuberssentity.setSection(getValue(jsonobject, "section"));
        youtuberssentity.setStatisticsViewCount(getValue(jsonobject, "yt:statistics_viewCount"));
        youtuberssentity.setSubtitle(getValue(jsonobject, "subtitle"));
        youtuberssentity.setSummary(getValue(jsonobject, "summary"));
        youtuberssentity.setTitle(getValue(jsonobject, "title"));
        youtuberssentity.setBackground(getValue(jsonobject, "background"));
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        youtuberssentity.setNote(getValue(jsonobject, "note"));
        arraylist.add(youtuberssentity);
        i++;
          goto _L1
        s;
        s.printStackTrace();
        return arraylist;
    }

    public static final void updateInitStateWithData(String s)
    {
        CachingManager cachingmanager = AppCore.getInstance().getCachingManager();
        String s1 = null;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        try
        {
            jsonobject = (new JSONArray(s)).getJSONObject(0);
            s = jsonobject.optJSONObject("settings");
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        AppCore.getInstance().setAppSettings(parseAppSettings(s));
        s = AppCore.getInstance().getAppSettings();
        if (StringUtils.isEmpty(s.getV6DeviceUserId(AppCore.getInstance().getAppContext())))
        {
            s.setV6DeviceUserId(AppCore.getInstance().getAppContext(), getValue(jsonobject, "user_id"));
        }
        jsonobject1 = jsonobject.optJSONObject("home");
        s = s1;
        if (jsonobject1 == null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        s = parseAppInfo(jsonobject1);
        cachingmanager.saveData("APP_INFO_PROPERTY", s);
        s = s.getSubTabs();
        s1 = jsonobject.optString("tabs");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        cachingmanager.setTabList(parseTabs(s1, s));
    }
}
