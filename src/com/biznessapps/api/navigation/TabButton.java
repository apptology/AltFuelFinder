// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api.navigation;

import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.more.Tab;

public class TabButton extends CommonListEntity
{

    private static final long serialVersionUID = 0x9b9650beb378a1f7L;
    private Tab tab;

    public TabButton(Tab tab1)
    {
        tab = tab1;
    }

    public Tab getTab()
    {
        return tab;
    }
}
