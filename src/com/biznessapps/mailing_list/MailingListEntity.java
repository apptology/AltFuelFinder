// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mailing_list;

import com.biznessapps.common.entities.CommonEntity;
import com.biznessapps.common.entities.CommonListEntity;
import java.util.List;

public class MailingListEntity extends CommonEntity
{
    public static class Category extends CommonListEntity
    {

        private static final long serialVersionUID = 0xc3e1cb32d0bb477eL;
        private String name;
        private boolean selected;

        public String getName()
        {
            return name;
        }

        public boolean isSelected()
        {
            return selected;
        }

        public void setName(String s)
        {
            name = s;
        }

        public void setSelected(boolean flag)
        {
            selected = flag;
        }

        public Category()
        {
            selected = false;
        }
    }


    private static final long serialVersionUID = 0x16f948e1a82047ebL;
    private List categories;
    private String logoImage;

    public MailingListEntity()
    {
    }

    public List getCategories()
    {
        return categories;
    }

    public String getLogoImage()
    {
        return logoImage;
    }

    public void setCategories(List list)
    {
        categories = list;
    }

    public void setLogoImage(String s)
    {
        logoImage = s;
    }
}
