// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import java.util.Comparator;
import java.util.Date;

// Referenced classes of package com.biznessapps.news:
//            NewsFragment, SearchEntity

class this._cls0
    implements Comparator
{

    final NewsFragment this$0;

    public int compare(SearchEntity searchentity, SearchEntity searchentity1)
    {
        if (searchentity.getDateTime() != null && searchentity1.getDateTime() != null)
        {
            if (searchentity.getDateTime().getTime() < searchentity1.getDateTime().getTime())
            {
                return 1;
            }
            if (searchentity.getDateTime().getTime() != searchentity1.getDateTime().getTime())
            {
                return -1;
            }
        }
        return 0;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((SearchEntity)obj, (SearchEntity)obj1);
    }

    ()
    {
        this$0 = NewsFragment.this;
        super();
    }
}
