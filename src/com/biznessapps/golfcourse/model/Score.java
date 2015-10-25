// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;


public class Score
{

    public static final int MAX_SCORE = 18;
    public static final int MIN_PUTTS_VALUE = 0;
    public static final int MIN_SCORE_VALUE = 0;
    public long gameID;
    public int holeNumber;
    public long id;
    public long playerID;
    public int putts;
    public int score;

    public Score()
    {
        id = -1L;
    }
}
