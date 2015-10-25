// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import com.biznessapps.more.Tab;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.api:
//            UiSettingsInterface

public class UiSettings
{

    private int buttonBgColor;
    private int buttonTextColor;
    private int defaultListBgColor;
    private int evenRowColor;
    private int evenRowColorTransparent;
    private int evenRowTextColor;
    private int featureTextColor;
    private int globalBgColor;
    private String globalHeaderUrl;
    private boolean hasColor;
    private float navTintOpacity;
    private int navigationBarColor;
    private int navigationTextColor;
    private int navigationTextShadowColor;
    private int oddRowColor;
    private int oddRowColorTransparent;
    private int oddRowTextColor;
    private int sectionBarColor;
    private int sectionTextColor;
    private int transparentSectionBarColor;
    private boolean useBlurEffect;

    public UiSettings()
    {
    }

    public UiSettings(UiSettingsInterface uisettingsinterface)
    {
        reset();
        initData(uisettingsinterface);
        updateOtherSettings(uisettingsinterface);
    }

    private void initData(UiSettingsInterface uisettingsinterface)
    {
        if (uisettingsinterface == null)
        {
            break MISSING_BLOCK_LABEL_468;
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getDefaultListBgColor()))
        {
            defaultListBgColor = ViewUtils.getColor(uisettingsinterface.getDefaultListBgColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getButtonTextColor()))
        {
            buttonTextColor = ViewUtils.getColor(uisettingsinterface.getButtonTextColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getButtonBgColor()))
        {
            buttonBgColor = ViewUtils.getColor(uisettingsinterface.getButtonBgColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getFeatureTextColor()))
        {
            featureTextColor = ViewUtils.getColor(uisettingsinterface.getFeatureTextColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getOddRowColor()))
        {
            oddRowColorTransparent = ViewUtils.getColor("80".concat(uisettingsinterface.getOddRowColor()));
            oddRowColor = ViewUtils.getColor(uisettingsinterface.getOddRowColor());
            hasColor = true;
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getEvenRowColor()))
        {
            evenRowColorTransparent = ViewUtils.getColor("80".concat(uisettingsinterface.getEvenRowColor()));
            evenRowColor = ViewUtils.getColor(uisettingsinterface.getEvenRowColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getEvenRowTextColor()))
        {
            evenRowTextColor = ViewUtils.getColor(uisettingsinterface.getEvenRowTextColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getOddRowTextColor()))
        {
            oddRowTextColor = ViewUtils.getColor(uisettingsinterface.getOddRowTextColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getNavigBarColor()))
        {
            navigationBarColor = ViewUtils.getColor(uisettingsinterface.getNavigBarColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getNavigBarTextColor()))
        {
            navigationTextColor = ViewUtils.getColor(uisettingsinterface.getNavigBarTextColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getNavigBarTextShadowColor()))
        {
            navigationTextShadowColor = ViewUtils.getColor(uisettingsinterface.getNavigBarTextShadowColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getSectionBarColor()))
        {
            sectionBarColor = ViewUtils.getColor(uisettingsinterface.getSectionBarColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getSectionBarColor()))
        {
            transparentSectionBarColor = ViewUtils.getColor("A0".concat(uisettingsinterface.getSectionBarColor()));
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getSectionBarTextColor()))
        {
            sectionTextColor = ViewUtils.getColor(uisettingsinterface.getSectionBarTextColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getGlobalBgColor()))
        {
            globalBgColor = ViewUtils.getColor(uisettingsinterface.getGlobalBgColor());
        }
        if (StringUtils.isNotEmpty(uisettingsinterface.getGlobalHeaderUrl()))
        {
            globalHeaderUrl = uisettingsinterface.getGlobalHeaderUrl();
        }
        if (uisettingsinterface.getNavTintOpacity() > 0.0F)
        {
            navTintOpacity = uisettingsinterface.getNavTintOpacity();
        }
        return;
        uisettingsinterface;
        uisettingsinterface.printStackTrace();
        return;
        uisettingsinterface;
        uisettingsinterface.printStackTrace();
        return;
    }

    private void reset()
    {
        hasColor = false;
        evenRowColorTransparent = -1;
        oddRowColorTransparent = -1;
        evenRowTextColor = 0xff000000;
        oddRowTextColor = 0xff000000;
        navigationBarColor = 0xff000000;
        navigationTextColor = 0xff000000;
        navigationTextShadowColor = 0xff000000;
        sectionBarColor = 0xffcccccc;
        sectionTextColor = 0xff000000;
    }

    public int getButtonBgColor()
    {
        return buttonBgColor;
    }

    public int getButtonTextColor()
    {
        return buttonTextColor;
    }

    public int getDefaultListBgColor()
    {
        return defaultListBgColor;
    }

    public int getEvenRowColor()
    {
        return evenRowColor;
    }

    public int getEvenRowColorTransparent()
    {
        return evenRowColorTransparent;
    }

    public int getEvenRowTextColor()
    {
        return evenRowTextColor;
    }

    public int getFeatureTextColor()
    {
        return featureTextColor;
    }

    public int getGlobalBgColor()
    {
        return globalBgColor;
    }

    public String getGlobalHeaderUrl()
    {
        return globalHeaderUrl;
    }

    public float getNavTintOpacity()
    {
        return navTintOpacity;
    }

    public int getNavigationBarColor()
    {
        return navigationBarColor;
    }

    public int getNavigationTextColor()
    {
        return navigationTextColor;
    }

    public int getNavigationTextShadowColor()
    {
        return navigationTextShadowColor;
    }

    public int getOddRowColor()
    {
        return oddRowColor;
    }

    public int getOddRowColorTransparent()
    {
        return oddRowColorTransparent;
    }

    public int getOddRowTextColor()
    {
        return oddRowTextColor;
    }

    public int getSectionBarColor()
    {
        return sectionBarColor;
    }

    public int getSectionTextColor()
    {
        return sectionTextColor;
    }

    public int getTransparentSectionBarColor()
    {
        return transparentSectionBarColor;
    }

    public boolean isHasColor()
    {
        return hasColor;
    }

    public void setButtonBgColor(int i)
    {
        buttonBgColor = i;
    }

    public void setButtonTextColor(int i)
    {
        buttonTextColor = i;
    }

    public void setDefaultListBgColor(int i)
    {
        defaultListBgColor = i;
    }

    public void setEvenRowColor(int i)
    {
        evenRowColor = i;
    }

    public void setEvenRowColorTransparent(int i)
    {
        evenRowColorTransparent = i;
    }

    public void setEvenRowTextColor(int i)
    {
        evenRowTextColor = i;
    }

    public void setFeatureTextColor(int i)
    {
        featureTextColor = i;
    }

    public void setGlobalBgColor(int i)
    {
        globalBgColor = i;
    }

    public void setGlobalHeaderUrl(String s)
    {
        globalHeaderUrl = s;
    }

    public void setHasColor(boolean flag)
    {
        hasColor = flag;
    }

    public void setNavTintOpacity(float f)
    {
        navTintOpacity = f;
    }

    public void setNavigationBarColor(int i)
    {
        navigationBarColor = i;
    }

    public void setNavigationTextColor(int i)
    {
        navigationTextColor = i;
    }

    public void setNavigationTextShadowColor(int i)
    {
        navigationTextShadowColor = i;
    }

    public void setOddRowColor(int i)
    {
        oddRowColor = i;
    }

    public void setOddRowColorTransparent(int i)
    {
        oddRowColorTransparent = i;
    }

    public void setOddRowTextColor(int i)
    {
        oddRowTextColor = i;
    }

    public void setSectionBarColor(int i)
    {
        sectionBarColor = i;
    }

    public void setSectionTextColor(int i)
    {
        sectionTextColor = i;
    }

    public void setTransparentSectionBarColor(int i)
    {
        transparentSectionBarColor = i;
    }

    public void setUseBlurEffect(boolean flag)
    {
        useBlurEffect = flag;
    }

    public void updateOtherSettings(UiSettingsInterface uisettingsinterface)
    {
        useBlurEffect = uisettingsinterface.useBlurEffect();
    }

    public void updateUiSettings(Tab tab)
    {
        initData(tab);
    }

    public boolean useBlurEffect()
    {
        return useBlurEffect;
    }
}
