// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import java.util.Date;

// Referenced classes of package com.biznessapps.common.entities:
//            CommonEntity

public class CommonListEntity extends CommonEntity
{

    private static final long serialVersionUID = 0xb42fcfbb20d20154L;
    protected String addressBottomRow;
    protected String addressTopRow;
    private String background;
    private String currency;
    private String currencySign;
    protected Date date;
    private boolean hasArrow;
    private boolean hasColor;
    private boolean hasNewDesign;
    private String headerImage;
    private String hint;
    private int imageId;
    private boolean isSelected;
    private int itemColor;
    private int itemTextColor;
    private boolean openInSafari;
    private String section;
    private boolean showSection;
    protected long timeStamp;
    protected String url;
    private boolean useAgain;

    public CommonListEntity()
    {
        hint = "";
        hasColor = false;
        isSelected = false;
        useAgain = true;
        hasArrow = true;
        currency = "USD";
        currencySign = "$";
    }

    public CommonListEntity(int i, int j, String s)
    {
        hint = "";
        hasColor = false;
        isSelected = false;
        useAgain = true;
        hasArrow = true;
        currency = "USD";
        currencySign = "$";
        title = s;
        itemColor = i;
        itemTextColor = j;
    }

    public CommonListEntity(String s)
    {
        hint = "";
        hasColor = false;
        isSelected = false;
        useAgain = true;
        hasArrow = true;
        currency = "USD";
        currencySign = "$";
        title = s;
    }

    public String getAddressBottomRow()
    {
        return addressBottomRow;
    }

    public String getAddressTopRow()
    {
        return addressTopRow;
    }

    public String getBackground()
    {
        return background;
    }

    public String getCurrency()
    {
        return currency;
    }

    public String getCurrencySign()
    {
        return currencySign;
    }

    public Date getDate()
    {
        if (date == null)
        {
            date = DateUtils.getDateWithOffset(timeStamp);
        }
        return date;
    }

    public String getHeaderImage()
    {
        return headerImage;
    }

    public String getHint()
    {
        return hint;
    }

    public int getImageId()
    {
        return imageId;
    }

    public int getItemColor()
    {
        return itemColor;
    }

    public int getItemTextColor()
    {
        return itemTextColor;
    }

    public String getSection()
    {
        return section;
    }

    public long getTimeStamp()
    {
        return timeStamp;
    }

    public String getUrl()
    {
        return url;
    }

    public boolean hasArrow()
    {
        return hasArrow;
    }

    public boolean hasColor()
    {
        return hasColor;
    }

    public boolean hasNewDesign()
    {
        return hasNewDesign;
    }

    public boolean isOpenInSafari()
    {
        return openInSafari;
    }

    public boolean isSelected()
    {
        return isSelected;
    }

    public boolean isShowSection()
    {
        return showSection;
    }

    public boolean isUseAgain()
    {
        return useAgain;
    }

    public void setAddressBottomRow(String s)
    {
        addressBottomRow = s;
    }

    public void setAddressTopRow(String s)
    {
        addressTopRow = s;
    }

    public void setArrowVisible(boolean flag)
    {
        hasArrow = flag;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setCurrency(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            currency = s;
        }
    }

    public void setCurrencySign(String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            currencySign = s;
        }
    }

    public void setHasColor(boolean flag)
    {
        hasColor = flag;
    }

    public void setHasNewDesign(boolean flag)
    {
        hasNewDesign = flag;
    }

    public void setHeaderImage(String s)
    {
        headerImage = s;
    }

    public void setHint(String s)
    {
        if (s == null)
        {
            hint = "";
            return;
        } else
        {
            hint = s;
            return;
        }
    }

    public void setImageId(int i)
    {
        imageId = i;
    }

    public void setItemColor(int i)
    {
        itemColor = i;
        setHasColor(true);
    }

    public void setItemTextColor(int i)
    {
        itemTextColor = i;
    }

    public void setOpenInSafari(boolean flag)
    {
        openInSafari = flag;
    }

    public void setSection(String s)
    {
        section = s;
    }

    public void setSelected(boolean flag)
    {
        isSelected = flag;
    }

    public void setShowSection(boolean flag)
    {
        showSection = flag;
    }

    public void setTimeStamp(long l)
    {
        timeStamp = l;
    }

    public void setUrl(String s)
    {
        url = s;
    }

    public void setUseAgain(boolean flag)
    {
        useAgain = flag;
    }
}
