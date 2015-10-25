// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;

import android.support.v4.util.LongSparseArray;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.storage.StorageException;

// Referenced classes of package com.biznessapps.golfcourse.model:
//            Game

public class Player
{

    private static LongSparseArray playerMap = new LongSparseArray();
    public String email;
    public int handicap;
    private long id;
    public boolean isMale;
    public boolean isRemoved;
    public String name;
    public String teeColor;

    public Player()
    {
        isMale = true;
        handicap = 0;
    }

    public static void clearCache()
    {
        playerMap.clear();
    }

    public static boolean deletePlayer(long l, boolean flag)
    {
        Player player;
        boolean flag1;
        flag1 = false;
        Game.deletePlayerFromGames(l);
        player = getPlayer(l);
        boolean flag2 = GolfDatabase.getInstance().deletePlayer(player, flag);
        flag1 = flag2;
_L2:
        if (flag)
        {
            playerMap.remove(l);
        }
        return flag1;
        StorageException storageexception;
        storageexception;
        storageexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static Player getPlayer(long l)
    {
        Player player1 = (Player)playerMap.get(l);
        Player player = player1;
        if (player1 == null)
        {
            Player player2 = GolfDatabase.getInstance().getPlayer(l);
            player = player2;
            if (player2 != null)
            {
                playerMap.put(player2.id, player2);
                player = player2;
            }
        }
        return player;
    }

    public long getId()
    {
        return id;
    }

    public boolean isEqual(Player player)
    {
        while (player == null || getId() != player.getId()) 
        {
            return false;
        }
        return true;
    }

    public void setId(long l)
    {
        id = l;
    }

}
