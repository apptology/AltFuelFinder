// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import com.biznessapps.api.AppCore;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.images.NewImageManager;
import com.biznessapps.utils.StringUtils;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GalleryData
    implements Serializable
{
    public static class Item
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

        public Item()
        {
            bgBlueEffectRadius = 0;
            bgOverlayColor = 0;
        }
    }


    private static final long serialVersionUID = 0x64d2601d39360f7cL;
    private List albums;
    private String apiKey;
    private String background;
    private boolean displayPhotosets;
    private List items;
    private Object tag;
    private boolean useCoverflow;
    private String userId;

    public GalleryData()
    {
        items = new ArrayList();
    }

    public List getAlbums()
    {
        return albums;
    }

    public String getApiKey()
    {
        return apiKey;
    }

    public String getBackground()
    {
        return background;
    }

    public List getItems()
    {
        return items;
    }

    public List getItemsUrls()
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = items.iterator();
        while (iterator.hasNext()) 
        {
            Object obj = (Item)iterator.next();
            if (StringUtils.isEmpty(((Item) (obj)).getFullUrl()))
            {
                obj = String.format(UrlWrapper.getInstance().getGalleryThumbplayUrlFormat(), new Object[] {
                    ((Item) (obj)).getId(), ((Item) (obj)).getExt()
                });
            } else
            {
                obj = ((Item) (obj)).getFullUrl();
            }
            arraylist.add(obj);
        }
        return arraylist;
    }

    public String getUserId()
    {
        return userId;
    }

    public boolean isDisplayPhotosets()
    {
        return displayPhotosets;
    }

    public boolean isUseCoverflow()
    {
        return useCoverflow;
    }

    public void setAlbums(List list)
    {
        albums = list;
    }

    public void setApiKey(String s)
    {
        apiKey = s;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setDisplayPhotosets(boolean flag)
    {
        displayPhotosets = flag;
    }

    public void setImageItems(List list)
    {
        ArrayList arraylist = new ArrayList();
        Item item;
        for (list = list.iterator(); list.hasNext(); arraylist.add(item))
        {
            String s = (String)list.next();
            item = new Item();
            item.setFullUrl(s);
        }

        items = arraylist;
    }

    public void setItems(List list)
    {
        items = list;
    }

    public void setUseCoverflow(boolean flag)
    {
        useCoverflow = flag;
    }

    public void setUserId(String s)
    {
        userId = s;
    }
}
