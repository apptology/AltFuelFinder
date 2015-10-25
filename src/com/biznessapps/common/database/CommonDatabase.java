// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.database;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import junit.framework.Assert;

public abstract class CommonDatabase
{

    protected com.biznessapps.storage.StorageAccessor.DbHelper mHelper;
    protected Object mLocker;

    protected CommonDatabase(com.biznessapps.storage.StorageAccessor.DbHelper dbhelper, Object obj)
    {
        mHelper = dbhelper;
        mLocker = obj;
    }

    public void beginTransaction()
    {
        mHelper.getWritableDatabase().beginTransaction();
    }

    public abstract void createDatabase(SQLiteDatabase sqlitedatabase);

    public abstract void dropDatabase(SQLiteDatabase sqlitedatabase);

    public boolean getBoolean(Cursor cursor, String s)
    {
        return getBoolean(cursor, s, false);
    }

    public boolean getBoolean(Cursor cursor, String s, boolean flag)
    {
label0:
        {
            int i;
            boolean flag1;
            if (cursor != null)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            Assert.assertTrue(flag1);
            i = cursor.getColumnIndex(s);
            if (i != -1)
            {
                if (cursor.getInt(cursor.getColumnIndex(s)) != 1)
                {
                    break label0;
                }
                flag = true;
            }
            return flag;
        }
        return false;
    }

    public float getFloat(Cursor cursor, String s)
    {
        return getFloat(cursor, s, 0.0F);
    }

    public float getFloat(Cursor cursor, String s, float f)
    {
        int i;
        boolean flag;
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        i = cursor.getColumnIndex(s);
        if (i != -1)
        {
            f = cursor.getFloat(cursor.getColumnIndex(s));
        }
        return f;
    }

    public int getInt(Cursor cursor, String s)
    {
        return getInt(cursor, s, 0);
    }

    public int getInt(Cursor cursor, String s, int i)
    {
        int j;
        boolean flag;
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        j = cursor.getColumnIndex(s);
        if (j != -1)
        {
            i = cursor.getInt(cursor.getColumnIndex(s));
        }
        return i;
    }

    public long getLong(Cursor cursor, String s)
    {
        return (long)getInt(cursor, s, 0);
    }

    public long getLong(Cursor cursor, String s, long l)
    {
        int i;
        boolean flag;
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        i = cursor.getColumnIndex(s);
        if (i != -1)
        {
            l = cursor.getLong(cursor.getColumnIndex(s));
        }
        return l;
    }

    public String getString(Cursor cursor, String s)
    {
        return getString(cursor, s, null);
    }

    public String getString(Cursor cursor, String s, String s1)
    {
        int i;
        boolean flag;
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        i = cursor.getColumnIndex(s);
        if (i != -1)
        {
            s1 = cursor.getString(cursor.getColumnIndex(s));
        }
        return s1;
    }

    public void stopTransaction()
    {
        SQLiteDatabase sqlitedatabase = mHelper.getWritableDatabase();
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
    }

    public abstract boolean upgradeDatabase(SQLiteDatabase sqlitedatabase, float f, float f1);
}
