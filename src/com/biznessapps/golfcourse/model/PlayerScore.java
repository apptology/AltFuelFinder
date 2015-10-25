// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;

import android.util.SparseArray;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.golfcourse.model:
//            Game, Course, Score, Hole

public class PlayerScore
{

    public long gameId;
    public SparseArray holeScores;
    public boolean isExtended;
    public long playerId;

    public PlayerScore()
    {
        holeScores = new SparseArray();
        isExtended = true;
    }

    public int getHoleScore(int i)
    {
        return getHoleScore(1, i);
    }

    public int getHoleScore(int i, int j)
    {
        Course course;
        int k;
        boolean flag;
        if (i <= j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        course = Game.getGame(gameId).getCourse();
        k = 0;
        while (i <= j) 
        {
            Hole hole = course.getHole(i);
            Score score = (Score)holeScores.get(i);
            if (score != null)
            {
                k += score.score - hole.par;
            }
            i++;
        }
        return k;
    }

    public String getHoleScoreAsString(int i)
    {
        return getHoleScoreAsString(1, i);
    }

    public String getHoleScoreAsString(int i, int j)
    {
        i = getHoleScore(i, j);
        if (i > 0)
        {
            return (new StringBuilder()).append("+").append(String.valueOf(i)).toString();
        }
        if (i == 0)
        {
            return "E";
        } else
        {
            return String.valueOf(i);
        }
    }

    public int getTotalHoleInPutts()
    {
        int j = 0;
        int i = 10;
        while (i <= 18) 
        {
            Score score = (Score)holeScores.get(i);
            if (score != null)
            {
                j += score.putts;
            }
            i++;
        }
        return j;
    }

    public String getTotalHoleInScoreAsString()
    {
        return getHoleScoreAsString(1, 9);
    }

    public int getTotalHoleInScoreCount()
    {
        int j = 0;
        int i = 10;
        while (i <= 18) 
        {
            if ((Score)holeScores.get(i) != null)
            {
                j++;
            }
            i++;
        }
        return j;
    }

    public int getTotalHoleInScores()
    {
        int j = 0;
        int i = 10;
        while (i <= 18) 
        {
            Score score = (Score)holeScores.get(i);
            if (score != null)
            {
                j += score.score;
            }
            i++;
        }
        return j;
    }

    public int getTotalHoleOutPutts()
    {
        int j = 0;
        int i = 0;
        while (i <= 9) 
        {
            Score score = (Score)holeScores.get(i);
            if (score != null)
            {
                j += score.putts;
            }
            i++;
        }
        return j;
    }

    public String getTotalHoleOutScoreAsString()
    {
        return getHoleScoreAsString(10, 18);
    }

    public int getTotalHoleOutScoreCount()
    {
        int j = 0;
        int i = 1;
        while (i <= 9) 
        {
            if ((Score)holeScores.get(i) != null)
            {
                j++;
            }
            i++;
        }
        return j;
    }

    public int getTotalHoleOutScores()
    {
        int j = 0;
        int i = 1;
        while (i <= 9) 
        {
            Score score = (Score)holeScores.get(i);
            if (score != null)
            {
                j += score.score;
            }
            i++;
        }
        return j;
    }

    public String getTotalHoleScoreAsString()
    {
        return getHoleScoreAsString(1, 18);
    }

    public int getTotalHoleScoreCount()
    {
        int j = 0;
        int i = 0;
        while (i < holeScores.size()) 
        {
            if ((Score)holeScores.valueAt(i) != null)
            {
                j++;
            }
            i++;
        }
        return j;
    }

    public int getTotalPutts()
    {
        int j = 0;
        int i = 0;
        while (i < holeScores.size()) 
        {
            Score score = (Score)holeScores.valueAt(i);
            if (score != null)
            {
                j += score.putts;
            }
            i++;
        }
        return j;
    }

    public int getTotalScores()
    {
        int j = 0;
        int i = 0;
        while (i < holeScores.size()) 
        {
            Score score = (Score)holeScores.valueAt(i);
            if (score != null)
            {
                j += score.score;
            }
            i++;
        }
        return j;
    }
}
