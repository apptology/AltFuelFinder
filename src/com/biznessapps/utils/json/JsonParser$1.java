// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.json;

import com.biznessapps.coupons.ActivityEntity;
import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.biznessapps.utils.json:
//            JsonParser

static final class 
    implements Comparator
{

    public int compare(ActivityEntity activityentity, ActivityEntity activityentity1)
    {
        if (activityentity.getDate() != null && activityentity1.getDate() != null)
        {
            if (activityentity.getDate().getTime() < activityentity1.getDate().getTime())
            {
                return 1;
            }
            if (activityentity.getDate().getTime() != activityentity1.getDate().getTime())
            {
                return -1;
            }
        }
        return 0;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((ActivityEntity)obj, (ActivityEntity)obj1);
    }

    ()
    {
    }
}
