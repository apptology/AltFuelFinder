// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mailing_list;

import com.biznessapps.common.entities.CommonListEntity;

// Referenced classes of package com.biznessapps.mailing_list:
//            MailingListEntity

public static class selected extends CommonListEntity
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

    public ()
    {
        selected = false;
    }
}
