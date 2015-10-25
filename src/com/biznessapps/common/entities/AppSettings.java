// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.content.Context;
import android.util.Patterns;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettingsInterface;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.StringUtils;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.biznessapps.common.entities:
//            EmailCollectInfo

public class AppSettings
    implements UiSettingsInterface
{

    public static final int BOTTOM_MENU_NAVIGATION = 3;
    private static final String DEVICE_USER_ID = "device_user_id";
    public static final int FADE_MODE = 2;
    public static final int HOME_LAYOUT_LIST = 1;
    public static final int HOME_LAYOUT_OLD = 0;
    public static final int HOME_LAYOUT_TILES = 2;
    public static final int KEN_BURNS_ANIMATION_MODE = 2;
    public static final int LEFT_MENU_NAVIGATION = 0;
    public static final int NO_ANIMATION_MODE = 0;
    public static final int PARALLAX_ANIMATION_MODE = 1;
    public static final int RIGHT_MENU_NAVIGATION = 2;
    public static final int SLIDING_MODE = 1;
    public static final int TOP_MENU_NAVIGATION = 1;
    private String adsId;
    private int animationMode;
    private String appId;
    private String appName;
    private String appStoreUrl;
    private String buttonBgColor;
    private String buttonTextColor;
    private int cols;
    private String consumerKey;
    private String consumerSecret;
    private String defaultListBgColor;
    private String deviceId;
    private String deviceUserId;
    private EmailCollectInfo emailCollectInfo;
    private String evenRowColor;
    private String evenRowTextColor;
    private String facebookAppId;
    private String featureTextColor;
    private String gaAccountId;
    private String globalBgColor;
    private String globalHeaderUrl;
    private boolean hasCallButton;
    private boolean hasDirectionButton;
    private boolean hasTellFriendButton;
    private String headerAlignment;
    private float headerHeight;
    private String headerSrc;
    private String headerTint;
    private float headerTintOpacity;
    private float headerWidth;
    private int homeLayoutType;
    private int homeTabTextColor;
    private String htmlStoreUrl;
    private boolean isActive;
    private boolean isAdmob;
    private boolean isMessageIconLeft;
    private boolean isMessageIconTop;
    private boolean isMessageIconUsed;
    private boolean isModernSlidingUsed;
    private boolean isMusicIconLeft;
    private boolean isMusicIconTop;
    private boolean isMusicIconUsed;
    private boolean isNormalHeader;
    private boolean isProtected;
    private boolean mailingListPrompt;
    private Tab mailingTab;
    private int messageIconOpacity;
    private String messateLinkedTab;
    private boolean moreButtonNavigation;
    private String moreIconUrl;
    private Tab moreTab;
    private String moreTabBg;
    private String moreTabTabletBg;
    private int musicIconOpacity;
    private float navTintOpacity;
    private String navigBarColor;
    private String navigBarTextColor;
    private String navigBarTextShadowColor;
    private int navigationMenuType;
    private String newsTabId;
    private String oddRowColor;
    private String oddRowTextColor;
    private boolean offlineCachingPrompt;
    private String playStoreUrl;
    private String protectedHeaderColor;
    private String pushingIp;
    private int rows;
    private String rssIconUrl;
    private String sectionBarColor;
    private String sectionBarTextColor;
    private int serverTimezone;
    private boolean shouldHideComments;
    private boolean showHomeTabText;
    private boolean showNewsFeed;
    private boolean showText;
    private boolean socialOnBoard;
    private String splashImage;
    private String tabFont;
    private String tabIcon;
    private String tabSrc;
    private String tabText;
    private String tabTint;
    private float tabTintOpacity;
    private boolean useAds;
    private boolean useBlurEffect;
    private boolean useBlurEffectForHome;
    private boolean useBlurEffectForMessagesTab;
    private boolean useBlurEffectForMoreTab;
    private boolean useHomeOldBg;
    private String useTextColors;
    private String userId;

    public AppSettings()
    {
        animationMode = 0;
        homeLayoutType = 0;
        navigationMenuType = 3;
        showText = true;
    }

    private String getMainEmail(Context context)
    {
        if (context != null)
        {
            Pattern pattern = Patterns.EMAIL_ADDRESS;
            context = AccountManager.get(context).getAccounts();
            int j = context.length;
            int i = 0;
            while (i < j) 
            {
                Object obj = context[i];
                if (pattern.matcher(((Account) (obj)).name).matches())
                {
                    return ((Account) (obj)).name;
                }
                i++;
            }
        }
        return null;
    }

    private String getPrefUserIdKey(Context context)
    {
        String s = AppCore.getInstance().getCachingManager().getAppCode();
        context = null;
        if (!StringUtils.isEmpty(s))
        {
            context = String.format(Locale.getDefault(), "%s_%s", new Object[] {
                "device_user_id", s
            });
        }
        return context;
    }

    public String getAdsId()
    {
        return adsId;
    }

    public int getAnimationMode()
    {
        return animationMode;
    }

    public String getAppId()
    {
        return appId;
    }

    public String getAppName()
    {
        return appName;
    }

    public String getAppStoreUrl()
    {
        return appStoreUrl;
    }

    public String getButtonBgColor()
    {
        return buttonBgColor;
    }

    public String getButtonTextColor()
    {
        return buttonTextColor;
    }

    public int getCols()
    {
        return cols;
    }

    public String getConsumerKey()
    {
        return consumerKey;
    }

    public String getConsumerSecret()
    {
        return consumerSecret;
    }

    public String getDefaultListBgColor()
    {
        defaultListBgColor = globalBgColor;
        return defaultListBgColor;
    }

    public String getDeviceId(Context context)
    {
        if (context != null && deviceId == null)
        {
            deviceId = android.provider.Settings.Secure.getString(context.getContentResolver(), "android_id");
        }
        return deviceId;
    }

    public String getDeviceUserId(Context context)
    {
        if (StringUtils.isNotEmpty(deviceUserId))
        {
            return deviceUserId;
        } else
        {
            String s = getDeviceId(context);
            context = getMainEmail(context);
            deviceUserId = String.format(Locale.getDefault(), "%s_%s", new Object[] {
                context, s
            });
            return deviceUserId;
        }
    }

    public EmailCollectInfo getEmailCollectInfo()
    {
        return emailCollectInfo;
    }

    public String getEvenRowColor()
    {
        return evenRowColor;
    }

    public String getEvenRowTextColor()
    {
        return evenRowTextColor;
    }

    public String getFacebookAppId()
    {
        return facebookAppId;
    }

    public String getFeatureTextColor()
    {
        return featureTextColor;
    }

    public String getGaAccountId()
    {
        return gaAccountId;
    }

    public String getGlobalBgColor()
    {
        return globalBgColor;
    }

    public String getGlobalHeaderUrl()
    {
        return globalHeaderUrl;
    }

    public String getHeaderAlignment()
    {
        return headerAlignment;
    }

    public float getHeaderHeight()
    {
        return headerHeight;
    }

    public String getHeaderSrc()
    {
        return headerSrc;
    }

    public String getHeaderTint()
    {
        return headerTint;
    }

    public float getHeaderTintOpacity()
    {
        return headerTintOpacity;
    }

    public float getHeaderWidth()
    {
        return headerWidth;
    }

    public int getHomeLayoutType()
    {
        return homeLayoutType;
    }

    public int getHomeTabTextColor()
    {
        return homeTabTextColor;
    }

    public String getHtmlStoreUrl()
    {
        return htmlStoreUrl;
    }

    public Tab getMailingTab()
    {
        return mailingTab;
    }

    public int getMessageIconOpacity()
    {
        return messageIconOpacity;
    }

    public String getMessateLinkedTab()
    {
        return messateLinkedTab;
    }

    public String getMoreIconUrl()
    {
        return moreIconUrl;
    }

    public Tab getMoreTab()
    {
        return moreTab;
    }

    public String getMoreTabBg()
    {
        return moreTabBg;
    }

    public String getMoreTabTabletBg()
    {
        return moreTabTabletBg;
    }

    public int getMusicIconOpacity()
    {
        return musicIconOpacity;
    }

    public float getNavTintOpacity()
    {
        return navTintOpacity;
    }

    public String getNavigBarColor()
    {
        return navigBarColor;
    }

    public String getNavigBarTextColor()
    {
        return navigBarTextColor;
    }

    public String getNavigBarTextShadowColor()
    {
        return navigBarTextShadowColor;
    }

    public int getNavigationMenuType()
    {
        return navigationMenuType;
    }

    public String getNewsTabId()
    {
        return newsTabId;
    }

    public String getOddRowColor()
    {
        return oddRowColor;
    }

    public String getOddRowTextColor()
    {
        return oddRowTextColor;
    }

    public String getPlayStoreUrl()
    {
        return playStoreUrl;
    }

    public String getProtectedHeaderColor()
    {
        return protectedHeaderColor;
    }

    public String getPushingIp()
    {
        return pushingIp;
    }

    public int getRows()
    {
        return rows;
    }

    public String getRssIconUrl()
    {
        return rssIconUrl;
    }

    public String getSectionBarColor()
    {
        return sectionBarColor;
    }

    public String getSectionBarTextColor()
    {
        return sectionBarTextColor;
    }

    public int getServerTimezone()
    {
        return serverTimezone;
    }

    public String getSplashImage()
    {
        return splashImage;
    }

    public String getTabFont()
    {
        return tabFont;
    }

    public String getTabIcon()
    {
        return tabIcon;
    }

    public String getTabSrc()
    {
        return tabSrc;
    }

    public String getTabText()
    {
        return tabText;
    }

    public String getTabTint()
    {
        return tabTint;
    }

    public float getTabTintOpacity()
    {
        return tabTintOpacity;
    }

    public String getUseTextColors()
    {
        return useTextColors;
    }

    public String getUserId()
    {
        return userId;
    }

    public String getV6DeviceUserId(Context context)
    {
        if (userId == null)
        {
            String s = getPrefUserIdKey(context);
            if (s != null)
            {
                userId = AppCore.getInstance().getCachingManager().getFromSharedPreferences(context, s);
            }
        }
        return userId;
    }

    public String getValidURL(String s)
    {
        if (s == null || s.isEmpty())
        {
            return s;
        }
        String s1 = s;
        if (!s.startsWith("http"))
        {
            s1 = (new StringBuilder()).append("http://").append(s).toString();
        }
        try
        {
            s = (new URL(s1)).toString();
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        return s;
    }

    public boolean hasCallButton()
    {
        return hasCallButton;
    }

    public boolean hasDirectionButton()
    {
        return hasDirectionButton;
    }

    public boolean hasMoreButtonNavigation()
    {
        return moreButtonNavigation;
    }

    public boolean hasTellFriendButton()
    {
        return hasTellFriendButton;
    }

    public boolean isActive()
    {
        return isActive;
    }

    public boolean isAdmob()
    {
        return isAdmob;
    }

    public boolean isMailingListPrompt()
    {
        return mailingListPrompt;
    }

    public boolean isMessageIconLeft()
    {
        return isMessageIconLeft;
    }

    public boolean isMessageIconTop()
    {
        return isMessageIconTop;
    }

    public boolean isMessageIconUsed()
    {
        return isMessageIconUsed;
    }

    public boolean isModernSlidingUsed()
    {
        return isModernSlidingUsed;
    }

    public boolean isMoreButtonNavigation()
    {
        return moreButtonNavigation;
    }

    public boolean isMusicIconLeft()
    {
        return isMusicIconLeft;
    }

    public boolean isMusicIconTop()
    {
        return isMusicIconTop;
    }

    public boolean isMusicIconUsed()
    {
        return isMusicIconUsed;
    }

    public boolean isNormalHeader()
    {
        return isNormalHeader;
    }

    public boolean isOfflineCachingPrompt()
    {
        return offlineCachingPrompt;
    }

    public boolean isProtected()
    {
        return isProtected;
    }

    public boolean isShowHomeTabText()
    {
        return showHomeTabText;
    }

    public boolean isShowText()
    {
        return showText;
    }

    public boolean isSocialOnBoard()
    {
        return socialOnBoard;
    }

    public boolean isUseHomeOldBg()
    {
        return useHomeOldBg;
    }

    public void setActive(boolean flag)
    {
        isActive = flag;
    }

    public void setAdmob(boolean flag)
    {
        isAdmob = flag;
    }

    public void setAdsId(String s)
    {
        adsId = s;
    }

    public void setAnimationMode(int i)
    {
        animationMode = i;
    }

    public void setAppId(String s)
    {
        appId = s;
    }

    public void setAppName(String s)
    {
        appName = s;
    }

    public void setAppStoreUrl(String s)
    {
        appStoreUrl = getValidURL(s);
    }

    public void setButtonBgColor(String s)
    {
        buttonBgColor = s;
    }

    public void setButtonTextColor(String s)
    {
        buttonTextColor = s;
    }

    public void setCols(int i)
    {
        cols = i;
    }

    public void setConsumerKey(String s)
    {
        consumerKey = s;
    }

    public void setConsumerSecret(String s)
    {
        consumerSecret = s;
    }

    public void setEmailCollectInfo(EmailCollectInfo emailcollectinfo)
    {
        emailCollectInfo = emailcollectinfo;
    }

    public void setEvenRowColor(String s)
    {
        evenRowColor = s;
    }

    public void setEvenRowTextColor(String s)
    {
        evenRowTextColor = s;
    }

    public void setFacebookAppId(String s)
    {
        facebookAppId = s;
        FacebookSocialNetworkHandler.getInstance(AppCore.getInstance().getAppContext()).setFacebookAppId(s);
    }

    public void setFeatureTextColor(String s)
    {
        featureTextColor = s;
    }

    public void setGaAccountId(String s)
    {
        gaAccountId = s;
    }

    public void setGlobalBgColor(String s)
    {
        globalBgColor = s;
    }

    public void setGlobalHeaderUrl(String s)
    {
        globalHeaderUrl = s;
    }

    public void setHasCallButton(boolean flag)
    {
        hasCallButton = flag;
    }

    public void setHasDirectionButton(boolean flag)
    {
        hasDirectionButton = flag;
    }

    public void setHasTellFriendButton(boolean flag)
    {
        hasTellFriendButton = flag;
    }

    public void setHeaderAlignment(String s)
    {
        headerAlignment = s;
    }

    public void setHeaderHeight(float f)
    {
        headerHeight = f;
    }

    public void setHeaderSrc(String s)
    {
        headerSrc = s;
    }

    public void setHeaderTint(String s)
    {
        headerTint = s;
    }

    public void setHeaderTintOpacity(float f)
    {
        headerTintOpacity = f;
    }

    public void setHeaderWidth(float f)
    {
        headerWidth = f;
    }

    public void setHomeLayoutType(int i)
    {
        homeLayoutType = i;
    }

    public void setHomeTabTextColor(int i)
    {
        homeTabTextColor = i;
    }

    public void setHtmlStoreUrl(String s)
    {
        htmlStoreUrl = getValidURL(s);
    }

    public void setMailingListPrompt(boolean flag)
    {
        mailingListPrompt = flag;
    }

    public void setMailingTab(Tab tab)
    {
        mailingTab = tab;
    }

    public void setMessageIconLeft(boolean flag)
    {
        isMessageIconLeft = flag;
    }

    public void setMessageIconOpacity(int i)
    {
        messageIconOpacity = i;
    }

    public void setMessageIconTop(boolean flag)
    {
        isMessageIconTop = flag;
    }

    public void setMessageIconUsed(boolean flag)
    {
        isMessageIconUsed = flag;
    }

    public void setMessateLinkedTab(String s)
    {
        messateLinkedTab = s;
    }

    public void setModernSlidingUsed(boolean flag)
    {
        isModernSlidingUsed = flag;
    }

    public void setMoreButtonNavigation(boolean flag)
    {
        moreButtonNavigation = flag;
    }

    public void setMoreIconUrl(String s)
    {
        moreIconUrl = s;
    }

    public void setMoreTab(Tab tab)
    {
        moreTab = tab;
    }

    public void setMoreTabBg(String s)
    {
        moreTabBg = s;
    }

    public void setMoreTabTabletBg(String s)
    {
        moreTabTabletBg = s;
    }

    public void setMusicIconLeft(boolean flag)
    {
        isMusicIconLeft = flag;
    }

    public void setMusicIconOpacity(int i)
    {
        musicIconOpacity = i;
    }

    public void setMusicIconTop(boolean flag)
    {
        isMusicIconTop = flag;
    }

    public void setMusicIconUsed(boolean flag)
    {
        isMusicIconUsed = flag;
    }

    public void setNavTintOpacity(float f)
    {
        navTintOpacity = f;
    }

    public void setNavigBarColor(String s)
    {
        navigBarColor = s;
    }

    public void setNavigBarTextColor(String s)
    {
        navigBarTextColor = s;
    }

    public void setNavigBarTextShadowColor(String s)
    {
        navigBarTextShadowColor = s;
    }

    public void setNavigationMenuType(int i)
    {
        navigationMenuType = i;
    }

    public void setNewsTabId(String s)
    {
        if (newsTabId == null)
        {
            newsTabId = s;
        }
    }

    public void setNormalHeader(boolean flag)
    {
        isNormalHeader = flag;
    }

    public void setOddRowColor(String s)
    {
        oddRowColor = s;
    }

    public void setOddRowTextColor(String s)
    {
        oddRowTextColor = s;
    }

    public void setOfflineCachingPrompt(boolean flag)
    {
        offlineCachingPrompt = flag;
    }

    public void setPlayStoreUrl(String s)
    {
        playStoreUrl = getValidURL(s);
    }

    public void setProtected(boolean flag)
    {
        isProtected = flag;
    }

    public void setProtectedHeaderColor(String s)
    {
        protectedHeaderColor = s;
    }

    public void setPushingIp(String s)
    {
        pushingIp = s;
    }

    public void setRows(int i)
    {
        rows = i;
    }

    public void setRssIconUrl(String s)
    {
        rssIconUrl = s;
    }

    public void setSectionBarColor(String s)
    {
        sectionBarColor = s;
    }

    public void setSectionBarTextColor(String s)
    {
        sectionBarTextColor = s;
    }

    public void setServerTimezone(int i)
    {
        serverTimezone = i;
    }

    public void setShouldHideComments(boolean flag)
    {
        shouldHideComments = flag;
    }

    public void setShowHomeTabText(boolean flag)
    {
        showHomeTabText = flag;
    }

    public void setShowNewsFeed(boolean flag)
    {
        showNewsFeed = flag;
    }

    public void setShowText(boolean flag)
    {
        showText = flag;
    }

    public void setSocialOnBoard(boolean flag)
    {
        socialOnBoard = flag;
    }

    public void setSplashImage(String s)
    {
        splashImage = s;
    }

    public void setTabFont(String s)
    {
        tabFont = s;
    }

    public void setTabIcon(String s)
    {
        tabIcon = s;
    }

    public void setTabSrc(String s)
    {
        tabSrc = s;
    }

    public void setTabText(String s)
    {
        tabText = s;
    }

    public void setTabTint(String s)
    {
        tabTint = s;
    }

    public void setTabTintOpacity(float f)
    {
        tabTintOpacity = f;
    }

    public void setUseAds(boolean flag)
    {
        useAds = flag;
    }

    public void setUseBlurEffect(boolean flag)
    {
        useBlurEffect = flag;
    }

    public void setUseBlurEffectForHome(boolean flag)
    {
        useBlurEffectForHome = flag;
    }

    public void setUseBlurEffectForMessagesTab(boolean flag)
    {
        useBlurEffectForMessagesTab = flag;
    }

    public void setUseBlurEffectForMoreTab(boolean flag)
    {
        useBlurEffectForMoreTab = flag;
    }

    public void setUseHomeOldBg(boolean flag)
    {
        useHomeOldBg = flag;
    }

    public void setUseTextColors(String s)
    {
        useTextColors = s;
    }

    public void setV6DeviceUserId(Context context, String s)
    {
        String s1;
        if (!StringUtils.isEmpty(s))
        {
            if ((s1 = getPrefUserIdKey(context)) != null)
            {
                userId = s;
                AppCore.getInstance().getCachingManager().saveInSharedPreferences(context, s, s1);
                return;
            }
        }
    }

    public boolean shouldHideComments()
    {
        return shouldHideComments;
    }

    public boolean showNewsFeed()
    {
        return showNewsFeed;
    }

    public boolean useAds()
    {
        return useAds;
    }

    public boolean useBlurEffect()
    {
        return useBlurEffect;
    }

    public boolean useBlurEffectForHome()
    {
        return useBlurEffectForHome;
    }

    public boolean useBlurEffectForMessagesTab()
    {
        return useBlurEffectForMessagesTab;
    }

    public boolean useBlurEffectForMoreTab()
    {
        return useBlurEffectForMoreTab;
    }
}
