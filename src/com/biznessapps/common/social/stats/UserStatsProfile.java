// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.stats;

import android.content.Context;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;

public class UserStatsProfile
{

    private static final String PREFS_KEY_MESSAGES_TYPE = "user_stats_message";
    private static final String PREFS_KEY_POSTS_TYPE = "user_stats_posts";
    private static final String PREFS_KEY_REWARDS_TYPE = "user_stats_rewards";
    private static final String PREFS_KEY_SHARES_TYPE = "user_stats_shares";
    private static UserStatsProfile userStatsProfile;
    private Context context;
    private int numberOfMessages;
    private int numberOfPosts;
    private int numberOfRewards;
    private int numberOfShares;
    private boolean wasDataChanged;

    private UserStatsProfile(Context context1)
    {
        wasDataChanged = true;
        context = context1;
    }

    public static UserStatsProfile getInstance(Context context1)
    {
        if (userStatsProfile == null)
        {
            userStatsProfile = new UserStatsProfile(context1);
        }
        return userStatsProfile;
    }

    public int getNumberOfMessages()
    {
        if (numberOfMessages == 0)
        {
            numberOfMessages = AppCore.getInstance().getCachingManager().getFromSharedPreferences(context, "user_stats_message", 0);
        }
        return numberOfMessages;
    }

    public int getNumberOfPosts()
    {
        if (numberOfPosts == 0)
        {
            numberOfPosts = AppCore.getInstance().getCachingManager().getFromSharedPreferences(context, "user_stats_posts", 0);
        }
        return numberOfPosts;
    }

    public int getNumberOfRewards()
    {
        if (numberOfRewards == 0)
        {
            numberOfRewards = AppCore.getInstance().getCachingManager().getFromSharedPreferences(context, "user_stats_rewards", 0);
        }
        return numberOfRewards;
    }

    public int getNumberOfShares()
    {
        if (numberOfShares == 0)
        {
            numberOfShares = AppCore.getInstance().getCachingManager().getFromSharedPreferences(context, "user_stats_shares", 0);
        }
        return numberOfShares;
    }

    public void setWasDataChanged(boolean flag)
    {
        wasDataChanged = flag;
    }

    public void updateNumberOfMessages()
    {
        numberOfMessages = getNumberOfMessages() + 1;
        wasDataChanged = true;
        AppCore.getInstance().getCachingManager().saveInSharedPreferences(context, numberOfMessages, "user_stats_message");
    }

    public void updateNumberOfPosts()
    {
        numberOfPosts = getNumberOfPosts() + 1;
        wasDataChanged = true;
        AppCore.getInstance().getCachingManager().saveInSharedPreferences(context, numberOfPosts, "user_stats_posts");
    }

    public void updateNumberOfRewards()
    {
        numberOfRewards = getNumberOfRewards() + 1;
        wasDataChanged = true;
        AppCore.getInstance().getCachingManager().saveInSharedPreferences(context, numberOfRewards, "user_stats_rewards");
    }

    public void updateNumberOfShares()
    {
        numberOfShares = getNumberOfShares() + 1;
        wasDataChanged = true;
        AppCore.getInstance().getCachingManager().saveInSharedPreferences(context, numberOfShares, "user_stats_shares");
    }

    public boolean wasDataChanged()
    {
        return wasDataChanged;
    }
}
