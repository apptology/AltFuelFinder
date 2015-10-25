// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import com.biznessapps.common.entities.CommonEntity;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.fan_wall:
//            CommentEntity

public class FanWallEntity extends CommonEntity
{

    private static final long serialVersionUID = 0x38b2ccf432a943c1L;
    private List comments;

    public FanWallEntity()
    {
        comments = new ArrayList();
    }

    public void addComment(CommentEntity commententity)
    {
        comments.add(commententity);
    }

    public List getComments()
    {
        return comments;
    }

    public void setComments(List list)
    {
        comments = list;
    }
}
