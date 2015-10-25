// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import com.biznessapps.common.entities.MapEntity;

// Referenced classes of package com.biznessapps.car_finder:
//            CarFinderActivity

public static class  extends MapEntity
{

    private static final long serialVersionUID = 0x828c4a444d6d8214L;
    private boolean isCarItem;

    public String getGeneralInfo()
    {
        return title;
    }

    public boolean isCarItem()
    {
        return isCarItem;
    }

    public void setCarItem(boolean flag)
    {
        isCarItem = flag;
    }

    public ()
    {
    }
}
