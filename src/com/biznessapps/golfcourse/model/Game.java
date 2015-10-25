// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;

import android.support.v4.util.LongSparseArray;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.storage.StorageException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

// Referenced classes of package com.biznessapps.golfcourse.model:
//            Player, PlayerScore, Course

public class Game
{

    private static LongSparseArray mGameMap = new LongSparseArray();
    public long courseId;
    public long endDate;
    public long id;
    public boolean isFinished;
    private Course mCourse;
    public String notes;
    public List playerIdList;
    public int recentHoleNumber;
    public HashMap scores;
    public long startDate;

    public Game()
    {
        id = -1L;
        courseId = -1L;
        playerIdList = new ArrayList();
        recentHoleNumber = 0;
        isFinished = false;
        scores = new HashMap();
        startDate = System.currentTimeMillis();
    }

    public static void clearCache()
    {
        mGameMap.clear();
    }

    public static boolean deleteGame(long l)
    {
        Game game;
        boolean flag;
        flag = false;
        game = getGame(l);
        boolean flag1 = GolfDatabase.getInstance().deleteGame(game);
        flag = flag1;
_L2:
        mGameMap.remove(l);
        return flag;
        StorageException storageexception;
        storageexception;
        storageexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static void deletePlayerFromGames(long l)
    {
        for (int i = 0; i < mGameMap.size(); i++)
        {
            ((Game)mGameMap.valueAt(0)).deletePlayer(l);
        }

    }

    public static Game getGame(long l)
    {
        Game game1 = (Game)mGameMap.get(l);
        Game game = game1;
        if (game1 == null)
        {
            game = GolfDatabase.getInstance().getGame(l);
            mGameMap.put(game.id, game);
        }
        return game;
    }

    public void addPlayer(long l)
    {
        playerIdList.add(Long.valueOf(l));
        Player player = Player.getPlayer(l);
        if (scores.get(player) == null)
        {
            PlayerScore playerscore = new PlayerScore();
            playerscore.gameId = id;
            playerscore.playerId = player.getId();
            scores.put(player, playerscore);
        }
    }

    public void deletePlayer(long l)
    {
        int i = 0;
_L2:
        Player player;
        if (i >= playerIdList.size())
        {
            break MISSING_BLOCK_LABEL_77;
        }
        if (((Long)playerIdList.get(i)).longValue() != l)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        player = Player.getPlayer(l);
        playerIdList.remove(i);
        GolfDatabase.getInstance().deletePlayerScoresForGame(l, id);
        scores.remove(player);
        return;
        StorageException storageexception;
        storageexception;
        storageexception.printStackTrace();
        return;
        i++;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Course getCourse()
    {
        if (mCourse != null && mCourse.courseId == courseId)
        {
            return mCourse;
        } else
        {
            mCourse = GolfDatabase.getInstance().getCourse(courseId);
            return mCourse;
        }
    }

    public int getPlayerCount()
    {
        if (playerIdList == null)
        {
            return 0;
        } else
        {
            return playerIdList.size();
        }
    }

    public void setCourse(Course course)
    {
        mCourse = course;
        if (mCourse != null)
        {
            courseId = mCourse.courseId;
            return;
        } else
        {
            courseId = -1L;
            return;
        }
    }

}
