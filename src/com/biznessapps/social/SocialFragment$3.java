// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.social;

import com.biznessapps.fan_wall.CommentEntity;
import java.util.Comparator;

// Referenced classes of package com.biznessapps.social:
//            SocialFragment

class this._cls0
    implements Comparator
{

    final SocialFragment this$0;

    public int compare(CommentEntity commententity, CommentEntity commententity1)
    {
        return (int)(commententity1.getTimeStamp() - commententity.getTimeStamp());
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((CommentEntity)obj, (CommentEntity)obj1);
    }

    ()
    {
        this$0 = SocialFragment.this;
        super();
    }
}
