// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.util.Base64;
import android.view.View;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.google.android.gms.analytics.GoogleAnalytics;
import com.google.android.gms.analytics.Tracker;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.net.URL;
import java.security.MessageDigest;
import java.text.ParseException;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Currency;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.utils:
//            ImageScaleType, StringUtils

public class CommonUtils
{

    private static final int BUFFER_SIZE = 50000;
    public static final long DATE_MILISECONDS = 0x5265c00L;
    public static final long HOUR_MILISECONDS = 0x36ee80L;
    public static final float METER_TO_YARD = 1.093613F;
    public static final long MIN_MILISECONDS = 60000L;
    public static final long SECOND_MILISECONDS = 1000L;
    public static final long WEEK_MILISECONDS = 0x240c8400L;

    public CommonUtils()
    {
    }

    public static String compressString(String s)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        GZIPOutputStream gzipoutputstream = new GZIPOutputStream(bytearrayoutputstream);
        gzipoutputstream.write(s.getBytes());
        gzipoutputstream.close();
        return Base64.encodeToString(bytearrayoutputstream.toByteArray(), 0);
    }

    public static byte[] convertFileToBytes(File file)
    {
        byte abyte0[] = null;
        if (file != null)
        {
            try
            {
                file = new FileInputStream(file);
                abyte0 = new ByteArrayOutputStream();
                copy(file, abyte0);
                abyte0 = abyte0.toByteArray();
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                throw new IllegalArgumentException(file);
            }
            // Misplaced declaration of an exception variable
            catch (File file)
            {
                return null;
            }
        }
        return abyte0;
    }

    public static byte[] convertImageToBytes(Bitmap bitmap)
    {
        byte abyte0[] = null;
        if (bitmap != null)
        {
            abyte0 = new ByteArrayOutputStream();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, abyte0);
            bitmap.recycle();
            abyte0 = abyte0.toByteArray();
        }
        return abyte0;
    }

    public static void copy(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[50000];
        do
        {
            int i = inputstream.read(abyte0);
            if (i > 0)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                outputstream.close();
                return;
            }
        } while (true);
    }

    public static Uri createEmptyImageFile(Context context)
    {
        try
        {
            String s = (new StringBuilder()).append("jpeg_").append(System.currentTimeMillis()).toString();
            if ("mounted".equals(Environment.getExternalStorageState()))
            {
                context = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
            } else
            {
                context = context.getCacheDir();
            }
            if (!context.exists())
            {
                context.mkdirs();
            }
            return Uri.fromFile(new File((new StringBuilder()).append(context).append("/").append(s).append(".jpg").toString()));
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
        return null;
    }

    public static String createImageFile(Bitmap bitmap, String s)
    {
        Object obj = (new SimpleDateFormat("yyyyMMdd_HHmmss")).format(new Date());
        Object obj1 = (new StringBuilder()).append("JPEG_").append(((String) (obj))).toString();
        obj = obj1;
        if (s != null)
        {
            obj = (new StringBuilder()).append(((String) (obj1))).append("_").append(s).toString();
        }
        obj = (new StringBuilder()).append(((String) (obj))).append(".png").toString();
        obj1 = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        s = (new StringBuilder()).append(((File) (obj1)).getAbsolutePath()).append("/").append(((String) (obj))).toString();
        try
        {
            obj = new File(((File) (obj1)), ((String) (obj)));
            ((File) (obj)).createNewFile();
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, new FileOutputStream(((File) (obj))));
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            return null;
        }
        return s;
    }

    public static void customizeFooterNavigationBar(View view, UiSettings uisettings)
    {
        if (0xff000000 != uisettings.getNavigationBarColor())
        {
            view.setBackgroundColor(uisettings.getNavigationBarColor());
        }
    }

    public static int getApiLevel()
    {
        return android.os.Build.VERSION.SDK_INT;
    }

    public static android.graphics.BitmapFactory.Options getBitmapInfo(String s)
    {
        android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.outWidth = 0;
        options.outHeight = 0;
        options.inSampleSize = 1;
        BitmapFactory.decodeFile(s, options);
        return options;
    }

    public static StateListDrawable getButtonDrawable(Drawable drawable, Drawable drawable1)
    {
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            -0x10100a7, -0x10100a1
        }, drawable1);
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, drawable);
        statelistdrawable.addState(new int[] {
            0x10100a1
        }, drawable);
        return statelistdrawable;
    }

    public static BitmapDrawable getColoredDrawable(Resources resources, int i, int j)
    {
        resources = BitmapFactory.decodeResource(resources, j);
        Object obj = resources.copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        for (j = 0; j < ((Bitmap) (obj)).getWidth(); j++)
        {
            for (int k = 0; k < ((Bitmap) (obj)).getHeight(); k++)
            {
                if (((Bitmap) (obj)).getPixel(j, k) != 0)
                {
                    ((Bitmap) (obj)).setPixel(j, k, i);
                }
            }

        }

        obj = new BitmapDrawable(((Bitmap) (obj)));
        resources.recycle();
        return ((BitmapDrawable) (obj));
    }

    public static Drawable getColoredMapPin(Context context, int i, int j, int k)
    {
        Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), i);
        float f = context.getResources().getDimensionPixelSize(j);
        float f1 = (int)(((float)bitmap.getHeight() * f) / (float)bitmap.getWidth());
        context = Bitmap.createScaledBitmap(bitmap, (int)f, (int)f1, false);
        int l = context.getPixel(context.getWidth() / 2, context.getHeight() / 2);
        i = Color.red(l);
        j = Color.green(l);
        l = Color.blue(l);
        int j1 = Color.red(k);
        int l1 = Color.green(k);
        k = Color.blue(k);
        f = (float)j1 / (float)i;
        f1 = (float)l1 / (float)j;
        float f2 = (float)k / (float)l;
        for (i = 0; i < context.getWidth(); i++)
        {
            for (j = 0; j < context.getHeight(); j++)
            {
                int j2 = context.getPixel(i, j);
                int i1 = (int)((float)Color.red(j2) * f);
                int k1 = (int)((float)Color.green(j2) * f1);
                int i2 = (int)((float)Color.blue(j2) * f2);
                k = i1;
                if (i1 > 255)
                {
                    k = 255;
                }
                i1 = k1;
                if (k1 > 255)
                {
                    i1 = 255;
                }
                k1 = i2;
                if (i2 > 255)
                {
                    k1 = 255;
                }
                context.setPixel(i, j, Color.argb(Color.alpha(j2), k, i1, k1));
            }

        }

        return new BitmapDrawable(context);
    }

    public static LayerDrawable getCompositeDrawable(Resources resources, int i, int j)
    {
        resources = BitmapFactory.decodeResource(resources, j);
        Bitmap bitmap = resources.copy(android.graphics.Bitmap.Config.ARGB_8888, true);
        for (j = 0; j < bitmap.getWidth(); j++)
        {
            for (int k = 0; k < bitmap.getHeight(); k++)
            {
                if (bitmap.getPixel(j, k) != 0)
                {
                    bitmap.setPixel(j, k, i);
                }
            }

        }

        return new LayerDrawable(new Drawable[] {
            new BitmapDrawable(bitmap), new BitmapDrawable(resources)
        });
    }

    public static String getCurrencySymbol()
    {
        return Currency.getInstance(Locale.getDefault()).getSymbol();
    }

    public static Date getDate(String s)
    {
        return getDate(s, "dd/MM/yyyy");
    }

    public static Date getDate(String s, String s1)
    {
        s1 = new SimpleDateFormat(s1, Locale.getDefault());
        try
        {
            s = s1.parse(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static String getDateFromEnDate(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("dd MMM yyyy", Locale.ENGLISH);
        return (new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH)).format(simpledateformat.parse(s, new ParsePosition(0)));
    }

    public static String getDateString(long l, String s)
    {
        return (new SimpleDateFormat(s, Locale.getDefault())).format(new Date(l));
    }

    public static long getDateTimeMilis()
    {
        return getDateTimeMilis((new Date()).getTime());
    }

    public static long getDateTimeMilis(long l)
    {
        Date date = new Date();
        date.setTime(l);
        date.setHours(0);
        date.setMinutes(0);
        date.setSeconds(0);
        return (date.getTime() / 1000L) * 1000L;
    }

    public static long getDateTimeMilis(long l, int i)
    {
        Date date = new Date(l);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(date.getYear() + 1900, date.getMonth(), i + 1, 0, 0, 0);
        gregoriancalendar.set(14, 0);
        return gregoriancalendar.getTimeInMillis();
    }

    public static long getDayTimeMilis(long l, int i)
    {
        Date date = new Date(l);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(date.getYear() + 1900, date.getMonth(), date.getDate(), 0, 0, 0);
        gregoriancalendar.set(14, 0);
        gregoriancalendar.getTimeInMillis();
        gregoriancalendar.set(7, gregoriancalendar.getFirstDayOfWeek() + i);
        return gregoriancalendar.getTimeInMillis();
    }

    public static String getEnStringDate(String s)
    {
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.ENGLISH);
        SimpleDateFormat simpledateformat1 = new SimpleDateFormat("dd MMM yyyy", Locale.ENGLISH);
        try
        {
            s = simpledateformat1.format(simpledateformat.parse(s));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            return null;
        }
        return s;
    }

    public static String getImagePath(Context context, Uri uri)
    {
        String as[] = new String[1];
        as[0] = "_data";
        context = context.getContentResolver().query(uri, as, null, null, null);
        context.moveToFirst();
        uri = context.getString(context.getColumnIndex(as[0]));
        context.close();
        return uri;
    }

    public static StateListDrawable getListItemDrawable(int i, int j)
    {
        StateListDrawable statelistdrawable = new StateListDrawable();
        ColorDrawable colordrawable = new ColorDrawable(j);
        ColorDrawable colordrawable1 = new ColorDrawable(i);
        statelistdrawable.addState(new int[] {
            -0x10100a7, -0x101009c
        }, colordrawable);
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, colordrawable1);
        statelistdrawable.addState(new int[] {
            0x101009c
        }, colordrawable1);
        return statelistdrawable;
    }

    public static StateListDrawable getListItemDrawable(UiSettings uisettings, int i)
    {
        return getListItemDrawable(uisettings.getButtonBgColor(), i);
    }

    public static String getMD5Hash(String s)
    {
        MessageDigest messagedigest = MessageDigest.getInstance("MD5");
        messagedigest.reset();
        messagedigest.update(s.getBytes());
        s = (new BigInteger(1, messagedigest.digest())).toString(16);
_L2:
        String s1 = s;
        if (s.length() >= 32)
        {
            break; /* Loop/switch isn't completed */
        }
        s = (new StringBuilder()).append("0").append(s).toString();
        if (true) goto _L2; else goto _L1
        s;
        s1 = null;
_L1:
        return s1;
    }

    public static long getMonthTimeMilis(long l)
    {
        return getMonthTimeMilis(l, (new Date(l)).getMonth());
    }

    public static long getMonthTimeMilis(long l, int i)
    {
        Date date = new Date(l);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(date.getYear() + 1900, i, 1, 0, 0, 0);
        gregoriancalendar.set(14, 0);
        return gregoriancalendar.getTimeInMillis();
    }

    public static String getPath(Uri uri, Activity activity)
    {
        Object obj = null;
        activity = activity.managedQuery(uri, new String[] {
            "_data"
        }, null, null, null);
        uri = obj;
        if (activity != null)
        {
            int i = activity.getColumnIndexOrThrow("_data");
            activity.moveToFirst();
            uri = activity.getString(i);
        }
        return uri;
    }

    public static Bitmap getResizeBitmap(Bitmap bitmap, int i, int j, int k, ImageScaleType imagescaletype, boolean flag)
    {
        return getResizeBitmap(bitmap, i, j, k, imagescaletype, flag, false);
    }

    public static Bitmap getResizeBitmap(Bitmap bitmap, int i, int j, int k, ImageScaleType imagescaletype, boolean flag, boolean flag1)
    {
        float f;
        float f1;
        float f2;
        Bitmap bitmap1;
        int l;
        bitmap1 = rotate(bitmap, k, false);
        k = bitmap1.getWidth();
        l = bitmap1.getHeight();
        if (k == i && l == j)
        {
            return bitmap1;
        }
        f = (float)i / (float)k;
        f1 = (float)j / (float)l;
        f2 = 1.0F;
        static class _cls1
        {

            static final int $SwitchMap$com$biznessapps$utils$ImageScaleType[];

            static 
            {
                $SwitchMap$com$biznessapps$utils$ImageScaleType = new int[ImageScaleType.values().length];
                try
                {
                    $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_X.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_Y.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_XY.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$biznessapps$utils$ImageScaleType[ImageScaleType.SCALE_FIT_PROPER.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.biznessapps.utils.ImageScaleType[imagescaletype.ordinal()];
        JVM INSTR tableswitch 1 4: default 92
    //                   1 191
    //                   2 194
    //                   3 201
    //                   4 228;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_228;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        Assert.assertTrue(false);
        f = f2;
_L6:
        f1 = f * (float)k;
        f *= l;
        if (!flag1)
        {
            f2 = ((float)i - f1) / 2.0F;
            float f3 = ((float)j - f) / 2.0F;
            imagescaletype = new RectF(f2, f3, f2 + f1, f3 + f);
            bitmap = Bitmap.createBitmap(i, j, bitmap1.getConfig());
        } else
        {
            bitmap = Bitmap.createBitmap((int)f1, (int)f, bitmap1.getConfig());
            imagescaletype = new RectF(0.0F, 0.0F, f1, f);
        }
        (new Canvas(bitmap)).drawBitmap(bitmap1, null, imagescaletype, null);
        return bitmap;
_L3:
        f = f1;
          goto _L6
_L4:
        if ("Not Implemented" == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        f = f2;
          goto _L6
        if (flag)
        {
            f = Math.max(f, f1);
        } else
        {
            f = Math.min(f, f1);
        }
          goto _L6
    }

    public static Bitmap getScaledPhoto(Context context, Uri uri, Intent intent)
    {
        Object obj;
        Object obj1;
        obj = null;
        obj1 = null;
        if (uri == null) goto _L2; else goto _L1
_L1:
        context = safeGetBitmapDrawable(context, uri.getPath(), 512, 512, 0, ImageScaleType.SCALE_FIT_PROPER, false).getBitmap();
_L4:
        return context;
_L2:
        context = obj1;
        if (intent == null) goto _L4; else goto _L3
_L3:
        context = obj1;
        if (intent.getExtras() == null) goto _L4; else goto _L5
_L5:
        intent = (Bitmap)intent.getExtras().get("data");
        context = obj1;
        if (intent == null) goto _L4; else goto _L6
_L6:
        int i;
        int j;
        j = intent.getWidth();
        i = intent.getHeight();
        float f = (float)j / (float)512;
        j = (int)((float)j / f);
        i = (int)((float)i / f);
        if (intent == null) goto _L8; else goto _L7
_L7:
        context = Bitmap.createScaledBitmap(intent, j, i, false);
_L10:
        intent.recycle();
        (new File(uri.toString())).delete();
        return context;
_L8:
        context = obj;
        if (uri != null)
        {
            context = obj;
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static String getStringDate(long l)
    {
        Date date = new Date(Long.parseLong((new StringBuilder()).append(l).append("000").toString()));
        return (new SimpleDateFormat("dd MMM yyyy", Locale.ENGLISH)).format(date);
    }

    public static long getTimeMilis()
    {
        return System.currentTimeMillis();
    }

    public static long getTimeSecs()
    {
        return getTimeMilis() / 1000L;
    }

    public static String getUTCDateString(long l, String s)
    {
        s = new SimpleDateFormat(s, Locale.getDefault());
        s.setTimeZone(TimeZone.getTimeZone("UTC"));
        return s.format(new Date(l));
    }

    public static long getUTCTimeMilis()
    {
        return Calendar.getInstance(TimeZone.getTimeZone("UTC+8")).getTimeInMillis();
    }

    public static List getUrlsFromPlsStream(String s)
    {
        ArrayList arraylist = new ArrayList();
        String as[];
        s = (new URL(s)).openStream();
        byte abyte0[] = new byte[10240];
        s.read(abyte0, 0, 10240);
        as = (new String(abyte0)).split("\n");
        if (as == null) goto _L2; else goto _L1
_L1:
        if (as.length <= 0) goto _L2; else goto _L3
_L3:
        int j = as.length;
        int i = 0;
_L4:
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        s = as[i].split("=");
        if (s.length != 2 || !"file1".equals(s[0].toLowerCase()))
        {
            break MISSING_BLOCK_LABEL_147;
        }
        String s1;
        s1 = s[1];
        s = s1;
        if (s1.charAt(s1.length() - 1) == '\r')
        {
            s = s1.substring(0, s1.length() - 2);
        }
        arraylist.add(s);
        i++;
        if (true) goto _L4; else goto _L2
        s;
        s.printStackTrace();
_L2:
        return arraylist;
    }

    public static long getWeekTimeMilis()
    {
        return getWeekTimeMilis((new Date()).getTime());
    }

    public static long getWeekTimeMilis(long l)
    {
        Date date = new Date(l);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(date.getYear() + 1900, date.getMonth(), date.getDate(), 0, 0, 0);
        gregoriancalendar.set(14, 0);
        gregoriancalendar.getTimeInMillis();
        gregoriancalendar.set(7, gregoriancalendar.getFirstDayOfWeek());
        return gregoriancalendar.getTimeInMillis();
    }

    public static long getWeekTimeMilis(long l, int i)
    {
        Date date = new Date(l);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(date.getYear() + 1900, date.getMonth(), date.getDate(), 0, 0, 0);
        gregoriancalendar.set(14, 0);
        gregoriancalendar.getTimeInMillis();
        gregoriancalendar.set(7, gregoriancalendar.getFirstDayOfWeek());
        gregoriancalendar.getTimeInMillis();
        gregoriancalendar.set(4, i);
        return gregoriancalendar.getTimeInMillis();
    }

    public static float getYardsFromMeters(float f)
    {
        return f * 1.093613F;
    }

    public static long getYearTimeMilis(long l)
    {
        return getYearTimeMilis(l, (new Date(l)).getYear() + 1900);
    }

    public static long getYearTimeMilis(long l, int i)
    {
        new Date(l);
        GregorianCalendar gregoriancalendar = new GregorianCalendar();
        gregoriancalendar.set(i, 0, 1, 0, 0, 0);
        gregoriancalendar.set(14, 0);
        return gregoriancalendar.getTimeInMillis();
    }

    public static Bitmap loadBitmapFromView(View view)
    {
        Bitmap bitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        view.layout(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        view.draw(canvas);
        return bitmap;
    }

    public static Bitmap makeThumb(String s, int i, int j, int k, ImageScaleType imagescaletype, boolean flag)
    {
        return makeThumb(s, i, j, k, imagescaletype, flag, false);
    }

    public static Bitmap makeThumb(String s, int i, int j, int k, ImageScaleType imagescaletype, boolean flag, boolean flag1)
    {
        String s1;
        Object obj;
        obj = null;
        s1 = obj;
        if (!(new File(s)).exists()) goto _L2; else goto _L1
_L1:
        s1 = obj;
        android.graphics.BitmapFactory.Options options = getBitmapInfo(s);
        int i1;
        i1 = 0;
        s1 = obj;
        int j1 = (new ExifInterface(s)).getAttributeInt("Orientation", -1);
        int l = i1;
        if (j1 == -1) goto _L4; else goto _L3
_L3:
        l = i1;
        j1;
        JVM INSTR tableswitch 3 8: default 326
    //                   3 348
    //                   4 108
    //                   5 108
    //                   6 341
    //                   7 108
    //                   8 356;
           goto _L5 _L6 _L4 _L4 _L7 _L4 _L8
_L4:
        s1 = obj;
        if (options.outWidth <= 0) goto _L10; else goto _L9
_L9:
        s1 = obj;
        if (options.outHeight <= 0) goto _L10; else goto _L11
_L11:
        if (i != -1)
        {
            i1 = j;
            if (j != -1)
            {
                break MISSING_BLOCK_LABEL_166;
            }
        }
        s1 = obj;
        i = options.outWidth;
        s1 = obj;
        i1 = options.outHeight;
        s1 = obj;
        int k1 = Math.max(Math.min(((options.outWidth + i) - 1) / i, ((options.outHeight + i1) - 1) / i1), 1);
        j = k1;
        if (k1 <= 1) goto _L13; else goto _L12
_L12:
        j = 1;
        j1 = 0;
_L17:
        if (j1 >= k1) goto _L13; else goto _L14
_L14:
        s1 = obj;
        int l1 = (int)Math.pow(2D, j1);
        if (l1 <= k1)
        {
            break MISSING_BLOCK_LABEL_364;
        }
_L13:
        s1 = obj;
        options.inSampleSize = j;
        s1 = obj;
        options.inJustDecodeBounds = false;
        s1 = obj;
        s = BitmapFactory.decodeFile(s, options);
        j = i1;
_L16:
        s1 = s;
        s = getResizeBitmap(s, i, j, k + l, imagescaletype, flag, flag1);
        s1 = s;
        break; /* Loop/switch isn't completed */
_L10:
        s1 = obj;
        try
        {
            s = BitmapFactory.decodeFile(s);
            continue; /* Loop/switch isn't completed */
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        break; /* Loop/switch isn't completed */
        if (true) goto _L16; else goto _L15
_L5:
        l = i1;
          goto _L4
_L15:
        return s1;
_L2:
        return null;
_L7:
        l = 90;
          goto _L4
_L6:
        l = 180;
          goto _L4
_L8:
        l = 270;
          goto _L4
        j = l1;
        j1++;
          goto _L17
    }

    public static void overrideColorWithTransparency(int i, Drawable drawable, int j)
    {
        drawable.setColorFilter(i, android.graphics.PorterDuff.Mode.MULTIPLY);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            drawable.setAlpha(j);
        }
    }

    public static void overrideImageColor(int i, Drawable drawable)
    {
        drawable.mutate();
        drawable.setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
    }

    public static void overrideMediumButtonColor(int i, Drawable drawable)
    {
        drawable.setColorFilter(i, android.graphics.PorterDuff.Mode.MULTIPLY);
    }

    public static Bitmap rotate(Bitmap bitmap, int i, boolean flag)
    {
        Object obj = bitmap;
        if (i == 0)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        obj = bitmap;
        if (bitmap == null)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        obj = new Matrix();
        ((Matrix) (obj)).setRotate(i, (float)bitmap.getWidth() / 2.0F, (float)bitmap.getHeight() / 2.0F);
        Bitmap bitmap1;
        try
        {
            bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), ((Matrix) (obj)), true);
        }
        catch (OutOfMemoryError outofmemoryerror)
        {
            return bitmap;
        }
        obj = bitmap;
        if (bitmap == bitmap1)
        {
            break MISSING_BLOCK_LABEL_77;
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        bitmap.recycle();
        obj = bitmap1;
        return ((Bitmap) (obj));
    }

    public static BitmapDrawable safeGetBitmapDrawable(Context context, String s, int i, int j, int k, ImageScaleType imagescaletype, boolean flag)
    {
        Object obj;
        android.graphics.BitmapFactory.Options options;
        int l;
        int i1;
        boolean flag1;
        if (s != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        Assert.assertTrue(flag1);
        obj = null;
        options = getBitmapInfo(s);
        i1 = options.outWidth;
        l = options.outHeight;
        if (i1 > i || l > j)
        {
            try
            {
                throw new OutOfMemoryError();
            }
            // Misplaced declaration of an exception variable
            catch (Context context)
            {
                s = makeThumb(s, i, j, k, imagescaletype, flag, true);
            }
            context = obj;
            if (s != null)
            {
                context = new BitmapDrawable(s);
            }
            return context;
        }
        i = i1;
        j = l;
        context = new BitmapDrawable(context.getResources(), s);
        return context;
    }

    public static void sendAnalyticsEvent(AnalyticEntity analyticentity)
    {
        String s2 = analyticentity.getContext().getString(com.biznessapps.layout.R.string.code_name);
        boolean flag;
        if (s2.equalsIgnoreCase("biznessapps") || s2.equalsIgnoreCase("previewapp11"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (StringUtils.isNotEmpty(analyticentity.getAccountId()))
        {
            Tracker tracker = GoogleAnalytics.getInstance(analyticentity.getContext()).newTracker(analyticentity.getAccountId());
            if (tracker != null)
            {
                String s3 = analyticentity.getAppId();
                String s;
                String s1;
                com.google.android.gms.analytics.HitBuilders.EventBuilder eventbuilder;
                String s4;
                if (StringUtils.isNotEmpty(analyticentity.getTabId()))
                {
                    s = analyticentity.getTabId();
                } else
                {
                    s = "0";
                }
                if (StringUtils.isNotEmpty(analyticentity.getItemId()))
                {
                    s1 = analyticentity.getItemId();
                } else
                {
                    s1 = "0";
                }
                if (StringUtils.isNotEmpty(analyticentity.getCatId()))
                {
                    analyticentity = analyticentity.getCatId();
                } else
                {
                    analyticentity = "0";
                }
                eventbuilder = new com.google.android.gms.analytics.HitBuilders.EventBuilder();
                eventbuilder.setCustomDimension(1, s3);
                s3 = android.os.Build.VERSION.RELEASE;
                s4 = Build.MODEL;
                eventbuilder.setCustomDimension(2, (new StringBuilder()).append("ANDROID v").append(s3).toString());
                eventbuilder.setCustomDimension(3, s4);
                if (!flag)
                {
                    s2 = null;
                }
                eventbuilder.setCustomDimension(4, s2);
                tracker.send(eventbuilder.setCategory(s).setAction(s1).setLabel(analyticentity).setValue(0L).build());
            }
        }
    }

    public static void sendTimingEvent(Context context, String s, long l)
    {
        String s1 = context.getString(com.biznessapps.layout.R.string.code_name);
        AppSettings appsettings;
        boolean flag;
        if (s1.equalsIgnoreCase("biznessapps") || s1.equalsIgnoreCase("previewapp11"))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        appsettings = AppCore.getInstance().getAppSettings();
        if (StringUtils.isNotEmpty(appsettings.getGaAccountId()))
        {
            Tracker tracker = GoogleAnalytics.getInstance(context).newTracker(appsettings.getGaAccountId());
            if (tracker != null)
            {
                context = android.os.Build.VERSION.RELEASE;
                String s2 = Build.MODEL;
                com.google.android.gms.analytics.HitBuilders.TimingBuilder timingbuilder = new com.google.android.gms.analytics.HitBuilders.TimingBuilder();
                timingbuilder.setCustomDimension(1, appsettings.getAppId());
                timingbuilder.setCustomDimension(2, (new StringBuilder()).append("Android ").append(context).toString());
                timingbuilder.setCustomDimension(3, s2);
                if (flag)
                {
                    context = s1;
                } else
                {
                    context = null;
                }
                timingbuilder.setCustomDimension(4, context);
                tracker.send(timingbuilder.setCategory(s).setValue(l).setVariable("Loading time").setLabel("0").build());
            }
        }
    }

    public static void setColorWithoutMutation(int i, Drawable drawable)
    {
        drawable.setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
    }

    public static String uncompressString(String s)
        throws IOException
    {
        Object obj;
        s = Base64.decode(s, 0);
        obj = null;
        s = new GZIPInputStream(new ByteArrayInputStream(s));
        obj = new ByteArrayOutputStream();
        int i = 0;
_L4:
        if (i == -1) goto _L2; else goto _L1
_L1:
        int j = s.read();
        i = j;
        if (j == -1) goto _L4; else goto _L3
_L3:
        ((ByteArrayOutputStream) (obj)).write(j);
        i = j;
          goto _L4
        obj;
_L6:
        s.close();
        throw obj;
_L2:
        s.close();
        ((ByteArrayOutputStream) (obj)).close();
        obj = new String(((ByteArrayOutputStream) (obj)).toByteArray(), "UTF-8");
        s.close();
        return ((String) (obj));
        Exception exception;
        exception;
        s = ((String) (obj));
        obj = exception;
        if (true) goto _L6; else goto _L5
_L5:
    }
}
