// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import com.biznessapps.common.entities.CommonListEntity;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeDetailFragment

public static class labelValue extends CommonListEntity
{

    private static final long serialVersionUID = 0x9b6f489acb720fd8L;
    private String labelValue;

    public String getLabelValue()
    {
        return labelValue;
    }

    public void setLabelValue(String s)
    {
        labelValue = s;
    }

    public (String s, String s1)
    {
        title = s;
        labelValue = s1;
    }
}
