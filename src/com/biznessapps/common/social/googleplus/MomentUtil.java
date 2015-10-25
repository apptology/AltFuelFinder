// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.googleplus;

import com.google.android.gms.plus.model.moments.ItemScope;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Set;

public class MomentUtil
{

    public static final String ACTIONS[];
    public static final ArrayList MOMENT_LIST;
    public static final HashMap MOMENT_TYPES;

    public MomentUtil()
    {
    }

    private static ItemScope getCommentActivityResult()
    {
        return (new com.google.android.gms.plus.model.moments.ItemScope.Builder()).setType("http://schema.org/Comment").setUrl("https://developers.google.com/+/plugins/snippet/examples/blog-entry#comment-1").setName("This is amazing!").setText("I can't wait to use it on my site!").build();
    }

    private static ItemScope getReserveActivityResult()
    {
        return (new com.google.android.gms.plus.model.moments.ItemScope.Builder()).setType("http://schemas.google.com/Reservation").setStartDate("2012-06-28T19:00:00-08:00").setAttendeeCount(3).build();
    }

    public static ItemScope getResultFor(String s)
    {
        if (s.equals("CommentActivity"))
        {
            return getCommentActivityResult();
        }
        if (s.equals("ReserveActivity"))
        {
            return getReserveActivityResult();
        }
        if (s.equals("ReviewActivity"))
        {
            return getReviewActivityResult();
        } else
        {
            return null;
        }
    }

    private static ItemScope getReviewActivityResult()
    {
        ItemScope itemscope = (new com.google.android.gms.plus.model.moments.ItemScope.Builder()).setType("http://schema.org/Rating").setRatingValue("100").setBestRating("100").setWorstRating("0").build();
        return (new com.google.android.gms.plus.model.moments.ItemScope.Builder()).setType("http://schema.org/Review").setName("A Humble Review of Widget").setUrl("https://developers.google.com/+/plugins/snippet/examples/review").setText("It is amazingly effective").setReviewRating(itemscope).build();
    }

    static 
    {
        MOMENT_TYPES = new HashMap(9);
        MOMENT_TYPES.put("AddActivity", "https://developers.google.com/+/plugins/snippet/examples/thing");
        MOMENT_TYPES.put("BuyActivity", "https://developers.google.com/+/plugins/snippet/examples/a-book");
        MOMENT_TYPES.put("CheckInActivity", "https://developers.google.com/+/plugins/snippet/examples/place");
        MOMENT_TYPES.put("CommentActivity", "https://developers.google.com/+/plugins/snippet/examples/blog-entry");
        MOMENT_TYPES.put("CreateActivity", "https://developers.google.com/+/plugins/snippet/examples/photo");
        MOMENT_TYPES.put("ListenActivity", "https://developers.google.com/+/plugins/snippet/examples/song");
        MOMENT_TYPES.put("ReserveActivity", "https://developers.google.com/+/plugins/snippet/examples/restaurant");
        MOMENT_TYPES.put("ReviewActivity", "https://developers.google.com/+/plugins/snippet/examples/widget");
        MOMENT_LIST = new ArrayList(MOMENT_TYPES.keySet());
        Collections.sort(MOMENT_LIST);
        ACTIONS = (String[])MOMENT_TYPES.keySet().toArray(new String[0]);
        int j = ACTIONS.length;
        for (int i = 0; i < j; i++)
        {
            ACTIONS[i] = (new StringBuilder()).append("http://schemas.google.com/").append(ACTIONS[i]).toString();
        }

    }
}
