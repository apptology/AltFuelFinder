// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import com.biznessapps.common.entities.CommonListEntity;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

public static class <init> extends CommonListEntity
{

    private static final long serialVersionUID = 0x9b6f489acb720fd8L;
    private int iconId;
    private String labelValue;

    public int getIconId()
    {
        return iconId;
    }

    public String getLabelValue()
    {
        return labelValue;
    }

    public void setIconId(int i)
    {
        iconId = i;
    }

    public void setLabelValue(String s)
    {
        labelValue = s;
    }

    public (int i, String s, String s1)
    {
        iconId = i;
        title = s;
        labelValue = s1;
    }

    public labelValue(String s, String s1)
    {
        this(0, s, s1);
    }
}
