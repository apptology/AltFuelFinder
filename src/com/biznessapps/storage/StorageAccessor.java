// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.storage;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.database.CommonDatabase;
import com.biznessapps.coupons.CouponEntity;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.food_ordering.account.AccountEntity;
import com.biznessapps.golfcourse.database.GolfDatabase;
import com.biznessapps.loyalty.LoyaltyV1Entity;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.notepad.NotepadEntity;
import com.biznessapps.qr.QRCodeEntity;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.storage:
//            StorageException

public class StorageAccessor
{
    public static class DbHelper extends SQLiteOpenHelper
    {

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            Log.d("DbHelper", String.format("creating base", new Object[0]));
            sqlitedatabase.beginTransaction();
            sqlitedatabase.execSQL("CREATE TABLE \"cache_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" TEXT,\"value\" BLOB)");
            sqlitedatabase.execSQL("CREATE TABLE \"coupons_table\" (\"id\" INTEGER PRIMARY KEY,\"checkinTarget\" INTEGER,\"lastCheckinTime\" LONG,\"lastRedeemedTime\" LONG)");
            sqlitedatabase.execSQL("CREATE TABLE \"notepad_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"title\" TEXT,\"content\" TEXT,\"date\" LONG)");
            sqlitedatabase.execSQL("CREATE TABLE \"loyalty_table\" (\"id\" INTEGER PRIMARY KEY,\"loyaltyItemId\" TEXT,\"loyaltyCouponId\" TEXT,\"loyaltyImageUrl\" TEXT,\"loyaltyCouponCode\" TEXT,\"loyaltyCouponLocked\" INTEGER,\"loyaltyCouponApproved\" INTEGER,\"loyaltyCouponAlreadyUnLocked\" INTEGER)");
            sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS \"preference_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" VARCHAR(64),\"value\" TEXT,\"app_code\" TEXT)");
            sqlitedatabase.execSQL("CREATE TABLE \"message_table\" (\"id\" INTEGER,\"type\" INTEGER,\"url\" TEXT,\"tabId\" TEXT,\"categoryId\" TEXT,\"detailId\" TEXT,\"date\" INTEGER,\"paths\" TEXT,\"message_text\" TEXT, \"gfEnabled\" INTEGER,\"isDeleted\" INTEGER,\"activeTill\" INTEGER)");
            sqlitedatabase.execSQL("CREATE TABLE \"qr_codes_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"content\" TEXT)");
            sqlitedatabase.execSQL("CREATE TABLE \"photos_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"path\" TEXT)");
            sqlitedatabase.execSQL("CREATE TABLE \"comments_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"url\" TEXT,\"title\" TEXT,\"comment\" TEXT,\"time_ago\" INTEGER)");
            sqlitedatabase.execSQL("CREATE TABLE \"fo_account_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"nickname\" TEXT,\"first_name\" TEXT,\"last_name\" TEXT,\"address1\" TEXT,\"address2\" TEXT,\"phone\" TEXT,\"email\" TEXT,\"zipcode\" TEXT,\"latitude\" TEXT,\"longitude\" TEXT)");
            for (Iterator iterator = StorageAccessor.databaseModuleList.iterator(); iterator.hasNext(); ((CommonDatabase)iterator.next()).createDatabase(sqlitedatabase)) { }
            sqlitedatabase.setTransactionSuccessful();
            sqlitedatabase.endTransaction();
            Log.d("DbHelper", String.format("initialized", new Object[0]));
            return;
            Exception exception;
            exception;
            sqlitedatabase.endTransaction();
            throw exception;
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS loyalty_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS coupons_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS notepad_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS preference_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS cache_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS message_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS qr_codes_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS profile_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS photos_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS comments_table");
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS fo_account_table");
            for (Iterator iterator = StorageAccessor.databaseModuleList.iterator(); iterator.hasNext(); ((CommonDatabase)iterator.next()).upgradeDatabase(sqlitedatabase, 0.0F, 13F)) { }
            onCreate(sqlitedatabase);
        }

        DbHelper(Context context, String s)
        {
            super(context, s, null, 13);
        }
    }


    private static final String CACHE_COLUMN_ID = "id";
    private static final String CACHE_COLUMN_KEY = "key";
    private static final String CACHE_COLUMN_VALUE = "value";
    private static final String CACHE_TABLE = "cache_table";
    private static final String COLUMN_CHECKIN_TARGET = "checkinTarget";
    private static final String COLUMN_ID = "id";
    private static final String COLUMN_LAST_CHECKIN_TIME = "lastCheckinTime";
    private static final String COLUMN_LAST_REDEEMED_TIME = "lastRedeemedTime";
    private static final String COLUMN_LOYALTY_COUPON_ALREADY_UNLOCKED = "loyaltyCouponAlreadyUnLocked";
    private static final String COLUMN_LOYALTY_COUPON_APPROVED = "loyaltyCouponApproved";
    private static final String COLUMN_LOYALTY_COUPON_CODE = "loyaltyCouponCode";
    private static final String COLUMN_LOYALTY_COUPON_ID = "loyaltyCouponId";
    private static final String COLUMN_LOYALTY_COUPON_LOCKED = "loyaltyCouponLocked";
    private static final String COLUMN_LOYALTY_IMAGE_URL = "loyaltyImageUrl";
    private static final String COLUMN_LOYALTY_ITEM_ID = "loyaltyItemId";
    private static final String COLUMN_MESSAGE_ACTIVE_TILL = "activeTill";
    private static final String COLUMN_MESSAGE_CATEGORY_ID = "categoryId";
    private static final String COLUMN_MESSAGE_DATE = "date";
    private static final String COLUMN_MESSAGE_DETAIL_ID = "detailId";
    private static final String COLUMN_MESSAGE_GF_ENABLED = "gfEnabled";
    private static final String COLUMN_MESSAGE_IS_DELETED = "isDeleted";
    private static final String COLUMN_MESSAGE_PATHS = "paths";
    private static final String COLUMN_MESSAGE_TAB_ID = "tabId";
    private static final String COLUMN_MESSAGE_TEXT = "message_text";
    private static final String COLUMN_MESSAGE_TYPE = "type";
    private static final String COLUMN_MESSAGE_URL = "url";
    private static final String COMMENT = "comment";
    private static final String COMMENTS_TABLE = "comments_table";
    private static final String CONTENT = "content";
    private static final String COUPONS_TABLE = "coupons_table";
    private static final String DATABASE_NAME = "ba_storage1_5.db";
    private static final int DB_VERSION = 13;
    private static final String FILE_PATH = "path";
    private static final String FO_ACCOUNT_TABLE = "fo_account_table";
    private static final String FO_ADDRESS1 = "address1";
    private static final String FO_ADDRESS2 = "address2";
    private static final String FO_EMAIL = "email";
    private static final String FO_FIRST_NAME = "first_name";
    private static final String FO_LAST_NAME = "last_name";
    private static final String FO_LATITUDE = "latitude";
    private static final String FO_LONGITUDE = "longitude";
    private static final String FO_NICKNAME = "nickname";
    private static final String FO_PHONE = "phone";
    private static final String FO_ZIPCODE = "zipcode";
    private static final String ID = "id";
    private static final String LOYALTY_TABLE = "loyalty_table";
    private static final String MESSAGE_TABLE = "message_table";
    private static final String NOTEPAD_COLUMN_CONTENT = "content";
    private static final String NOTEPAD_COLUMN_DATE = "date";
    private static final String NOTEPAD_COLUMN_ID = "id";
    private static final String NOTEPAD_COLUMN_TITLE = "title";
    private static final String NOTEPAD_TABLE = "notepad_table";
    private static final String PHOTOS_TABLE = "photos_table";
    private static final String PREFERENCES_COLUMN_APP_CODE = "app_code";
    private static final String PREFERENCES_COLUMN_ID = "id";
    private static final String PREFERENCES_COLUMN_KEY = "key";
    private static final String PREFERENCES_COLUMN_VALUE = "value";
    private static final String PREFERENCES_TABLE = "preference_table";
    private static final String PROFILE_COMMENT_URL = "url";
    private static final String PROFILE_TABLE = "profile_table";
    private static final String QR_CODES_TABLE = "qr_codes_table";
    private static final String REQUEST_CREATE_CACHE_TABLE = "CREATE TABLE \"cache_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" TEXT,\"value\" BLOB)";
    private static final String REQUEST_CREATE_COMMENTS_TABLE = "CREATE TABLE \"comments_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"url\" TEXT,\"title\" TEXT,\"comment\" TEXT,\"time_ago\" INTEGER)";
    private static final String REQUEST_CREATE_COUPONS_CUT_TABLE = "CREATE TABLE \"coupons_table\" (\"id\" INTEGER PRIMARY KEY,\"checkinTarget\" INTEGER,\"lastCheckinTime\" LONG,\"lastRedeemedTime\" LONG)";
    private static final String REQUEST_CREATE_FO_ACCOUNT_TABLE = "CREATE TABLE \"fo_account_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"nickname\" TEXT,\"first_name\" TEXT,\"last_name\" TEXT,\"address1\" TEXT,\"address2\" TEXT,\"phone\" TEXT,\"email\" TEXT,\"zipcode\" TEXT,\"latitude\" TEXT,\"longitude\" TEXT)";
    private static final String REQUEST_CREATE_LOYALTY_TABLE = "CREATE TABLE \"loyalty_table\" (\"id\" INTEGER PRIMARY KEY,\"loyaltyItemId\" TEXT,\"loyaltyCouponId\" TEXT,\"loyaltyImageUrl\" TEXT,\"loyaltyCouponCode\" TEXT,\"loyaltyCouponLocked\" INTEGER,\"loyaltyCouponApproved\" INTEGER,\"loyaltyCouponAlreadyUnLocked\" INTEGER)";
    private static final String REQUEST_CREATE_MESSAGE_TABLE = "CREATE TABLE \"message_table\" (\"id\" INTEGER,\"type\" INTEGER,\"url\" TEXT,\"tabId\" TEXT,\"categoryId\" TEXT,\"detailId\" TEXT,\"date\" INTEGER,\"paths\" TEXT,\"message_text\" TEXT, \"gfEnabled\" INTEGER,\"isDeleted\" INTEGER,\"activeTill\" INTEGER)";
    private static final String REQUEST_CREATE_NOTEPAD_TABLE = "CREATE TABLE \"notepad_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"title\" TEXT,\"content\" TEXT,\"date\" LONG)";
    private static final String REQUEST_CREATE_PHOTOS_TABLE = "CREATE TABLE \"photos_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"path\" TEXT)";
    private static final String REQUEST_CREATE_PREFERENCES_TABLE = "CREATE TABLE IF NOT EXISTS \"preference_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"key\" VARCHAR(64),\"value\" TEXT,\"app_code\" TEXT)";
    private static final String REQUEST_CREATE_QR_CODES_TABLE = "CREATE TABLE \"qr_codes_table\" (\"id\" INTEGER PRIMARY KEY AUTOINCREMENT,\"content\" TEXT)";
    private static final String REQUEST_DROP_CACHE_TABLE = "DROP TABLE IF EXISTS cache_table";
    private static final String REQUEST_DROP_COMMENTS_TABLE = "DROP TABLE IF EXISTS comments_table";
    private static final String REQUEST_DROP_COUPONS_TABLE = "DROP TABLE IF EXISTS coupons_table";
    private static final String REQUEST_DROP_FO_ACCOUNT_TABLE = "DROP TABLE IF EXISTS fo_account_table";
    private static final String REQUEST_DROP_LOYALTY_TABLE = "DROP TABLE IF EXISTS loyalty_table";
    private static final String REQUEST_DROP_MESSAGES_TABLE = "DROP TABLE IF EXISTS message_table";
    private static final String REQUEST_DROP_NOTEPAD_TABLE = "DROP TABLE IF EXISTS notepad_table";
    private static final String REQUEST_DROP_PHOTOS_TABLE = "DROP TABLE IF EXISTS photos_table";
    private static final String REQUEST_DROP_PREFERENCE_TABLE = "DROP TABLE IF EXISTS preference_table";
    private static final String REQUEST_DROP_PROFILE_TABLE = "DROP TABLE IF EXISTS profile_table";
    private static final String REQUEST_DROP_QR_CODES_TABLE = "DROP TABLE IF EXISTS qr_codes_table";
    private static final String TIME_AGO = "time_ago";
    private static final String TITLE = "title";
    private static List databaseModuleList = new ArrayList();
    private static Object lockdb = new Object();
    private DbHelper base;

    public StorageAccessor(Context context)
    {
        createDB(context);
        initDatabaseModules();
    }

    private static final String REQUEST_DELETE_ALL_LOYALTY_ITEMS()
    {
        return "DELETE FROM loyalty_table";
    }

    private static final String REQUEST_DELETE_CACHED_ITEM(String s)
    {
        return (new StringBuilder()).append("DELETE FROM cache_table WHERE key = \"").append(s).append("\"").toString();
    }

    private static final String REQUEST_DELETE_COUPON(String s)
    {
        return (new StringBuilder()).append("DELETE FROM coupons_table WHERE id = ").append(s).toString();
    }

    public static final String REQUEST_DELETE_FO_ACCOUNT(String s)
    {
        return (new StringBuilder()).append("DELETE FROM fo_account_table WHERE nickname = \"").append(s).append("\"").toString();
    }

    private static final String REQUEST_DELETE_LOYALTY_ITEM(String s)
    {
        return (new StringBuilder()).append("DELETE FROM loyalty_table WHERE loyaltyItemId = ").append(s).toString();
    }

    public static final String REQUEST_DELETE_MESSAGE(String s)
    {
        return (new StringBuilder()).append("DELETE FROM message_table WHERE id = ").append(s).toString();
    }

    public static final String REQUEST_DELETE_NOTE(String s)
    {
        return (new StringBuilder()).append("DELETE FROM notepad_table WHERE id = ").append(s).toString();
    }

    public static final String REQUEST_DELETE_PHOTOS(String s)
    {
        return (new StringBuilder()).append("DELETE FROM photos_table WHERE path = ").append(s).toString();
    }

    private static final String REQUEST_DELETE_PREFERENCE(String s, String s1)
    {
        return (new StringBuilder()).append("DELETE FROM preference_table WHERE key = \"").append(s).append("\"").append(" AND ").append("app_code").append(" = \"").append(s1).append("\"").toString();
    }

    private static final String REQUEST_GET_ACCOUNT(String s)
    {
        return (new StringBuilder()).append("SELECT id, nickname, first_name, last_name, address1, address2, phone, email, zipcode, latitude, longitude FROM fo_account_table WHERE nickname = ").append(s).toString();
    }

    private static final String REQUEST_GET_ALL_ACCOUNTS()
    {
        return "SELECT id, nickname, first_name, last_name, address1, address2, phone, email, zipcode, latitude, longitude FROM fo_account_table";
    }

    private static final String REQUEST_GET_ALL_COMMENTS()
    {
        return "SELECT url, title, comment, time_ago FROM comments_table";
    }

    private static final String REQUEST_GET_ALL_LOYALTY()
    {
        return "SELECT * FROM loyalty_table";
    }

    private static final String REQUEST_GET_ALL_MESSAGES()
    {
        return "SELECT id, type, url, tabId, categoryId, detailId, date, paths, message_text, gfEnabled, isDeleted, activeTill FROM message_table";
    }

    private static final String REQUEST_GET_ALL_MESSAGES_IDS()
    {
        return "SELECT id FROM message_table";
    }

    private static final String REQUEST_GET_ALL_NOTES()
    {
        return "SELECT id, title, content, date FROM notepad_table";
    }

    private static final String REQUEST_GET_ALL_PHOTOS()
    {
        return "SELECT path FROM photos_table";
    }

    private static final String REQUEST_GET_ALL_QR_CODES()
    {
        return "SELECT * FROM qr_codes_table";
    }

    private static final String REQUEST_GET_CACHED_ITEM(String s)
    {
        return (new StringBuilder()).append("SELECT value FROM cache_table WHERE key = \"").append(s).append("\"").toString();
    }

    private static final String REQUEST_GET_COUPON(String s)
    {
        return (new StringBuilder()).append("SELECT id, checkinTarget, lastCheckinTime, lastRedeemedTime FROM coupons_table WHERE id = ").append(s).toString();
    }

    private static final String REQUEST_GET_LOYALTY_ITEM(String s)
    {
        return (new StringBuilder()).append("SELECT loyaltyItemId, loyaltyCouponId, loyaltyImageUrl, loyaltyCouponCode, loyaltyCouponLocked, loyaltyCouponApproved, loyaltyCouponAlreadyUnLocked FROM loyalty_table WHERE loyaltyItemId = ").append(s).toString();
    }

    private static final String REQUEST_GET_NOTE(String s)
    {
        return (new StringBuilder()).append("SELECT id, title, content, date FROM notepad_table WHERE id = ").append(s).toString();
    }

    private static final String REQUEST_GET_PREFERENCE(String s, String s1)
    {
        return (new StringBuilder()).append("SELECT key, value FROM preference_table WHERE key = \"").append(s).append("\"").append(" AND ").append("app_code").append(" = \"").append(s1).append("\"").toString();
    }

    private void closeDB(SQLiteDatabase sqlitedatabase)
    {
        this;
        JVM INSTR monitorenter ;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        sqlitedatabase.close();
        this;
        JVM INSTR monitorexit ;
        return;
        sqlitedatabase;
        throw sqlitedatabase;
    }

    private void createDB(Context context)
    {
        try
        {
            base = new DbHelper(context, "ba_storage1_5.db");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            Log.e("DB", "Failed to open/create database!");
        }
    }

    private void initDatabaseModules()
    {
        GolfDatabase golfdatabase = GolfDatabase.getInstance(base, lockdb);
        databaseModuleList.add(golfdatabase);
    }

    public void addComment(CommentEntity commententity)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("url", commententity.getImageUrl());
        contentvalues.put("title", commententity.getTitle());
        contentvalues.put("comment", commententity.getComment());
        contentvalues.put("time_ago", Long.valueOf(commententity.getTimeStamp()));
        sqlitedatabase.insert("comments_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        commententity;
        throw new StorageException("error with adding Comment's data to the storage");
        commententity;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw commententity;
    }

    public void addCoupons(List list)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = base.getWritableDatabase();
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_25;
        }
        int i = list.size();
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        try
        {
            sqlitedatabase.beginTransaction();
            ContentValues contentvalues = new ContentValues();
            for (list = list.iterator(); list.hasNext(); contentvalues.clear())
            {
                CouponEntity couponentity = (CouponEntity)list.next();
                sqlitedatabase.execSQL(REQUEST_DELETE_COUPON(couponentity.getId()));
                contentvalues.put("id", couponentity.getId());
                contentvalues.put("checkinTarget", Integer.valueOf(couponentity.getCheckinTarget()));
                contentvalues.put("lastCheckinTime", Long.valueOf(couponentity.getLastCheckinTime()));
                contentvalues.put("lastRedeemedTime", Long.valueOf(couponentity.getLastRedeemedTime()));
                sqlitedatabase.insert("coupons_table", null, contentvalues);
            }

            break MISSING_BLOCK_LABEL_179;
        }
        // Misplaced declaration of an exception variable
        catch (List list) { }
        finally
        {
            sqlitedatabase.endTransaction();
            closeDB(sqlitedatabase);
            throw list;
        }
        throw new StorageException("error with adding coupon's data to the storage");
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
    }

    public void addFO_Account(AccountEntity accountentity)
    {
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_FO_ACCOUNT(accountentity.getNickName()));
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("nickname", accountentity.getNickName());
        contentvalues.put("first_name", accountentity.getFirstName());
        contentvalues.put("last_name", accountentity.getLastName());
        contentvalues.put("address1", accountentity.getAddress1());
        contentvalues.put("address2", accountentity.getAddress2());
        contentvalues.put("phone", accountentity.getPhone());
        contentvalues.put("email", accountentity.getEmail());
        contentvalues.put("zipcode", accountentity.getZipcode());
        contentvalues.put("latitude", accountentity.getLatitude());
        contentvalues.put("longitude", accountentity.getLongitude());
        sqlitedatabase.insert("fo_account_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        accountentity;
        accountentity.printStackTrace();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        accountentity;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw accountentity;
    }

    public void addMessage(MessageEntity messageentity)
        throws StorageException
    {
        boolean flag = true;
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        ContentValues contentvalues;
        sqlitedatabase.beginTransaction();
        contentvalues = new ContentValues();
        sqlitedatabase.execSQL(REQUEST_DELETE_MESSAGE(messageentity.getId()));
        contentvalues.put("id", messageentity.getId());
        contentvalues.put("type", Integer.valueOf(messageentity.getType()));
        contentvalues.put("url", messageentity.getUrl());
        contentvalues.put("tabId", messageentity.getTabId());
        contentvalues.put("categoryId", messageentity.getCategoryId());
        contentvalues.put("detailId", messageentity.getDetailId());
        contentvalues.put("date", Long.valueOf(messageentity.getTimeStamp()));
        contentvalues.put("paths", messageentity.getPaths());
        contentvalues.put("message_text", messageentity.getTitle());
        int i;
        if (messageentity.isGeoFencingEnabled())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put("gfEnabled", Integer.valueOf(i));
        if (messageentity.isDeleted())
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 0;
        }
        contentvalues.put("isDeleted", Integer.valueOf(i));
        contentvalues.put("activeTill", Long.valueOf(messageentity.getActiveTill()));
        sqlitedatabase.insert("message_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
        return;
        messageentity;
        throw new StorageException("error with adding Note's data to the storage");
        messageentity;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw messageentity;
        messageentity;
        obj;
        JVM INSTR monitorexit ;
        throw messageentity;
    }

    public void addNote(List list)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase;
label0:
        {
            sqlitedatabase = base.getWritableDatabase();
            if (list == null || list.size() == 0)
            {
                return;
            }
            try
            {
                sqlitedatabase.beginTransaction();
                ContentValues contentvalues = new ContentValues();
                for (list = list.iterator(); list.hasNext(); contentvalues.clear())
                {
                    NotepadEntity notepadentity = (NotepadEntity)list.next();
                    sqlitedatabase.execSQL(REQUEST_DELETE_NOTE(notepadentity.getId()));
                    contentvalues.put("id", notepadentity.getId());
                    contentvalues.put("title", notepadentity.getTitle());
                    contentvalues.put("content", notepadentity.getContent());
                    contentvalues.put("date", Long.valueOf(notepadentity.getNoteDate()));
                    sqlitedatabase.insert("notepad_table", null, contentvalues);
                }

                break label0;
            }
            // Misplaced declaration of an exception variable
            catch (List list) { }
            finally
            {
                sqlitedatabase.endTransaction();
                closeDB(sqlitedatabase);
                throw list;
            }
        }
        throw new StorageException("error with adding Note's data to the storage");
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
    }

    public void addQrCode(String s)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("content", s);
        sqlitedatabase.insert("qr_codes_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        throw new StorageException("error with adding qr code to the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public void delNote(String s)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = base.getWritableDatabase();
        if (s == null)
        {
            return;
        }
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_NOTE(s));
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        throw new StorageException("error with deleting Note's data from the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public void deleteFOAccount(String s)
    {
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_FO_ACCOUNT(s));
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        s.printStackTrace();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public void deleteQrCode(String s)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        sqlitedatabase.delete("qr_codes_table", "id=?", new String[] {
            s
        });
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        throw new StorageException("error with adding qr code to the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public List getAllComments()
    {
        SQLiteDatabase sqlitedatabase;
        ArrayList arraylist;
        sqlitedatabase = base.getReadableDatabase();
        sqlitedatabase.beginTransaction();
        Cursor cursor = sqlitedatabase.rawQuery(REQUEST_GET_ALL_COMMENTS(), null);
        if (cursor == null)
        {
            Log.d("DbHelper", String.format("cursor = null", new Object[0]));
            return null;
        }
        boolean flag = cursor.moveToFirst();
        int i = cursor.getCount();
        arraylist = new ArrayList(i);
        if (flag && i > 0)
        {
            for (; flag; flag = cursor.moveToNext())
            {
                CommentEntity commententity = new CommentEntity();
                commententity.setImageUrl(cursor.getString(0));
                commententity.setTitle(cursor.getString(1));
                commententity.setComment(cursor.getString(2));
                commententity.setTimeStamp(cursor.getLong(3));
                arraylist.add(commententity);
            }

        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return arraylist;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw exception;
    }

    public LoyaltyV1Entity[] getAllLoyaltyItems()
    {
        HashMap hashmap = new HashMap();
        Object obj2 = lockdb;
        obj2;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_ALL_LOYALTY(), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        LoyaltyV1Entity aloyaltyv1entity[];
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        aloyaltyv1entity = (LoyaltyV1Entity[])(LoyaltyV1Entity[])hashmap.values().toArray();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj2;
        JVM INSTR monitorexit ;
        return aloyaltyv1entity;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        if (!flag || i <= 0)
        {
            break MISSING_BLOCK_LABEL_287;
        }
_L2:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_287;
        }
        Object obj;
        Object obj1;
        com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem;
        String s;
        loyaltycarditem = new com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem();
        s = cursor.getString(cursor.getColumnIndex("loyaltyItemId"));
        if (!hashmap.containsKey(s))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = (LoyaltyV1Entity)hashmap.get(s);
        obj1 = ((LoyaltyV1Entity) (obj)).getCoupons();
_L3:
        ((LoyaltyV1Entity) (obj)).setId(s);
        ((LoyaltyV1Entity) (obj)).setImageUrl(cursor.getString(cursor.getColumnIndex("loyaltyImageUrl")));
        parseLayaltyCardItem(cursor, loyaltycarditem);
        ((List) (obj1)).add(loyaltycarditem);
        flag = cursor.moveToNext();
        hashmap.put(s, obj);
        if (true) goto _L2; else goto _L1
        obj;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw obj;
        obj;
        obj2;
        JVM INSTR monitorexit ;
        throw obj;
_L1:
        obj = new LoyaltyV1Entity();
        obj1 = new ArrayList();
        ((LoyaltyV1Entity) (obj)).setCoupons(((List) (obj1)));
          goto _L3
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj2;
        JVM INSTR monitorexit ;
        LoyaltyV1Entity aloyaltyv1entity1[] = new LoyaltyV1Entity[hashmap.size()];
        hashmap.values().toArray(aloyaltyv1entity1);
        return aloyaltyv1entity1;
    }

    public String getCachedItem(String s)
    {
        Object obj;
        obj = null;
        if (StringUtils.isEmpty(s))
        {
            return null;
        }
        Object obj1 = lockdb;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_CACHED_ITEM(s), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj1;
        JVM INSTR monitorexit ;
        return null;
        s = obj;
        if (cursor.moveToFirst())
        {
            s = new String(cursor.getBlob(0));
        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj1;
        JVM INSTR monitorexit ;
        return s;
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        obj1;
        JVM INSTR monitorexit ;
        throw s;
    }

    public String getConfig(String s)
        throws StorageException
    {
        String s1;
        SQLiteDatabase sqlitedatabase;
        s1 = "";
        sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_PREFERENCE(s, AppCore.getInstance().getCachingManager().getAppCode()), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return "";
        s = s1;
        if (cursor.moveToFirst())
        {
            s = cursor.getString(1);
        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return s;
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public CouponEntity getCoupon(String s)
    {
        Object obj;
        obj = null;
        if (StringUtils.isEmpty(s))
        {
            return null;
        }
        Object obj1 = lockdb;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_COUPON(s), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj1;
        JVM INSTR monitorexit ;
        return null;
        s = obj;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_148;
        }
        s = new CouponEntity();
        s.setId(cursor.getString(0));
        s.setCheckinTarget(cursor.getInt(1));
        s.setLastCheckinTime(cursor.getLong(2));
        s.setLastRedeemedTime(cursor.getLong(3));
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj1;
        JVM INSTR monitorexit ;
        return s;
_L2:
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        obj1;
        JVM INSTR monitorexit ;
        throw s;
        s;
        continue; /* Loop/switch isn't completed */
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public AccountEntity getFOAccountInfo()
    {
        AccountEntity accountentity = new AccountEntity();
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_CACHED_ITEM("first_name"), null);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        if (cursor.moveToFirst())
        {
            accountentity.setFirstName(new String(cursor.getBlob(0)));
        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
        return accountentity;
        Exception exception1;
        exception1;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw exception1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public List getFOAccounts()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        Cursor cursor;
        obj1 = base.getReadableDatabase();
        ((SQLiteDatabase) (obj1)).beginTransaction();
        cursor = ((SQLiteDatabase) (obj1)).rawQuery(REQUEST_GET_ALL_ACCOUNTS(), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_62;
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
            break MISSING_BLOCK_LABEL_273;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_273;
        }
        AccountEntity accountentity = new AccountEntity();
        accountentity.setId(cursor.getString(0));
        accountentity.setNickName(cursor.getString(1));
        accountentity.setFirstName(cursor.getString(2));
        accountentity.setLastName(cursor.getString(3));
        accountentity.setAddress1(cursor.getString(4));
        accountentity.setAddress2(cursor.getString(5));
        accountentity.setPhone(cursor.getString(6));
        accountentity.setEmail(cursor.getString(7));
        accountentity.setZipcode(cursor.getString(8));
        accountentity.setLatitude(cursor.getString(9));
        accountentity.setLongitude(cursor.getString(10));
        arraylist.add(accountentity);
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        ((SQLiteDatabase) (obj1)).setTransactionSuccessful();
        ((SQLiteDatabase) (obj1)).endTransaction();
        closeDB(((SQLiteDatabase) (obj1)));
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        Exception exception;
        exception;
        ((SQLiteDatabase) (obj1)).endTransaction();
        closeDB(((SQLiteDatabase) (obj1)));
        throw exception;
    }

    public AccountEntity getFO_Account(String s)
    {
        Object obj = null;
        Object obj1 = lockdb;
        obj1;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_ACCOUNT(s), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj1;
        JVM INSTR monitorexit ;
        return null;
        s = obj;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_228;
        }
        s = new AccountEntity();
        s.setId(cursor.getString(0));
        s.setNickName(cursor.getString(1));
        s.setFirstName(cursor.getString(2));
        s.setLastName(cursor.getString(3));
        s.setAddress1(cursor.getString(4));
        s.setAddress2(cursor.getString(5));
        s.setPhone(cursor.getString(6));
        s.setEmail(cursor.getString(7));
        s.setZipcode(cursor.getString(8));
        s.setLatitude(cursor.getString(9));
        s.setLongitude(cursor.getString(10));
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj1;
        JVM INSTR monitorexit ;
        return s;
_L2:
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        obj1;
        JVM INSTR monitorexit ;
        throw s;
        s;
        continue; /* Loop/switch isn't completed */
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public LoyaltyV1Entity getLoyaltyItem(String s)
    {
        ArrayList arraylist = null;
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_LOYALTY_ITEM(s), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
        return null;
        int i;
        boolean flag;
        flag = cursor.moveToFirst();
        i = cursor.getCount();
        s = arraylist;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        s = arraylist;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        arraylist = new ArrayList();
        s = new LoyaltyV1Entity();
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem = new com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem();
        s.setId(cursor.getString(0));
        s.setImageUrl(cursor.getString(2));
        parseLayaltyCardItem(cursor, loyaltycarditem);
        arraylist.add(loyaltycarditem);
        flag = cursor.moveToNext();
          goto _L1
        s.setCoupons(arraylist);
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
        return s;
_L3:
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
        s;
        continue; /* Loop/switch isn't completed */
        s;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public List getMessagesIds()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        Cursor cursor;
        obj1 = base.getReadableDatabase();
        ((SQLiteDatabase) (obj1)).beginTransaction();
        cursor = ((SQLiteDatabase) (obj1)).rawQuery(REQUEST_GET_ALL_MESSAGES_IDS(), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_62;
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
            break MISSING_BLOCK_LABEL_122;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        arraylist.add(cursor.getString(0));
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        ((SQLiteDatabase) (obj1)).setTransactionSuccessful();
        ((SQLiteDatabase) (obj1)).endTransaction();
        closeDB(((SQLiteDatabase) (obj1)));
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        Exception exception;
        exception;
        ((SQLiteDatabase) (obj1)).endTransaction();
        closeDB(((SQLiteDatabase) (obj1)));
        throw exception;
    }

    public NotepadEntity getNote(String s)
    {
        Object obj;
        SQLiteDatabase sqlitedatabase;
        obj = null;
        sqlitedatabase = base.getReadableDatabase();
        Cursor cursor;
        sqlitedatabase.beginTransaction();
        cursor = sqlitedatabase.rawQuery(REQUEST_GET_NOTE(s), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        Log.d("DbHelper", String.format("cursor = null", new Object[0]));
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return null;
        s = obj;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_126;
        }
        s = new NotepadEntity();
        s.setId(cursor.getString(0));
        s.setTitle(cursor.getString(1));
        s.setContent(cursor.getString(2));
        s.setNoteDate(cursor.getLong(3));
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return s;
        s;
_L2:
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public List getPhotos()
    {
        SQLiteDatabase sqlitedatabase;
        ArrayList arraylist;
        sqlitedatabase = base.getReadableDatabase();
        sqlitedatabase.beginTransaction();
        Cursor cursor = sqlitedatabase.rawQuery(REQUEST_GET_ALL_PHOTOS(), null);
        if (cursor == null)
        {
            return null;
        }
        boolean flag = cursor.moveToFirst();
        int i = cursor.getCount();
        arraylist = new ArrayList(i);
        if (flag && i > 0)
        {
            for (; flag; flag = cursor.moveToNext())
            {
                arraylist.add(cursor.getString(0));
            }

        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return arraylist;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw exception;
    }

    public List getQrCodes()
    {
        SQLiteDatabase sqlitedatabase;
        ArrayList arraylist;
        sqlitedatabase = base.getReadableDatabase();
        sqlitedatabase.beginTransaction();
        Cursor cursor = sqlitedatabase.rawQuery(REQUEST_GET_ALL_QR_CODES(), null);
        if (cursor == null)
        {
            Log.d("DbHelper", String.format("cursor = null", new Object[0]));
            return null;
        }
        arraylist = new ArrayList();
        boolean flag = cursor.moveToFirst();
        int i = cursor.getCount();
        if (flag && i > 0)
        {
            for (; flag; flag = cursor.moveToNext())
            {
                arraylist.add(new QRCodeEntity(cursor.getString(cursor.getColumnIndex("id")), cursor.getString(cursor.getColumnIndex("content"))));
            }

        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return arraylist;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw exception;
    }

    public void parseLayaltyCardItem(Cursor cursor, com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem)
    {
        boolean flag1 = true;
        boolean flag;
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (loyaltycarditem != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        loyaltycarditem.setCouponId(cursor.getString(cursor.getColumnIndex("loyaltyCouponId")));
        loyaltycarditem.setCouponCode(cursor.getString(cursor.getColumnIndex("loyaltyCouponCode")));
        if (cursor.getInt(cursor.getColumnIndex("loyaltyCouponLocked")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        loyaltycarditem.setLocked(flag);
        if (cursor.getInt(cursor.getColumnIndex("loyaltyCouponApproved")) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        loyaltycarditem.setApproved(flag);
        if (cursor.getInt(cursor.getColumnIndex("loyaltyCouponAlreadyUnLocked")) == 1)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        loyaltycarditem.setAlreadyUnLocked(flag);
    }

    public void putConfig(String s, Object obj)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase;
        sqlitedatabase = base.getWritableDatabase();
        if (obj == null)
        {
            sqlitedatabase.endTransaction();
            closeDB(sqlitedatabase);
            return;
        }
        sqlitedatabase.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        CachingManager cachingmanager = AppCore.getInstance().getCachingManager();
        sqlitedatabase.execSQL(REQUEST_DELETE_PREFERENCE(s, cachingmanager.getAppCode()));
        contentvalues.put("key", s);
        contentvalues.put("value", obj.toString());
        contentvalues.put("app_code", cachingmanager.getAppCode());
        sqlitedatabase.insert("preference_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        throw new StorageException("error with adding preference value to the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public void removeAllLoyaltyItems()
        throws StorageException
    {
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_ALL_LOYALTY_ITEMS());
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        throw new StorageException("error with adding coupon's data to the storage");
        obj1;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw obj1;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void removePhotos(String s)
        throws StorageException
    {
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_PHOTOS(s));
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return;
        s;
        throw new StorageException("error with deleting photo from the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
    }

    public List requestAllMessages()
    {
        ArrayList arraylist = new ArrayList();
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        Cursor cursor;
        obj1 = base.getReadableDatabase();
        ((SQLiteDatabase) (obj1)).beginTransaction();
        cursor = ((SQLiteDatabase) (obj1)).rawQuery(REQUEST_GET_ALL_MESSAGES(), null);
        if (cursor != null)
        {
            break MISSING_BLOCK_LABEL_62;
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
            break MISSING_BLOCK_LABEL_313;
        }
_L1:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_313;
        }
        MessageEntity messageentity;
        messageentity = new MessageEntity();
        messageentity.setId(cursor.getString(0));
        messageentity.setType(cursor.getInt(1));
        messageentity.setUrl(cursor.getString(2));
        messageentity.setTabId(cursor.getString(3));
        messageentity.setCategoryId(cursor.getString(4));
        messageentity.setDetailId(cursor.getString(5));
        messageentity.setTimeStamp(cursor.getLong(6));
        messageentity.setPaths(cursor.getString(7));
        messageentity.setTitle(cursor.getString(8));
        Exception exception;
        if (cursor.getInt(9) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        messageentity.setGeoFencingEnabled(flag);
        if (cursor.getInt(10) == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        messageentity.setDeleted(flag);
        messageentity.setActiveTill(cursor.getLong(11));
        if (!messageentity.isDeleted())
        {
            arraylist.add(messageentity);
        }
        flag = cursor.moveToNext();
          goto _L1
        cursor.close();
        ((SQLiteDatabase) (obj1)).setTransactionSuccessful();
        ((SQLiteDatabase) (obj1)).endTransaction();
        closeDB(((SQLiteDatabase) (obj1)));
        obj;
        JVM INSTR monitorexit ;
        return arraylist;
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
        exception;
        ((SQLiteDatabase) (obj1)).endTransaction();
        closeDB(((SQLiteDatabase) (obj1)));
        throw exception;
    }

    public List requestAllNotes()
    {
        SQLiteDatabase sqlitedatabase;
        ArrayList arraylist;
        sqlitedatabase = base.getReadableDatabase();
        sqlitedatabase.beginTransaction();
        Cursor cursor = sqlitedatabase.rawQuery(REQUEST_GET_ALL_NOTES(), null);
        if (cursor == null)
        {
            Log.d("DbHelper", String.format("cursor = null", new Object[0]));
            return null;
        }
        boolean flag = cursor.moveToFirst();
        int i = cursor.getCount();
        arraylist = new ArrayList(i);
        if (flag && i > 0)
        {
            for (; flag; flag = cursor.moveToNext())
            {
                NotepadEntity notepadentity = new NotepadEntity();
                notepadentity.setId(cursor.getString(0));
                notepadentity.setTitle(cursor.getString(1));
                notepadentity.setContent(cursor.getString(2));
                notepadentity.setNoteDate(cursor.getLong(3));
                arraylist.add(notepadentity);
            }

        }
        cursor.close();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        return arraylist;
        Exception exception;
        exception;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw exception;
    }

    public void saveCacheData(String s, String s1)
        throws StorageException
    {
        if (!StringUtils.isNotEmpty(s) || !StringUtils.isNotEmpty(s1)) goto _L2; else goto _L1
_L1:
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_CACHED_ITEM(s));
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("key", s);
        contentvalues.put("value", s1.getBytes());
        sqlitedatabase.insert("cache_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
_L2:
        return;
        s;
        throw new StorageException("error with saving caching data to the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }

    public void saveLoayltyItem(LoyaltyV1Entity loyaltyv1entity)
        throws StorageException
    {
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        if (loyaltyv1entity == null)
        {
            break MISSING_BLOCK_LABEL_287;
        }
        SQLiteDatabase sqlitedatabase;
        if (loyaltyv1entity.getCoupons() == null || loyaltyv1entity.getCoupons().isEmpty())
        {
            break MISSING_BLOCK_LABEL_287;
        }
        sqlitedatabase = base.getWritableDatabase();
        ContentValues contentvalues;
        Iterator iterator;
        sqlitedatabase.beginTransaction();
        sqlitedatabase.execSQL(REQUEST_DELETE_LOYALTY_ITEM(loyaltyv1entity.getId()));
        contentvalues = new ContentValues();
        iterator = loyaltyv1entity.getCoupons().iterator();
_L1:
        com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_274;
        }
        loyaltycarditem = (com.biznessapps.loyalty.LoyaltyV1Entity.LoyaltyCardItem)iterator.next();
        contentvalues.put("loyaltyItemId", loyaltyv1entity.getId());
        contentvalues.put("loyaltyCouponId", loyaltycarditem.getCouponId());
        contentvalues.put("loyaltyImageUrl", loyaltyv1entity.getImageUrl());
        contentvalues.put("loyaltyCouponCode", loyaltycarditem.getCouponCode());
        int i;
        if (loyaltycarditem.isLocked())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put("loyaltyCouponLocked", Integer.valueOf(i));
        if (loyaltycarditem.isApproved())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put("loyaltyCouponApproved", Integer.valueOf(i));
        if (loyaltycarditem.isAlreadyUnLocked())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        contentvalues.put("loyaltyCouponAlreadyUnLocked", Integer.valueOf(i));
        sqlitedatabase.insert("loyalty_table", null, contentvalues);
        contentvalues.clear();
          goto _L1
        loyaltyv1entity;
        throw new StorageException("error with adding coupon's data to the storage");
        loyaltyv1entity;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw loyaltyv1entity;
        loyaltyv1entity;
        obj;
        JVM INSTR monitorexit ;
        throw loyaltyv1entity;
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
    }

    public void savePhoto(String s)
        throws StorageException
    {
        Object obj = lockdb;
        obj;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = base.getWritableDatabase();
        sqlitedatabase.beginTransaction();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("path", s);
        sqlitedatabase.insert("photos_table", null, contentvalues);
        contentvalues.clear();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        obj;
        JVM INSTR monitorexit ;
        return;
        s;
        throw new StorageException("error with saving emailed photo to the storage");
        s;
        sqlitedatabase.endTransaction();
        closeDB(sqlitedatabase);
        throw s;
        s;
        obj;
        JVM INSTR monitorexit ;
        throw s;
    }


}
