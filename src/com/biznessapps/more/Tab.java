// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.more;

import com.biznessapps.api.UiSettingsInterface;
import java.io.Serializable;
import java.util.List;

public class Tab
    implements Serializable, UiSettingsInterface
{

    private static final long serialVersionUID = 1L;
    private String buttonBgColor;
    private String buttonTextColor;
    private String customIcon;
    private String defaultListBgColor;
    private String evenRowColor;
    private String evenRowTextColor;
    private String featureTextColor;
    private String globalBgColor;
    private String globalHeaderUrl;
    private boolean hasCustomDesign;
    private long id;
    private String image;
    private boolean isHide;
    private String itemId;
    private String label;
    private String lastUpdated;
    private float navTintOpacity;
    private String navigBarColor;
    private String navigBarTextColor;
    private String navigBarTextShadowColor;
    private String navigationController;
    private String oddRowColor;
    private String oddRowTextColor;
    private boolean openInSafari;
    private String sectionBarColor;
    private String sectionBarTextColor;
    private String sectionId;
    private int seq;
    private boolean showText;
    private List subTabs;
    private String tabIcon;
    private String tabId;
    private String tabImageUrl;
    private String tabLabelFont;
    private String tabLabelText;
    private String tabLabelTextBgColor;
    private String tabLabelTextColor;
    private String tabSrc;
    private String tabText;
    private String tabTint;
    private float tabTintOpacity;
    private String url;
    private boolean useBlurEffect;
    private String viewController;

    public Tab()
    {
        showText = false;
        label = "";
        image = "";
        viewController = "";
        navigationController = "";
        lastUpdated = "";
        url = "";
        itemId = "";
        sectionId = "";
    }

    public String getButtonBgColor()
    {
        return buttonBgColor;
    }

    public String getButtonTextColor()
    {
        return buttonTextColor;
    }

    public String getCustomIcon()
    {
        return customIcon;
    }

    public String getDefaultListBgColor()
    {
        defaultListBgColor = globalBgColor;
        return defaultListBgColor;
    }

    public String getEvenRowColor()
    {
        return evenRowColor;
    }

    public String getEvenRowTextColor()
    {
        return evenRowTextColor;
    }

    public String getFeatureTextColor()
    {
        return featureTextColor;
    }

    public String getGlobalBgColor()
    {
        return globalBgColor;
    }

    public String getGlobalHeaderUrl()
    {
        return globalHeaderUrl;
    }

    public long getId()
    {
        return id;
    }

    public String getImage()
    {
        return image;
    }

    public String getItemId()
    {
        return itemId;
    }

    public String getLabel()
    {
        return label;
    }

    public String getLastUpdated()
    {
        return lastUpdated;
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

    public String getNavigationController()
    {
        return navigationController;
    }

    public String getOddRowColor()
    {
        return oddRowColor;
    }

    public String getOddRowTextColor()
    {
        return oddRowTextColor;
    }

    public String getSectionBarColor()
    {
        return sectionBarColor;
    }

    public String getSectionBarTextColor()
    {
        return sectionBarTextColor;
    }

    public String getSectionId()
    {
        return sectionId;
    }

    public int getSeq()
    {
        return seq;
    }

    public List getSubTabs()
    {
        return subTabs;
    }

    public String getTabIcon()
    {
        return tabIcon;
    }

    public String getTabId()
    {
        return tabId;
    }

    public String getTabImageUrl()
    {
        return tabImageUrl;
    }

    public String getTabLabelFont()
    {
        return tabLabelFont;
    }

    public String getTabLabelText()
    {
        return tabLabelText;
    }

    public String getTabLabelTextBgColor()
    {
        return tabLabelTextBgColor;
    }

    public String getTabLabelTextColor()
    {
        return tabLabelTextColor;
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

    public String getUrl()
    {
        return url;
    }

    public String getViewController()
    {
        return viewController;
    }

    public boolean hasCustomDesign()
    {
        return hasCustomDesign;
    }

    public boolean isHide()
    {
        return isHide;
    }

    public boolean isOpenInSafari()
    {
        return openInSafari;
    }

    public boolean isShowText()
    {
        return showText;
    }

    public void setButtonBgColor(String s)
    {
        buttonBgColor = s;
    }

    public void setButtonTextColor(String s)
    {
        buttonTextColor = s;
    }

    public void setCustomIcon(String s)
    {
        customIcon = s;
    }

    public void setEvenRowColor(String s)
    {
        evenRowColor = s;
    }

    public void setEvenRowTextColor(String s)
    {
        evenRowTextColor = s;
    }

    public void setFeatureTextColor(String s)
    {
        featureTextColor = s;
    }

    public void setGlobalBgColor(String s)
    {
        globalBgColor = s;
    }

    public void setGlobalHeaderUrl(String s)
    {
        globalHeaderUrl = s;
    }

    public void setHasCustomDesign(boolean flag)
    {
        hasCustomDesign = flag;
    }

    public void setHide(boolean flag)
    {
        isHide = flag;
    }

    public void setId(long l)
    {
        id = l;
    }

    public void setImage(String s)
    {
        image = s;
    }

    public void setItemId(String s)
    {
        itemId = s;
    }

    public void setLabel(String s)
    {
        label = s;
    }

    public void setLastUpdated(String s)
    {
        lastUpdated = s;
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

    public void setNavigationController(String s)
    {
        navigationController = s;
    }

    public void setOddRowColor(String s)
    {
        oddRowColor = s;
    }

    public void setOddRowTextColor(String s)
    {
        oddRowTextColor = s;
    }

    public void setOpenInSafari(boolean flag)
    {
        openInSafari = flag;
    }

    public void setSectionBarColor(String s)
    {
        sectionBarColor = s;
    }

    public void setSectionBarTextColor(String s)
    {
        sectionBarTextColor = s;
    }

    public void setSectionId(String s)
    {
        sectionId = s;
    }

    public void setSeq(int i)
    {
        seq = i;
    }

    public void setShowText(boolean flag)
    {
        showText = flag;
    }

    public void setSubTabs(List list)
    {
        subTabs = list;
    }

    public void setTabIcon(String s)
    {
        tabIcon = s;
    }

    public void setTabId(String s)
    {
        tabId = s;
    }

    public void setTabImageUrl(String s)
    {
        tabImageUrl = s;
    }

    public void setTabLabelFont(String s)
    {
        tabLabelFont = s;
    }

    public void setTabLabelText(String s)
    {
        tabLabelText = s;
    }

    public void setTabLabelTextBgColor(String s)
    {
        tabLabelTextBgColor = s;
    }

    public void setTabLabelTextColor(String s)
    {
        tabLabelTextColor = s;
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

    public void setUrl(String s)
    {
        url = s;
    }

    public void setUseBlurEffect(boolean flag)
    {
        useBlurEffect = flag;
    }

    public void setViewController(String s)
    {
        viewController = s;
    }

    public boolean useBlurEffect()
    {
        return useBlurEffect;
    }
}
