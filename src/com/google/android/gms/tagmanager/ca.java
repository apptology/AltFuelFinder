// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteCursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.text.TextUtils;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gn;
import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.http.impl.client.DefaultHttpClient;

// Referenced classes of package com.google.android.gms.tagmanager:
//            at, da, bh, au, 
//            ab, cx, ap, ak

class ca
    implements at
{
    class a
        implements da.a
    {

        final ca YL;

        public void a(ap ap1)
        {
            ca.a(YL, ap1.cP());
        }

        public void b(ap ap1)
        {
            ca.a(YL, ap1.cP());
            bh.y((new StringBuilder()).append("Permanent failure dispatching hitId: ").append(ap1.cP()).toString());
        }

        public void c(ap ap1)
        {
            long l = ap1.kD();
            if (l == 0L)
            {
                ca.a(YL, ap1.cP(), ca.a(YL).currentTimeMillis());
            } else
            if (l + 0xdbba00L < ca.a(YL).currentTimeMillis())
            {
                ca.a(YL, ap1.cP());
                bh.y((new StringBuilder()).append("Giving up on failed hitId: ").append(ap1.cP()).toString());
                return;
            }
        }

        a()
        {
            YL = ca.this;
            super();
        }
    }

    class b extends SQLiteOpenHelper
    {

        final ca YL;
        private boolean vF;
        private long vG;

        private void a(SQLiteDatabase sqlitedatabase)
        {
            Object obj;
            sqlitedatabase = sqlitedatabase.rawQuery("SELECT * FROM gtm_hits WHERE 0", null);
            obj = new HashSet();
            String as[] = sqlitedatabase.getColumnNames();
            int i = 0;
_L2:
            if (i >= as.length)
            {
                break; /* Loop/switch isn't completed */
            }
            ((Set) (obj)).add(as[i]);
            i++;
            if (true) goto _L2; else goto _L1
_L1:
            sqlitedatabase.close();
            if (!((Set) (obj)).remove("hit_id") || !((Set) (obj)).remove("hit_url") || !((Set) (obj)).remove("hit_time") || !((Set) (obj)).remove("hit_first_send_time"))
            {
                throw new SQLiteException("Database column missing");
            }
            break MISSING_BLOCK_LABEL_122;
            obj;
            sqlitedatabase.close();
            throw obj;
            if (!((Set) (obj)).isEmpty())
            {
                throw new SQLiteException("Database has extra columns");
            } else
            {
                return;
            }
        }

        private boolean a(String s1, SQLiteDatabase sqlitedatabase)
        {
            Object obj = null;
            sqlitedatabase = sqlitedatabase.query("SQLITE_MASTER", new String[] {
                "name"
            }, "name=?", new String[] {
                s1
            }, null, null, null);
            boolean flag = sqlitedatabase.moveToFirst();
            if (sqlitedatabase != null)
            {
                sqlitedatabase.close();
            }
            return flag;
            sqlitedatabase;
            sqlitedatabase = null;
_L4:
            bh.z((new StringBuilder()).append("Error querying for table ").append(s1).toString());
            if (sqlitedatabase != null)
            {
                sqlitedatabase.close();
            }
            return false;
            s1;
            sqlitedatabase = obj;
_L2:
            if (sqlitedatabase != null)
            {
                sqlitedatabase.close();
            }
            throw s1;
            s1;
            continue; /* Loop/switch isn't completed */
            s1;
            if (true) goto _L2; else goto _L1
_L1:
            SQLiteException sqliteexception;
            sqliteexception;
            if (true) goto _L4; else goto _L3
_L3:
        }

        public SQLiteDatabase getWritableDatabase()
        {
            SQLiteDatabase sqlitedatabase;
            if (vF && vG + 0x36ee80L > ca.a(YL).currentTimeMillis())
            {
                throw new SQLiteException("Database creation failed");
            }
            sqlitedatabase = null;
            vF = true;
            vG = ca.a(YL).currentTimeMillis();
            SQLiteDatabase sqlitedatabase1 = super.getWritableDatabase();
            sqlitedatabase = sqlitedatabase1;
_L2:
            SQLiteDatabase sqlitedatabase2 = sqlitedatabase;
            if (sqlitedatabase == null)
            {
                sqlitedatabase2 = super.getWritableDatabase();
            }
            vF = false;
            return sqlitedatabase2;
            SQLiteException sqliteexception;
            sqliteexception;
            ca.c(YL).getDatabasePath(ca.b(YL)).delete();
            if (true) goto _L2; else goto _L1
_L1:
        }

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            ak.G(sqlitedatabase.getPath());
        }

        public void onOpen(SQLiteDatabase sqlitedatabase)
        {
            Cursor cursor;
            if (android.os.Build.VERSION.SDK_INT >= 15)
            {
                break MISSING_BLOCK_LABEL_29;
            }
            cursor = sqlitedatabase.rawQuery("PRAGMA journal_mode=memory", null);
            cursor.moveToFirst();
            cursor.close();
            if (!a("gtm_hits", sqlitedatabase))
            {
                sqlitedatabase.execSQL(ca.kS());
                return;
            } else
            {
                a(sqlitedatabase);
                return;
            }
            sqlitedatabase;
            cursor.close();
            throw sqlitedatabase;
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
        }

        b(Context context, String s1)
        {
            YL = ca.this;
            super(context, s1, null, 1);
            vG = 0L;
        }
    }


    private static final String vx = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' INTEGER NOT NULL, '%s' TEXT NOT NULL,'%s' INTEGER NOT NULL);", new Object[] {
        "gtm_hits", "hit_id", "hit_time", "hit_url", "hit_first_send_time"
    });
    private gl Wv;
    private final b YI;
    private volatile ab YJ;
    private final au YK;
    private final Context mContext;
    private final String vA;
    private long vC;
    private final int vD;

    ca(au au1, Context context)
    {
        this(au1, context, "gtm_urls.db", 2000);
    }

    ca(au au1, Context context, String s1, int i)
    {
        mContext = context.getApplicationContext();
        vA = s1;
        YK = au1;
        Wv = gn.ft();
        YI = new b(mContext, vA);
        YJ = new da(new DefaultHttpClient(), mContext, new a());
        vC = 0L;
        vD = i;
    }

    private SQLiteDatabase L(String s1)
    {
        SQLiteDatabase sqlitedatabase;
        try
        {
            sqlitedatabase = YI.getWritableDatabase();
        }
        catch (SQLiteException sqliteexception)
        {
            bh.z(s1);
            return null;
        }
        return sqlitedatabase;
    }

    static gl a(ca ca1)
    {
        return ca1.Wv;
    }

    static void a(ca ca1, long l)
    {
        ca1.v(l);
    }

    static void a(ca ca1, long l, long l1)
    {
        ca1.c(l, l1);
    }

    static String b(ca ca1)
    {
        return ca1.vA;
    }

    static Context c(ca ca1)
    {
        return ca1.mContext;
    }

    private void c(long l, long l1)
    {
        SQLiteDatabase sqlitedatabase = L("Error opening database for getNumStoredHits.");
        if (sqlitedatabase == null)
        {
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("hit_first_send_time", Long.valueOf(l1));
        try
        {
            sqlitedatabase.update("gtm_hits", contentvalues, "hit_id=?", new String[] {
                String.valueOf(l)
            });
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            bh.z((new StringBuilder()).append("Error setting HIT_FIRST_DISPATCH_TIME for hitId: ").append(l).toString());
        }
        v(l);
    }

    private void cV()
    {
        int i = (cX() - vD) + 1;
        if (i > 0)
        {
            List list = s(i);
            bh.y((new StringBuilder()).append("Store full, deleting ").append(list.size()).append(" hits to make room.").toString());
            a((String[])list.toArray(new String[0]));
        }
    }

    private void f(long l, String s1)
    {
        SQLiteDatabase sqlitedatabase = L("Error opening database for putHit");
        if (sqlitedatabase == null)
        {
            return;
        }
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("hit_time", Long.valueOf(l));
        contentvalues.put("hit_url", s1);
        contentvalues.put("hit_first_send_time", Integer.valueOf(0));
        try
        {
            sqlitedatabase.insert("gtm_hits", null, contentvalues);
            YK.r(false);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            bh.z("Error storing hit");
        }
    }

    static String kS()
    {
        return vx;
    }

    private void v(long l)
    {
        a(new String[] {
            String.valueOf(l)
        });
    }

    void a(String as[])
    {
        boolean flag = true;
        if (as != null && as.length != 0) goto _L2; else goto _L1
_L1:
        SQLiteDatabase sqlitedatabase;
        return;
_L2:
        if ((sqlitedatabase = L("Error opening database for deleteHits.")) == null) goto _L1; else goto _L3
_L3:
        String s1 = String.format("HIT_ID in (%s)", new Object[] {
            TextUtils.join(",", Collections.nCopies(as.length, "?"))
        });
        sqlitedatabase.delete("gtm_hits", s1, as);
        as = YK;
        if (cX() != 0)
        {
            flag = false;
        }
        as.r(flag);
        return;
        as;
        bh.z("Error deleting hits");
        return;
    }

    public void bW()
    {
        bh.y("GTM Dispatch running...");
        if (YJ.ch())
        {
            List list = t(40);
            if (list.isEmpty())
            {
                bh.y("...nothing to dispatch");
                YK.r(true);
                return;
            }
            YJ.d(list);
            if (kR() > 0)
            {
                cx.lG().bW();
                return;
            }
        }
    }

    int cW()
    {
        boolean flag = true;
        long l = Wv.currentTimeMillis();
        if (l > vC + 0x5265c00L)
        {
            vC = l;
            Object obj = L("Error opening database for deleteStaleHits.");
            if (obj != null)
            {
                int i = ((SQLiteDatabase) (obj)).delete("gtm_hits", "HIT_TIME < ?", new String[] {
                    Long.toString(Wv.currentTimeMillis() - 0x9a7ec800L)
                });
                obj = YK;
                if (cX() != 0)
                {
                    flag = false;
                }
                ((au) (obj)).r(flag);
                return i;
            }
        }
        return 0;
    }

    int cX()
    {
        Cursor cursor;
        Object obj;
        Object obj1;
        int i;
        int j;
        obj = null;
        cursor = null;
        i = 0;
        j = 0;
        obj1 = L("Error opening database for getNumStoredHits.");
        if (obj1 != null) goto _L2; else goto _L1
_L1:
        return j;
_L2:
        obj1 = ((SQLiteDatabase) (obj1)).rawQuery("SELECT COUNT(*) from gtm_hits", null);
        cursor = ((Cursor) (obj1));
        obj = obj1;
        if (!((Cursor) (obj1)).moveToFirst())
        {
            break MISSING_BLOCK_LABEL_64;
        }
        cursor = ((Cursor) (obj1));
        obj = obj1;
        long l = ((Cursor) (obj1)).getLong(0);
        i = (int)l;
        j = i;
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
            return i;
        }
        if (true) goto _L1; else goto _L3
_L3:
        obj;
        obj = cursor;
        bh.z("Error getting numStoredHits");
        if (cursor == null) goto _L1; else goto _L4
_L4:
        cursor.close();
        return 0;
        Exception exception;
        exception;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw exception;
    }

    public void e(long l, String s1)
    {
        cW();
        cV();
        f(l, s1);
    }

    int kR()
    {
        Object obj;
        Object obj1;
        obj1 = null;
        obj = L("Error opening database for getNumStoredHits.");
        if (obj == null)
        {
            return 0;
        }
        obj = ((SQLiteDatabase) (obj)).query("gtm_hits", new String[] {
            "hit_id", "hit_first_send_time"
        }, "hit_first_send_time=0", null, null, null, null);
        int j = ((Cursor) (obj)).getCount();
        int i;
        i = j;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
            i = j;
        }
_L1:
        return i;
        obj;
        obj = null;
_L4:
        bh.z("Error getting num untried hits");
        SQLiteException sqliteexception;
        Exception exception;
        if (obj != null)
        {
            ((Cursor) (obj)).close();
            i = 0;
        } else
        {
            i = 0;
        }
          goto _L1
        obj;
_L3:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
        throw obj;
        exception;
        obj1 = obj;
        obj = exception;
        continue; /* Loop/switch isn't completed */
        exception;
        obj1 = obj;
        obj = exception;
        if (true) goto _L3; else goto _L2
_L2:
        sqliteexception;
          goto _L4
    }

    List s(int i)
    {
        Object obj;
        ArrayList arraylist;
        arraylist = new ArrayList();
        if (i <= 0)
        {
            bh.z("Invalid maxHits specified. Skipping");
            return arraylist;
        }
        obj = L("Error opening database for peekHitIds.");
        if (obj == null)
        {
            return arraylist;
        }
        Object obj1;
        obj1 = String.format("%s ASC", new Object[] {
            "hit_id"
        });
        String s1 = Integer.toString(i);
        obj1 = ((SQLiteDatabase) (obj)).query("gtm_hits", new String[] {
            "hit_id"
        }, null, null, null, null, ((String) (obj1)), s1);
        obj = obj1;
        if (!((Cursor) (obj1)).moveToFirst()) goto _L2; else goto _L1
_L1:
        obj = obj1;
        arraylist.add(String.valueOf(((Cursor) (obj1)).getLong(0)));
        obj = obj1;
        boolean flag = ((Cursor) (obj1)).moveToNext();
        if (flag) goto _L1; else goto _L2
_L2:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
_L3:
        return arraylist;
        SQLiteException sqliteexception;
        sqliteexception;
        obj1 = null;
_L6:
        obj = obj1;
        bh.z((new StringBuilder()).append("Error in peekHits fetching hitIds: ").append(sqliteexception.getMessage()).toString());
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
          goto _L3
        Exception exception;
        exception;
        obj = null;
_L5:
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        throw exception;
        exception;
        if (true) goto _L5; else goto _L4
_L4:
        sqliteexception;
          goto _L6
    }

    public List t(int i)
    {
        Object obj1;
        Object obj4;
        obj1 = new ArrayList();
        obj4 = L("Error opening database for peekHits");
        if (obj4 != null) goto _L2; else goto _L1
_L1:
        Object obj2 = obj1;
_L8:
        return ((List) (obj2));
_L2:
        Object obj = null;
        obj2 = String.format("%s ASC", new Object[] {
            "hit_id"
        });
        String s1 = Integer.toString(i);
        obj2 = ((SQLiteDatabase) (obj4)).query("gtm_hits", new String[] {
            "hit_id", "hit_time", "hit_first_send_time"
        }, null, null, null, null, ((String) (obj2)), s1);
        obj = obj2;
        Object obj3 = new ArrayList();
        boolean flag;
        if (((Cursor) (obj)).moveToFirst())
        {
            do
            {
                ((List) (obj3)).add(new ap(((Cursor) (obj)).getLong(0), ((Cursor) (obj)).getLong(1), ((Cursor) (obj)).getLong(2)));
                flag = ((Cursor) (obj)).moveToNext();
            } while (flag);
        }
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        obj1 = obj;
        obj2 = String.format("%s ASC", new Object[] {
            "hit_id"
        });
        obj1 = obj;
        String s2 = Integer.toString(i);
        obj1 = obj;
        obj2 = ((SQLiteDatabase) (obj4)).query("gtm_hits", new String[] {
            "hit_id", "hit_url"
        }, null, null, null, null, ((String) (obj2)), s2);
        if (!((Cursor) (obj2)).moveToFirst()) goto _L4; else goto _L3
_L3:
        i = 0;
_L18:
        if (((SQLiteCursor)obj2).getWindow().getNumRows() <= 0) goto _L6; else goto _L5
_L5:
        ((ap)((List) (obj3)).get(i)).K(((Cursor) (obj2)).getString(1));
_L9:
        boolean flag1 = ((Cursor) (obj2)).moveToNext();
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_619;
        }
_L4:
        if (obj2 != null)
        {
            ((Cursor) (obj2)).close();
        }
        return ((List) (obj3));
        obj2;
        obj3 = null;
        obj = obj1;
        obj1 = obj3;
_L17:
        bh.z((new StringBuilder()).append("Error in peekHits fetching hitIds: ").append(((SQLiteException) (obj2)).getMessage()).toString());
        obj2 = obj;
        if (obj1 == null) goto _L8; else goto _L7
_L7:
        ((Cursor) (obj1)).close();
        return ((List) (obj));
        obj2;
        obj1 = obj;
        obj = obj2;
_L16:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
        throw obj;
_L6:
        bh.z(String.format("HitString for hitId %d too large.  Hit will be deleted.", new Object[] {
            Long.valueOf(((ap)((List) (obj3)).get(i)).cP())
        }));
          goto _L9
        obj1;
        obj = obj2;
        obj2 = obj1;
_L15:
        obj1 = obj;
        bh.z((new StringBuilder()).append("Error in peekHits fetching hit url: ").append(((SQLiteException) (obj2)).getMessage()).toString());
        obj1 = obj;
        obj2 = new ArrayList();
        i = 0;
        obj1 = obj;
        obj3 = ((List) (obj3)).iterator();
_L11:
        obj1 = obj;
        if (!((Iterator) (obj3)).hasNext())
        {
            break MISSING_BLOCK_LABEL_523;
        }
        obj1 = obj;
        obj4 = (ap)((Iterator) (obj3)).next();
        obj1 = obj;
        flag1 = TextUtils.isEmpty(((ap) (obj4)).kE());
        int j;
        j = i;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_539;
        }
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_536;
        }
        if (obj != null)
        {
            ((Cursor) (obj)).close();
        }
        return ((List) (obj2));
        j = 1;
        obj1 = obj;
        ((List) (obj2)).add(obj4);
        i = j;
        if (true) goto _L11; else goto _L10
_L10:
        obj;
_L13:
        if (obj1 != null)
        {
            ((Cursor) (obj1)).close();
        }
        throw obj;
        obj;
        obj1 = obj2;
        if (true) goto _L13; else goto _L12
_L12:
        obj2;
        if (true) goto _L15; else goto _L14
_L14:
        obj2;
        obj1 = obj;
        obj = obj2;
          goto _L16
        obj;
          goto _L16
        obj2;
        obj3 = obj;
        obj = obj1;
        obj1 = obj3;
          goto _L17
        obj2;
        obj1 = obj;
        obj = obj3;
          goto _L17
        i++;
          goto _L18
    }

}
