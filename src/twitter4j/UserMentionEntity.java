// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;

// Referenced classes of package twitter4j:
//            TweetEntity

public interface UserMentionEntity
    extends TweetEntity, Serializable
{

    public abstract int getEnd();

    public abstract long getId();

    public abstract String getName();

    public abstract String getScreenName();

    public abstract int getStart();

    public abstract String getText();
}
