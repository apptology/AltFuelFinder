// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.database;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import android.util.SparseArray;
import com.biznessapps.common.database.CommonDatabase;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.Game;
import com.biznessapps.golfcourse.model.Player;
import com.biznessapps.golfcourse.model.PlayerScore;
import com.biznessapps.golfcourse.model.Score;
import com.biznessapps.storage.StorageException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

public class GolfDatabase extends CommonDatabase
{

    public static final String COLUMN_GOLF_COURSE_DESCRIPTION = "courseDescription";
    public static final String COLUMN_GOLF_COURSE_HOLES = "holesData";
    public static final String COLUMN_GOLF_COURSE_ID = "courseId";
    public static final String COLUMN_GOLF_COURSE_IS_REMOVED = "courseIsRemoved";
    public static final String COLUMN_GOLF_COURSE_NAME = "courseName";
    public static final String COLUMN_GOLF_COURSE_THUMBNAIL_URL = "imageURL";
    public static final String COLUMN_GOLF_COURSE_UNIT = "courseUnit";
    public static final String COLUMN_GOLF_COURSE_USE_OVERLAY = "useOverlay";
    public static final String COLUMN_GOLF_GAME_DATE = "createdDate";
    public static final String COLUMN_GOLF_GAME_ID = "gameId";
    public static final String COLUMN_GOLF_GAME_IS_FINISHED = "isFinished";
    public static final String COLUMN_GOLF_GAME_NOTES = "notes";
    public static final String COLUMN_GOLF_GAME_RECENT_HOLE_NO = "recentHoleNo";
    public static final String COLUMN_GOLF_HISTORY_OF_PLAYER_ID = "historyPlayerId";
    public static final String COLUMN_GOLF_HOLE_NUMBER = "holeNumber";
    public static final String COLUMN_GOLF_PLAYER_EMAIL = "email";
    public static final String COLUMN_GOLF_PLAYER_HANDICAP = "handicap";
    public static final String COLUMN_GOLF_PLAYER_ID = "playerId";
    public static final String COLUMN_GOLF_PLAYER_IS_MALE = "isMale";
    public static final String COLUMN_GOLF_PLAYER_IS_REMOVED = "playerIsRemoved";
    public static final String COLUMN_GOLF_PLAYER_NAME = "playerName";
    public static final String COLUMN_GOLF_PLAYER_TEE_COLOR = "teeColor";
    public static final String COLUMN_GOLF_PUTTS = "putts";
    public static final String COLUMN_GOLF_SCORE = "score";
    public static final String COLUMN_GOLF_SCORE_ID = "scoreId";
    public static final String GOLF_COURSE_TABLE = "golf_course_table";
    public static final String GOLF_GAME_TABLE = "golf_game_table";
    public static final String GOLF_HISTORY_OF_PLAYER_TABLE = "golf_history_of_player_table";
    public static final String GOLF_PLAYER_TABLE = "golf_player_table";
    public static final String GOLF_SCORE_TABLE = "golf_scores_table";
    public static final String REQUEST_CREATE_GOLF_COURSE_TABLE = "CREATE TABLE \"golf_course_table\" (\"courseId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseName\" TEXT,\"courseDescription\" TEXT,\"imageURL\" TEXT,\"useOverlay\" TEXT,\"holesData\" TEXT,\"courseIsRemoved\" INTEGER, \"courseUnit\" INTEGER)";
    public static final String REQUEST_CREATE_GOLF_GAME_TABLE = "CREATE TABLE \"golf_game_table\" (\"gameId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseId\" INTEGER,\"notes\" TEXT,\"createdDate\" INTEGER,\"recentHoleNo\" INTEGER,\"isFinished\" INTEGER)";
    public static final String REQUEST_CREATE_GOLF_HISTORY_OF_PLAYER_HISTORY_TABLE = "CREATE TABLE \"golf_history_of_player_table\" (\"historyPlayerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerId\" INTEGER,\"gameId\" INTEGER)";
    public static final String REQUEST_CREATE_GOLF_PLAYER_HISTORY_TABLE = "CREATE TABLE \"golf_player_table\" (\"historyPlayerId\" INTEGER,\"playerId\" INTEGER,\"gameId\" INTEGER)";
    public static final String REQUEST_CREATE_GOLF_PLAYER_TABLE = "CREATE TABLE \"golf_player_table\" (\"playerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerName\" TEXT,\"isMale\" INTEGER,\"teeColor\" TEXT,\"handicap\" INTEGER,\"email\" TEXT,\"playerIsRemoved\" INTEGER)";
    public static final String REQUEST_CREATE_GOLF_SCORE_TABLE = "CREATE TABLE \"golf_scores_table\" (\"scoreId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"gameId\" INTEGER,\"playerId\" INTEGER,\"holeNumber\" INTEGER,\"score\" INTEGER,\"putts\" INTEGER)";
    public static final String REQUEST_DROP_GOLF_COURSE_TABLE = "DROP TABLE IF EXISTS golf_course_table";
    public static final String REQUEST_DROP_GOLF_GAME_TABLE = "DROP TABLE IF EXISTS golf_game_table";
    public static final String REQUEST_DROP_GOLF_PLAYER_HISTORY_TABLE = "DROP TABLE IF EXISTS golf_history_of_player_table";
    public static final String REQUEST_DROP_GOLF_PLAYER_TABLE = "DROP TABLE IF EXISTS golf_player_table";
    public static final String REQUEST_DROP_GOLF_SCORE_TABLE = "DROP TABLE IF EXISTS golf_scores_table";
    private static GolfDatabase sDatabase;

    protected GolfDatabase(com.biznessapps.storage.StorageAccessor.DbHelper dbhelper, Object obj)
    {
        super(dbhelper, obj);
    }

    private void fillCourseData(Course course, Cursor cursor)
    {
        course.courseId = getLong(cursor, "courseId");
        course.name = getString(cursor, "courseName");
        course.description = getString(cursor, "courseDescription");
        course.thumbUrl = getString(cursor, "imageURL");
        course.useOverlay = getBoolean(cursor, "useOverlay");
        course.isRemoved = getBoolean(cursor, "courseIsRemoved");
        course.setUnitType(getInt(cursor, "courseUnit", 0));
        course.setHoleList(cursor.getString(cursor.getColumnIndex("holesData")));
    }

    private void fillGameData(Game game, Cursor cursor)
    {
        boolean flag = true;
        game.id = cursor.getLong(cursor.getColumnIndex("gameId"));
        game.courseId = cursor.getLong(cursor.getColumnIndex("courseId"));
        game.notes = cursor.getString(cursor.getColumnIndex("notes"));
        game.startDate = cursor.getLong(cursor.getColumnIndex("createdDate"));
        game.endDate = cursor.getLong(cursor.getColumnIndex("createdDate"));
        game.recentHoleNumber = cursor.getInt(cursor.getColumnIndex("recentHoleNo"));
        if (cursor.getInt(cursor.getColumnIndex("isFinished")) != 1)
        {
            flag = false;
        }
        game.isFinished = flag;
        game.playerIdList = getPlayerIdsForGame(game.id);
    }

    private void fillPlayerData(Player player, Cursor cursor)
    {
        boolean flag1 = true;
        player.setId(cursor.getLong(cursor.getColumnIndex("playerId")));
        player.name = cursor.getString(cursor.getColumnIndex("playerName"));
        boolean flag;
        if (cursor.getInt(cursor.getColumnIndex("isMale")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        player.isMale = flag;
        player.teeColor = cursor.getString(cursor.getColumnIndex("teeColor"));
        player.handicap = cursor.getInt(cursor.getColumnIndex("handicap"));
        player.email = cursor.getString(cursor.getColumnIndex("email"));
        if (cursor.getInt(cursor.getColumnIndex("playerIsRemoved")) == 1)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        player.isRemoved = flag;
    }

    private void fillScoreData(Score score, Cursor cursor)
    {
        score.id = cursor.getLong(cursor.getColumnIndex("scoreId"));
        score.gameID = cursor.getLong(cursor.getColumnIndex("gameId"));
        score.playerID = cursor.getLong(cursor.getColumnIndex("playerId"));
        score.holeNumber = cursor.getInt(cursor.getColumnIndex("holeNumber"));
        score.score = cursor.getInt(cursor.getColumnIndex("score"));
        score.putts = cursor.getInt(cursor.getColumnIndex("putts"));
    }

    private ContentValues getCourseContentValues(Course course)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("courseName", course.name);
        contentvalues.put("courseDescription", course.description);
        contentvalues.put("imageURL", course.thumbUrl);
        contentvalues.put("useOverlay", Boolean.valueOf(course.useOverlay));
        contentvalues.put("courseUnit", Integer.valueOf(course.getUnitType()));
        contentvalues.put("holesData", course.getJsonHoleList());
        return contentvalues;
    }

    private ContentValues getGameContentValues(Game game)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("courseId", Long.valueOf(game.courseId));
        contentvalues.put("notes", game.notes);
        contentvalues.put("createdDate", Long.valueOf(game.startDate));
        contentvalues.put("recentHoleNo", Integer.valueOf(game.recentHoleNumber));
        int i;
        if (game.isFinished)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put("isFinished", Integer.valueOf(i));
        return contentvalues;
    }

    public static GolfDatabase getInstance()
    {
        if (sDatabase == null)
        {
            return null;
        } else
        {
            return sDatabase;
        }
    }

    public static GolfDatabase getInstance(com.biznessapps.storage.StorageAccessor.DbHelper dbhelper, Object obj)
    {
        if (sDatabase == null)
        {
            if (dbhelper == null || obj == null)
            {
                return null;
            }
            sDatabase = new GolfDatabase(dbhelper, obj);
        }
        return sDatabase;
    }

    private ContentValues getPlayerContentValues(Player player)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("playerName", player.name);
        contentvalues.put("isMale", Boolean.valueOf(player.isMale));
        contentvalues.put("teeColor", player.teeColor);
        contentvalues.put("handicap", Integer.valueOf(player.handicap));
        contentvalues.put("email", player.email);
        return contentvalues;
    }

    private ContentValues getPlayerHistoryContentValues(long l, long l1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("playerId", Long.valueOf(l));
        contentvalues.put("gameId", Long.valueOf(l1));
        return contentvalues;
    }

    private ContentValues getScoreContentValues(Score score)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("gameId", Long.valueOf(score.gameID));
        contentvalues.put("playerId", Long.valueOf(score.playerID));
        contentvalues.put("holeNumber", Integer.valueOf(score.holeNumber));
        contentvalues.put("score", Integer.valueOf(score.score));
        contentvalues.put("putts", Integer.valueOf(score.putts));
        return contentvalues;
    }

    public Course addCourse(Course course)
        throws StorageException
    {
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase1;
        SQLiteDatabase sqlitedatabase2;
        Object obj;
        obj = null;
        sqlitedatabase2 = null;
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = obj;
        ContentValues contentvalues = getCourseContentValues(course);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = obj;
        sqlitedatabase2 = mHelper.getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        course.courseId = sqlitedatabase2.insert("golf_course_table", null, contentvalues);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        contentvalues.clear();
        if (sqlitedatabase2 == null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        sqlitedatabase2.close();
        obj1;
        JVM INSTR monitorexit ;
        return course;
        course;
        sqlitedatabase1 = sqlitedatabase;
        throw new StorageException("error with adding course data to the storage");
        course;
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        sqlitedatabase1.close();
        throw course;
        course;
        obj1;
        JVM INSTR monitorexit ;
        throw course;
    }

    public void addCourseList(List list)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        int i = list.size();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        sqlitedatabase.endTransaction();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return;
        try
        {
            sqlitedatabase.beginTransaction();
            for (list = list.iterator(); list.hasNext(); addCourse((Course)list.next())) { }
            break MISSING_BLOCK_LABEL_108;
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        finally { }
        throw new StorageException("error with adding course's data to the database");
        sqlitedatabase.endTransaction();
        sqlitedatabase.close();
        throw list;
        list;
        obj;
        JVM INSTR monitorexit ;
        throw list;
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
    }

    public void addGame(Game game)
        throws StorageException
    {
        Object obj4 = mLocker;
        obj4;
        JVM INSTR monitorenter ;
        Object obj;
        Object obj1;
        SQLiteDatabase sqlitedatabase;
        Object obj2;
        Object obj3;
        obj2 = null;
        obj3 = null;
        sqlitedatabase = null;
        obj = obj2;
        obj1 = obj3;
        if (updateGame(game))
        {
            break MISSING_BLOCK_LABEL_91;
        }
        obj = obj2;
        obj1 = obj3;
        ContentValues contentvalues = getGameContentValues(game);
        obj = obj2;
        obj1 = obj3;
        sqlitedatabase = mHelper.getWritableDatabase();
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        game.id = sqlitedatabase.insert("golf_game_table", null, contentvalues);
        obj = sqlitedatabase;
        obj1 = sqlitedatabase;
        contentvalues.clear();
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        sqlitedatabase.close();
        for (obj = game.playerIdList.iterator(); ((Iterator) (obj)).hasNext(); addPlayerHistory(((Long)((Iterator) (obj)).next()).longValue(), game.id)) { }
        break MISSING_BLOCK_LABEL_174;
        game;
        obj4;
        JVM INSTR monitorexit ;
        throw game;
        game;
        obj1 = obj;
        throw new StorageException("error with adding game's data to the database");
        game;
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_172;
        }
        ((SQLiteDatabase) (obj1)).close();
        throw game;
        game = game.scores.values().iterator();
_L4:
        if (!game.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (PlayerScore)game.next();
        int i = 0;
_L2:
        if (i >= ((PlayerScore) (obj)).holeScores.size())
        {
            break; /* Loop/switch isn't completed */
        }
        addScore((Score)((PlayerScore) (obj)).holeScores.valueAt(i));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
_L3:
        obj4;
        JVM INSTR monitorexit ;
    }

    public void addPlayer(Player player)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase2;
        Object obj;
        sqlitedatabase2 = null;
        obj = null;
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase1;
        sqlitedatabase = obj;
        sqlitedatabase1 = sqlitedatabase2;
        boolean flag = updatePlayer(player);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (true)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        throw new NullPointerException();
        return;
        sqlitedatabase = obj;
        sqlitedatabase1 = sqlitedatabase2;
        ContentValues contentvalues = getPlayerContentValues(player);
        sqlitedatabase = obj;
        sqlitedatabase1 = sqlitedatabase2;
        sqlitedatabase2 = mHelper.getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        player.setId(sqlitedatabase2.insert("golf_player_table", null, contentvalues));
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        contentvalues.clear();
        if (sqlitedatabase2 == null)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        sqlitedatabase2.close();
        obj1;
        JVM INSTR monitorexit ;
        return;
        player;
        obj1;
        JVM INSTR monitorexit ;
        throw player;
        player;
        sqlitedatabase1 = sqlitedatabase;
        throw new StorageException("error with adding player's data to the database");
        player;
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_151;
        }
        sqlitedatabase1.close();
        throw player;
    }

    public void addPlayerHistory(long l, long l1)
        throws StorageException
    {
label0:
        {
            synchronized (mLocker)
            {
                if (!isExistPlayerHistory(l, l1))
                {
                    break label0;
                }
            }
            return;
        }
        obj1 = mHelper.getWritableDatabase();
        ((SQLiteDatabase) (obj1)).beginTransaction();
        ContentValues contentvalues = getPlayerHistoryContentValues(l, l1);
        ((SQLiteDatabase) (obj1)).insert("golf_history_of_player_table", null, contentvalues);
        contentvalues.clear();
        ((SQLiteDatabase) (obj1)).setTransactionSuccessful();
        ((SQLiteDatabase) (obj1)).endTransaction();
        ((SQLiteDatabase) (obj1)).close();
        obj;
        JVM INSTR monitorexit ;
        return;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        Object obj2;
        obj2;
        throw new StorageException("error with adding player's history to the database");
        obj2;
        ((SQLiteDatabase) (obj1)).endTransaction();
        ((SQLiteDatabase) (obj1)).close();
        throw obj2;
    }

    public void addPlayerList(List list)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        int i = list.size();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_43;
        }
        sqlitedatabase.endTransaction();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return;
        try
        {
            sqlitedatabase.beginTransaction();
            for (list = list.iterator(); list.hasNext(); addPlayer((Player)list.next())) { }
            break MISSING_BLOCK_LABEL_107;
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        finally { }
        throw new StorageException("error with adding player's data to the database");
        sqlitedatabase.endTransaction();
        sqlitedatabase.close();
        throw list;
        list;
        obj;
        JVM INSTR monitorexit ;
        throw list;
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
    }

    public void addScore(Score score)
        throws StorageException
    {
        Object obj2 = mLocker;
        obj2;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        SQLiteDatabase sqlitedatabase1;
        SQLiteDatabase sqlitedatabase2;
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
        sqlitedatabase2 = null;
        sqlitedatabase = obj;
        sqlitedatabase1 = obj1;
        if (updateScore(score))
        {
            break MISSING_BLOCK_LABEL_91;
        }
        sqlitedatabase = obj;
        sqlitedatabase1 = obj1;
        ContentValues contentvalues = getScoreContentValues(score);
        sqlitedatabase = obj;
        sqlitedatabase1 = obj1;
        sqlitedatabase2 = mHelper.getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        score.id = sqlitedatabase2.insert("golf_scores_table", null, contentvalues);
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase1 = sqlitedatabase2;
        contentvalues.clear();
        if (sqlitedatabase2 == null)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        sqlitedatabase2.close();
        obj2;
        JVM INSTR monitorexit ;
        return;
        score;
        sqlitedatabase1 = sqlitedatabase;
        throw new StorageException("error with adding score's data to the database");
        score;
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        sqlitedatabase1.close();
        throw score;
        score;
        obj2;
        JVM INSTR monitorexit ;
        throw score;
    }

    public void createDatabase(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE \"golf_course_table\" (\"courseId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseName\" TEXT,\"courseDescription\" TEXT,\"imageURL\" TEXT,\"useOverlay\" TEXT,\"holesData\" TEXT,\"courseIsRemoved\" INTEGER, \"courseUnit\" INTEGER)");
        sqlitedatabase.execSQL("CREATE TABLE \"golf_player_table\" (\"playerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerName\" TEXT,\"isMale\" INTEGER,\"teeColor\" TEXT,\"handicap\" INTEGER,\"email\" TEXT,\"playerIsRemoved\" INTEGER)");
        sqlitedatabase.execSQL("CREATE TABLE \"golf_game_table\" (\"gameId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"courseId\" INTEGER,\"notes\" TEXT,\"createdDate\" INTEGER,\"recentHoleNo\" INTEGER,\"isFinished\" INTEGER)");
        sqlitedatabase.execSQL("CREATE TABLE \"golf_history_of_player_table\" (\"historyPlayerId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"playerId\" INTEGER,\"gameId\" INTEGER)");
        sqlitedatabase.execSQL("CREATE TABLE \"golf_scores_table\" (\"scoreId\" INTEGER PRIMARY KEY AUTOINCREMENT,\"gameId\" INTEGER,\"playerId\" INTEGER,\"holeNumber\" INTEGER,\"score\" INTEGER,\"putts\" INTEGER)");
    }

    public void deleteCourse(Course course)
        throws StorageException
    {
        boolean flag = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        if (course == null)
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        sqlitedatabase = mHelper.getWritableDatabase();
        sqlitedatabase.delete("golf_course_table", "courseId=?", new String[] {
            String.valueOf(course.courseId)
        });
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return;
        course;
        throw new StorageException("error to delete the course data");
        course;
        sqlitedatabase.close();
        throw course;
        course;
        obj;
        JVM INSTR monitorexit ;
        throw course;
    }

    public boolean deleteGame(Game game)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        int i;
        long l;
        boolean flag;
        if (game != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        obj1 = mHelper.getWritableDatabase();
        i = ((SQLiteDatabase) (obj1)).delete("golf_game_table", "gameId=?", new String[] {
            String.valueOf(game.id)
        });
        l = i;
        ((SQLiteDatabase) (obj1)).close();
        deletePlayerHistoryForGame(game.id);
        game = game.scores.values().iterator();
_L4:
        if (!game.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (PlayerScore)game.next();
        i = 0;
_L2:
        if (i >= ((PlayerScore) (obj1)).holeScores.size())
        {
            break; /* Loop/switch isn't completed */
        }
        deleteScore((Score)((PlayerScore) (obj1)).holeScores.valueAt(i));
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (true) goto _L4; else goto _L3
        game;
        throw new StorageException("error to delete game from the database");
        game;
        ((SQLiteDatabase) (obj1)).close();
        throw game;
        game;
        obj;
        JVM INSTR monitorexit ;
        throw game;
_L3:
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
    }

    public boolean deletePlayer(Player player, boolean flag)
        throws StorageException
    {
        if (flag)
        {
            return permanentlyDeletePlayer(player);
        } else
        {
            return updatePlayerAsDeleted(player);
        }
    }

    public void deletePlayerHistory(long l, long l1)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        sqlitedatabase.delete("golf_history_of_player_table", "playerId=? and gameId=?", new String[] {
            String.valueOf(l), String.valueOf(l1)
        });
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        throw new StorageException("error to delete player's history at the database.");
        obj1;
        sqlitedatabase.close();
        throw obj1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void deletePlayerHistoryForGame(long l)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        sqlitedatabase.delete("golf_history_of_player_table", "gameId=?", new String[] {
            String.valueOf(l)
        });
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        throw new StorageException("error with adding coupon's data to the storage");
        obj1;
        sqlitedatabase.close();
        throw obj1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void deletePlayerHistoryForPlayer(long l)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        sqlitedatabase.delete("golf_history_of_player_table", "playerId=?", new String[] {
            String.valueOf(l)
        });
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        throw new StorageException("error to delete player's history");
        obj1;
        sqlitedatabase.close();
        throw obj1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean deletePlayerScores(long l)
        throws StorageException
    {
        boolean flag = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        int i = sqlitedatabase.delete("golf_scores_table", "playerId=?", new String[] {
            String.valueOf(l)
        });
        l = i;
        sqlitedatabase.close();
        Exception exception;
        Object obj1;
        if (l <= 0L)
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        obj1;
        throw new StorageException("error deleting player's score");
        obj1;
        sqlitedatabase.close();
        throw obj1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean deletePlayerScoresForGame(long l, long l1)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        int i = sqlitedatabase.delete("golf_scores_table", "playerId=? and gameId=?", new String[] {
            String.valueOf(l), String.valueOf(l1)
        });
        l = i;
        sqlitedatabase.close();
        Exception exception;
        Object obj1;
        boolean flag;
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        obj1;
        throw new StorageException("error deleting player's score for specified game");
        obj1;
        sqlitedatabase.close();
        throw obj1;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean deleteScore(Score score)
        throws StorageException
    {
        boolean flag1 = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        int i;
        long l;
        boolean flag;
        if (score != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        sqlitedatabase = mHelper.getWritableDatabase();
        i = sqlitedatabase.delete("golf_scores_table", "scoreId=?", new String[] {
            String.valueOf(score.id)
        });
        l = i;
        sqlitedatabase.close();
        if (l > 0L)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        score;
        throw new StorageException("error to delete the score from the database");
        score;
        sqlitedatabase.close();
        throw score;
        score;
        obj;
        JVM INSTR monitorexit ;
        throw score;
    }

    public void dropDatabase(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS golf_course_table");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS golf_player_table");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS golf_game_table");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS golf_history_of_player_table");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS golf_scores_table");
    }

    public List getAllCourses()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_course_table", null, null, null, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag || i <= 0)
        {
            break MISSING_BLOCK_LABEL_134;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        Course course = new Course();
        fillCourseData(course, cursor);
        arraylist.add(course);
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List getAllGames(boolean flag)
    {
        Object obj1;
        Object obj2;
        obj1 = new ArrayList();
        obj2 = new ArrayList();
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        Object obj3;
        Cursor cursor;
        obj3 = mHelper.getReadableDatabase();
        cursor = ((SQLiteDatabase) (obj3)).query("golf_game_table", null, null, null, null, null, "createdDate DESC");
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag1;
        flag1 = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag1 || i <= 0)
        {
            break MISSING_BLOCK_LABEL_148;
        }
_L1:
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        ((List) (obj2)).add(Long.valueOf(cursor.getLong(cursor.getColumnIndex("gameId"))));
        flag1 = cursor.moveToNext();
          goto _L1
        cursor.close();
        ((SQLiteDatabase) (obj3)).close();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_167;
        }
        Game.clearCache();
        obj2 = ((List) (obj2)).iterator();
_L2:
        if (!((Iterator) (obj2)).hasNext())
        {
            break MISSING_BLOCK_LABEL_237;
        }
        obj3 = Game.getGame(((Long)((Iterator) (obj2)).next()).longValue());
        if (obj3 != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        ((List) (obj1)).add(obj3);
          goto _L2
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        obj;
        JVM INSTR monitorexit ;
        return ((List) (obj1));
    }

    public List getAllPlayers()
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        obj1 = new ArrayList();
        for (Iterator iterator = getAllPlayersIds().iterator(); iterator.hasNext(); ((List) (obj1)).add(Player.getPlayer(((Long)iterator.next()).longValue()))) { }
        break MISSING_BLOCK_LABEL_64;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        obj;
        JVM INSTR monitorexit ;
        return ((List) (obj1));
    }

    public List getAllPlayersIds()
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        ArrayList arraylist = new ArrayList();
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_player_table", null, null, null, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj1;
        JVM INSTR monitorexit ;
        obj;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag || i <= 0)
        {
            break MISSING_BLOCK_LABEL_145;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        arraylist.add(Long.valueOf(cursor.getLong(cursor.getColumnIndex("playerId"))));
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        sqlitedatabase.close();
        obj1;
        JVM INSTR monitorexit ;
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        Exception exception;
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Course getCourse(long l)
    {
        Object obj = null;
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_course_table", null, "courseId=?", new String[] {
            String.valueOf(l)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj1;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        Exception exception;
        Course course = obj;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        course = obj;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        if (i == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        course = new Course();
        fillCourseData(course, cursor);
        cursor.close();
        sqlitedatabase.close();
        obj1;
        JVM INSTR monitorexit ;
        return course;
_L2:
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Game getGame(long l)
    {
        Iterator iterator = null;
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        Object obj2;
        Object obj3;
        obj2 = mHelper.getReadableDatabase();
        obj3 = ((SQLiteDatabase) (obj2)).query("golf_game_table", null, "gameId=?", new String[] {
            String.valueOf(l)
        }, null, null, null);
        if (obj3 != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj1;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = ((Cursor) (obj3)).moveToFirst();
        i = ((Cursor) (obj3)).getCount();
        Object obj;
        obj = iterator;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        obj = iterator;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        if (i == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        obj = new Game();
        fillGameData(((Game) (obj)), ((Cursor) (obj3)));
        ((Cursor) (obj3)).close();
        ((SQLiteDatabase) (obj2)).close();
        for (iterator = ((Game) (obj)).playerIdList.iterator(); iterator.hasNext(); ((Game) (obj)).scores.put(obj2, obj3))
        {
            l = ((Long)iterator.next()).longValue();
            obj2 = Player.getPlayer(l);
            obj3 = getPlayerScore(((Game) (obj)).id, l);
        }

          goto _L1
_L3:
        obj1;
        JVM INSTR monitorexit ;
        throw obj;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        return ((Game) (obj));
        obj;
        continue; /* Loop/switch isn't completed */
        obj;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public List getGameIdsForPlayer(long l)
    {
        ArrayList arraylist = new ArrayList();
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_history_of_player_table", null, "playerId=?", new String[] {
            String.valueOf(l)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag || i <= 0)
        {
            break MISSING_BLOCK_LABEL_150;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        arraylist.add(Long.valueOf(cursor.getLong(cursor.getColumnIndex("gameId"))));
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Player getPlayer(long l)
    {
        Object obj = null;
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_player_table", null, "playerId=?", new String[] {
            String.valueOf(l)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_75;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj1;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        Exception exception;
        Player player = obj;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        player = obj;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        if (i == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        player = new Player();
        fillPlayerData(player, cursor);
        cursor.close();
        sqlitedatabase.close();
        obj1;
        JVM INSTR monitorexit ;
        return player;
_L2:
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public List getPlayerIdsForGame(long l)
    {
        ArrayList arraylist = new ArrayList();
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_history_of_player_table", null, "gameId=?", new String[] {
            String.valueOf(l)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag || i <= 0)
        {
            break MISSING_BLOCK_LABEL_150;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        arraylist.add(Long.valueOf(cursor.getLong(cursor.getColumnIndex("playerId"))));
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public PlayerScore getPlayerScore(long l, long l1)
    {
        PlayerScore playerscore;
        playerscore = new PlayerScore();
        playerscore.gameId = l;
        playerscore.playerId = l1;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_scores_table", null, "gameId=? and playerId=?", new String[] {
            String.valueOf(l), String.valueOf(l1)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj;
        JVM INSTR monitorexit ;
        return null;
        int j;
        boolean flag;
        flag = cursor.moveToFirst();
        j = cursor.getCount();
        if (!flag || j <= 0) goto _L2; else goto _L1
_L1:
        int i = 0;
_L3:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        Score score = new Score();
        score.gameID = l;
        score.playerID = l1;
        fillScoreData(score, cursor);
        playerscore.holeScores.put(score.holeNumber, score);
        cursor.moveToNext();
        i++;
        if (true) goto _L3; else goto _L2
_L2:
        cursor.close();
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return playerscore;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Score getScore(long l, long l1, int i)
    {
        Object obj = null;
        Object obj1 = mLocker;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor;
        sqlitedatabase = mHelper.getReadableDatabase();
        cursor = sqlitedatabase.query("golf_scores_table", null, "gameId=? and playerId=?holeNumber=?", new String[] {
            String.valueOf(l), String.valueOf(l1), String.valueOf(i)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        obj1;
        JVM INSTR monitorexit ;
        return null;
        int j;
        boolean flag;
        flag = cursor.moveToFirst();
        j = cursor.getCount();
        Exception exception;
        Score score = obj;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        score = obj;
        if (j <= 0)
        {
            break MISSING_BLOCK_LABEL_176;
        }
        if (j == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        score = new Score();
        score.gameID = l;
        score.playerID = l1;
        score.holeNumber = i;
        fillScoreData(score, cursor);
        cursor.close();
        sqlitedatabase.close();
        obj1;
        JVM INSTR monitorexit ;
        return score;
_L2:
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean isExistPlayerHistory(long l, long l1)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        Object obj1 = mHelper.getWritableDatabase();
        Cursor cursor = ((SQLiteDatabase) (obj1)).query("golf_history_of_player_table", null, "playerId=? and gameId=?", new String[] {
            String.valueOf(l), String.valueOf(l1)
        }, null, null, null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        ((SQLiteDatabase) (obj1)).close();
        obj;
        JVM INSTR monitorexit ;
        return false;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag || i <= 0)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        ((SQLiteDatabase) (obj1)).close();
        obj;
        JVM INSTR monitorexit ;
        return true;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        ((SQLiteDatabase) (obj1)).close();
        obj;
        JVM INSTR monitorexit ;
        return false;
        Object obj2;
        obj2;
        throw new StorageException("error to check player existance at the database");
        obj2;
        ((SQLiteDatabase) (obj1)).close();
        throw obj2;
    }

    public boolean permanentlyDeletePlayer(Player player)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase;
        int i;
        long l;
        boolean flag;
        if (player != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        deletePlayerHistoryForPlayer(player.getId());
        deletePlayerScores(player.getId());
        sqlitedatabase = mHelper.getWritableDatabase();
        i = sqlitedatabase.delete("golf_player_table", "playerId=?", new String[] {
            String.valueOf(player.getId())
        });
        l = i;
        sqlitedatabase.close();
        obj;
        JVM INSTR monitorexit ;
        return l > 0L;
        player;
        throw new StorageException("error to delete player permanently.");
        player;
        sqlitedatabase.close();
        throw player;
        player;
        obj;
        JVM INSTR monitorexit ;
        throw player;
    }

    public boolean updateCourse(Course course)
        throws StorageException
    {
        boolean flag = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        long l;
        ContentValues contentvalues = getCourseContentValues(course);
        l = sqlitedatabase.update("golf_course_table", contentvalues, "courseName=?", new String[] {
            String.valueOf(course.name)
        });
        contentvalues.clear();
        sqlitedatabase.close();
        if (l <= 0L)
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        course;
        throw new StorageException("error with adding coupon's data to the storage");
        course;
        sqlitedatabase.close();
        throw course;
        course;
        obj;
        JVM INSTR monitorexit ;
        throw course;
    }

    public boolean updateGame(Game game)
        throws StorageException
    {
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        Object obj1 = mHelper.getWritableDatabase();
        long l;
        ContentValues contentvalues = getGameContentValues(game);
        l = ((SQLiteDatabase) (obj1)).update("golf_game_table", contentvalues, "gameId=?", new String[] {
            String.valueOf(game.id)
        });
        contentvalues.clear();
        ((SQLiteDatabase) (obj1)).close();
        if (l <= 0L) goto _L2; else goto _L1
_L1:
        deletePlayerHistoryForGame(game.id);
        for (obj1 = game.playerIdList.iterator(); ((Iterator) (obj1)).hasNext(); addPlayerHistory(((Long)((Iterator) (obj1)).next()).longValue(), game.id)) { }
        break MISSING_BLOCK_LABEL_140;
        game;
        obj;
        JVM INSTR monitorexit ;
        throw game;
        game;
        throw new StorageException("error to update the game to the database");
        game;
        ((SQLiteDatabase) (obj1)).close();
        throw game;
        game = game.scores.values().iterator();
_L5:
        if (!game.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        obj1 = (PlayerScore)game.next();
        int i = 0;
_L4:
        if (i >= ((PlayerScore) (obj1)).holeScores.size())
        {
            break; /* Loop/switch isn't completed */
        }
        updateScore((Score)((PlayerScore) (obj1)).holeScores.valueAt(i));
        i++;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L5; else goto _L2
_L7:
        obj;
        JVM INSTR monitorexit ;
        boolean flag;
        return flag;
_L2:
        while (l <= 0L) 
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public boolean updatePlayer(Player player)
        throws StorageException
    {
        boolean flag = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        long l;
        ContentValues contentvalues = getPlayerContentValues(player);
        l = sqlitedatabase.update("golf_player_table", contentvalues, "playerId=?", new String[] {
            String.valueOf(player.getId())
        });
        contentvalues.clear();
        sqlitedatabase.close();
        if (l <= 0L)
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        player;
        throw new StorageException("error to update player's data to the database");
        player;
        sqlitedatabase.close();
        throw player;
        player;
        obj;
        JVM INSTR monitorexit ;
        throw player;
    }

    public boolean updatePlayerAsDeleted(Player player)
        throws StorageException
    {
        boolean flag = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        long l;
        player.isRemoved = true;
        ContentValues contentvalues = getPlayerContentValues(player);
        l = sqlitedatabase.update("golf_player_table", contentvalues, "playerId=?", new String[] {
            String.valueOf(player.getId())
        });
        contentvalues.clear();
        sqlitedatabase.close();
        if (l <= 0L)
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        player;
        throw new StorageException("error to update the player as deleted");
        player;
        sqlitedatabase.close();
        throw player;
        player;
        obj;
        JVM INSTR monitorexit ;
        throw player;
    }

    public boolean updateScore(Score score)
        throws StorageException
    {
        boolean flag = true;
        Object obj = mLocker;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        long l;
        ContentValues contentvalues = getScoreContentValues(score);
        l = sqlitedatabase.update("golf_scores_table", contentvalues, "scoreId=?", new String[] {
            String.valueOf(score.id)
        });
        contentvalues.clear();
        sqlitedatabase.close();
        if (l <= 0L)
        {
            flag = false;
        }
        obj;
        JVM INSTR monitorexit ;
        return flag;
        score;
        throw new StorageException("error to update the score to the database");
        score;
        sqlitedatabase.close();
        throw score;
        score;
        obj;
        JVM INSTR monitorexit ;
        throw score;
    }

    public boolean upgradeDatabase(SQLiteDatabase sqlitedatabase, float f, float f1)
    {
        dropDatabase(sqlitedatabase);
        return true;
    }
}
