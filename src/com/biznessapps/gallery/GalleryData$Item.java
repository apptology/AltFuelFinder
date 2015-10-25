// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import com.biznessapps.api.AppCore;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.StringUtils;
import java.io.Serializable;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryData

public static class bgOverlayColor
    implements Serializable
{

    private static final long serialVersionUID = 0xef44aa6fc7332547L;
    private int bgBlueEffectRadius;
    private int bgOverlayColor;
    private String bgUrl;
    private String ext;
    private String fullUrl;
    private String height;
    private String id;
    private String info;
    private boolean isFile;
    private Object tag;
    private String width;

    public int getBGBlueEffectRadius()
    {
        return bgBlueEffectRadius;
    }

    public int getBGOverlayColor()
    {
        return bgOverlayColor;
    }

    public String getBGUrl()
    {
        return bgUrl;
    }

    public String getExt()
    {
        return ext;
    }

    public String getFullUrl()
    {
        return fullUrl;
    }

    public String getHeight()
    {
        return height;
    }

    public String getId()
    {
        return id;
    }

    public String getInfo()
    {
        return info;
    }

    public String getPreviewUrl()
    {
        if (StringUtils.isEmpty(getFullUrl()))
        {
            return NewImageManager.addWidthParam(String.format(UrlWrapper.getInstance().getGalleryPrevewUrlFormat(), new Object[] {
                getId(), getExt()
            }), AppCore.getInstance().getDeviceWidth());
        } else
        {
            return fullUrl;
        }
    }

    public Object getTag()
    {
        return tag;
    }

    public String getWidth()
    {
        return width;
    }

    public boolean isFile()
    {
        return isFile;
    }

    public void setBGBlueEffectRadius(int i)
    {
        bgBlueEffectRadius = i;
    }

    public void setBGOverlayColor(int i)
    {
        bgOverlayColor = i;
    }

    public void setBGUrl(String s)
    {
        bgUrl = s;
    }

    public void setExt(String s)
    {
        ext = s;
    }

    public void setFullUrl(String s)
    {
        fullUrl = s;
    }

    public void setHeight(String s)
    {
        height = s;
    }

    public void setId(String s)
    {
        id = s;
    }

    public void setInfo(String s)
    {
        info = s;
    }

    public void setIsFile(boolean flag)
    {
        isFile = flag;
    }

    public void setTag(Object obj)
    {
        tag = obj;
    }

    public void setWidth(String s)
    {
        width = s;
    }

    public ()
    {
        bgBlueEffectRadius = 0;
        bgOverlayColor = 0;
    }
}
