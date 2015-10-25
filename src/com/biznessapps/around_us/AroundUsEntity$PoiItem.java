// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.location.entities.LocationEntity;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsEntity

public static class  extends MapEntity
{

    private static final long serialVersionUID = 0xec0875108024a123L;
    private String categoryName;
    private LocationEntity location;
    private String name;

    public String getCategoryName()
    {
        return categoryName;
    }

    public LocationEntity getLocation()
    {
        return location;
    }

    public String getName()
    {
        return name;
    }

    public void setCategoryName(String s)
    {
        categoryName = s;
    }

    public void setLocation(LocationEntity locationentity)
    {
        location = locationentity;
    }

    public void setName(String s)
    {
        name = s;
    }

    public ()
    {
    }
}
