// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;

// Referenced classes of package twitter4j:
//            TweetEntity

public interface URLEntity
    extends TweetEntity, Serializable
{

    public abstract String getDisplayURL();

    public abstract int getEnd();

    public abstract String getExpandedURL();

    public abstract int getStart();

    public abstract String getText();

    public abstract String getURL();
}
