// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package twitter4j.api;

import twitter4j.GeoLocation;
import twitter4j.ResponseList;
import twitter4j.Trends;
import twitter4j.TwitterException;

public interface TrendsResources
{

    public abstract ResponseList getAvailableTrends()
        throws TwitterException;

    public abstract ResponseList getAvailableTrends(GeoLocation geolocation)
        throws TwitterException;

    public abstract ResponseList getClosestTrends(GeoLocation geolocation)
        throws TwitterException;

    public abstract Trends getLocationTrends(int i)
        throws TwitterException;

    public abstract Trends getPlaceTrends(int i)
        throws TwitterException;
}
