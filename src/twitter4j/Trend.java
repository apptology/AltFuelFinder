// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j;

import java.io.Serializable;

public interface Trend
    extends Serializable
{

    public abstract String getName();

    public abstract String getQuery();

    public abstract String getURL();

    public abstract String getUrl();
}
