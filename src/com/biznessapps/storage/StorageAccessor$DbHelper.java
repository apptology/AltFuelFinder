// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.storage;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
import com.biznessapps.common.database.CommonDatabase;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.storage:
//            StorageAccessor

public static class ory extends SQLiteOpenHelper
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
        for (Iterator iterator = StorageAccessor.access$000().iterator(); iterator.hasNext(); ((CommonDatabase)iterator.next()).createDatabase(sqlitedatabase)) { }
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
        for (Iterator iterator = StorageAccessor.access$000().iterator(); iterator.hasNext(); ((CommonDatabase)iterator.next()).upgradeDatabase(sqlitedatabase, 0.0F, 13F)) { }
        onCreate(sqlitedatabase);
    }

    ory(Context context, String s)
    {
        super(context, s, null, 13);
    }
}
