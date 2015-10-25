// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.contact;

import com.biznessapps.common.entities.CommonListEntity;

// Referenced classes of package com.biznessapps.contact:
//            ContactsMapActivity

private static class rightLabel extends CommonListEntity
{

    private static final long serialVersionUID = 0x16c873fa7a609e1dL;
    private String leftLabel;
    private String rightLabel;

    public String getLeftLabel()
    {
        return leftLabel;
    }

    public String getRightLabel()
    {
        return rightLabel;
    }

    public A(String s, String s1)
    {
        leftLabel = s;
        rightLabel = s1;
    }
}
