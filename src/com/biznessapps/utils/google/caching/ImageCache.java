// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils.google.caching;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import android.os.Environment;
import android.os.StatFs;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.util.LruCache;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;

// Referenced classes of package com.biznessapps.utils.google.caching:
//            Utils, DiskLruCache

public class ImageCache
{
    public static class ImageCacheParams
    {

        public String cacheName;
        public boolean clearDiskCacheOnStart;
        public android.graphics.Bitmap.CompressFormat compressFormat;
        public int compressQuality;
        public File diskCacheDir;
        public boolean diskCacheEnabled;
        public int diskCacheSize;
        public boolean initDiskCacheOnCreate;
        public int memCacheSize;
        public boolean memoryCacheEnabled;

        public void setMemCacheSizePercent(float f)
        {
            if (f < 0.05F || f > 0.8F)
            {
                throw new IllegalArgumentException("setMemCacheSizePercent - percent must be between 0.05 and 0.8 (inclusive)");
            } else
            {
                memCacheSize = Math.round(((float)Runtime.getRuntime().maxMemory() * f) / 1024F);
                return;
            }
        }

        public ImageCacheParams(Context context, String s)
        {
            memCacheSize = 10240;
            diskCacheSize = 0x4600000;
            compressFormat = ImageCache.DEFAULT_COMPRESS_FORMAT;
            compressQuality = 70;
            memoryCacheEnabled = true;
            diskCacheEnabled = true;
            clearDiskCacheOnStart = false;
            initDiskCacheOnCreate = false;
            cacheName = "memCache";
            diskCacheDir = ImageCache.getDiskCacheDir(context, s);
            cacheName = s;
        }

        public ImageCacheParams(File file)
        {
            memCacheSize = 10240;
            diskCacheSize = 0x4600000;
            compressFormat = ImageCache.DEFAULT_COMPRESS_FORMAT;
            compressQuality = 70;
            memoryCacheEnabled = true;
            diskCacheEnabled = true;
            clearDiskCacheOnStart = false;
            initDiskCacheOnCreate = false;
            cacheName = "memCache";
            diskCacheDir = file;
            cacheName = file.getName();
        }
    }

    public static class RetainFragment extends Fragment
    {

        private Object mObject;

        public Object getObject()
        {
            return mObject;
        }

        public void onCreate(Bundle bundle)
        {
            super.onCreate(bundle);
            setRetainInstance(true);
        }

        public void setObject(Object obj)
        {
            mObject = obj;
        }

        public RetainFragment()
        {
        }
    }


    private static final String DEFAULT_CACHE_NAME = "memCache";
    private static final boolean DEFAULT_CLEAR_DISK_CACHE_ON_START = false;
    private static final android.graphics.Bitmap.CompressFormat DEFAULT_COMPRESS_FORMAT;
    private static final int DEFAULT_COMPRESS_QUALITY = 70;
    private static final boolean DEFAULT_DISK_CACHE_ENABLED = true;
    private static final int DEFAULT_DISK_CACHE_SIZE = 0x4600000;
    private static final boolean DEFAULT_INIT_DISK_CACHE_ON_CREATE = false;
    private static final boolean DEFAULT_MEM_CACHE_ENABLED = true;
    private static final int DEFAULT_MEM_CACHE_SIZE = 10240;
    private static final int DISK_CACHE_INDEX = 0;
    private static final String TAG = "ImageCache";
    private static HashMap instances = new HashMap();
    private ImageCacheParams mCacheParams;
    private final Object mDiskCacheLock;
    private boolean mDiskCacheStarting;
    private DiskLruCache mDiskLruCache;
    private LruCache mMemoryCache;

    private ImageCache(Context context, String s)
    {
        mDiskCacheLock = new Object();
        mDiskCacheStarting = true;
        init(new ImageCacheParams(context, s));
    }

    private ImageCache(ImageCacheParams imagecacheparams)
    {
        mDiskCacheLock = new Object();
        mDiskCacheStarting = true;
        init(imagecacheparams);
    }

    private static String bytesToHexString(byte abyte0[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < abyte0.length; i++)
        {
            String s = Integer.toHexString(abyte0[i] & 0xff);
            if (s.length() == 1)
            {
                stringbuilder.append('0');
            }
            stringbuilder.append(s);
        }

        return stringbuilder.toString();
    }

    public static ImageCache findOrCreateCache(String s, ImageCacheParams imagecacheparams)
    {
        if (!instances.containsKey(s))
        {
            instances.put(s, new ImageCache(imagecacheparams));
        }
        return (ImageCache)instances.get(s);
    }

    public static RetainFragment findOrCreateRetainFragment(FragmentManager fragmentmanager)
    {
        RetainFragment retainfragment1 = (RetainFragment)fragmentmanager.findFragmentByTag("ImageCache");
        RetainFragment retainfragment = retainfragment1;
        if (retainfragment1 == null)
        {
            retainfragment = new RetainFragment();
            fragmentmanager.beginTransaction().add(retainfragment, "ImageCache").commitAllowingStateLoss();
        }
        return retainfragment;
    }

    public static int getBitmapSize(Bitmap bitmap)
    {
        return bitmap.getRowBytes() * bitmap.getHeight();
    }

    public static File getDiskCacheDir(Context context, String s)
    {
        if ("mounted".equals(Environment.getExternalStorageState()) || getExternalCacheDir(context) != null)
        {
            context = getExternalCacheDir(context).getPath();
        } else
        {
            context = context.getCacheDir().getPath();
        }
        return new File((new StringBuilder()).append(context).append(File.separator).append(s).toString());
    }

    public static File getExternalCacheDir(Context context)
    {
        if (Utils.hasFroyo())
        {
            return context.getExternalCacheDir();
        } else
        {
            context = (new StringBuilder()).append("/Android/data/").append(context.getPackageName()).append("/cache/").toString();
            return new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().getPath()).append(context).toString());
        }
    }

    public static long getUsableSpace(File file)
    {
        file = new StatFs(file.getPath());
        return (long)file.getBlockSize() * (long)file.getAvailableBlocks();
    }

    public static String hashKeyForDisk(String s)
    {
        Object obj;
        try
        {
            obj = MessageDigest.getInstance("MD5");
            ((MessageDigest) (obj)).update(s.getBytes());
            obj = bytesToHexString(((MessageDigest) (obj)).digest());
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            return String.valueOf(s.hashCode());
        }
        return ((String) (obj));
    }

    private void init(ImageCacheParams imagecacheparams)
    {
        mCacheParams = imagecacheparams;
        if (mCacheParams.memoryCacheEnabled)
        {
            mMemoryCache = new LruCache(mCacheParams.memCacheSize) {

                final ImageCache this$0;

                protected volatile int sizeOf(Object obj, Object obj1)
                {
                    return sizeOf((String)obj, (Bitmap)obj1);
                }

                protected int sizeOf(String s, Bitmap bitmap)
                {
                    int j = ImageCache.getBitmapSize(bitmap) / 1024;
                    int i = j;
                    if (j == 0)
                    {
                        i = 1;
                    }
                    return i;
                }

            
            {
                this$0 = ImageCache.this;
                super(i);
            }
            };
        }
        if (imagecacheparams.initDiskCacheOnCreate)
        {
            initDiskCache();
        }
    }

    public static boolean isExternalStorageRemovable()
    {
        return true;
    }

    public void addBitmapToCache(String s, Bitmap bitmap)
    {
        if (s == null || bitmap == null)
        {
            return;
        }
        if (mMemoryCache != null && mMemoryCache.get(s) == null)
        {
            mMemoryCache.put(s, bitmap);
        }
        Object obj3 = mDiskCacheLock;
        obj3;
        JVM INSTR monitorenter ;
        if (mDiskLruCache == null) goto _L2; else goto _L1
_L1:
        Object obj4 = hashKeyForDisk(s);
        OutputStream outputstream;
        OutputStream outputstream1;
        OutputStream outputstream2;
        Object obj;
        Object obj1;
        Object obj2;
        obj = null;
        obj1 = null;
        obj2 = null;
        outputstream = null;
        outputstream1 = obj;
        outputstream2 = obj1;
        s = obj2;
        DiskLruCache.Snapshot snapshot = mDiskLruCache.get(((String) (obj4)));
        if (snapshot != null) goto _L4; else goto _L3
_L3:
        outputstream1 = obj;
        outputstream2 = obj1;
        s = obj2;
        obj4 = mDiskLruCache.edit(((String) (obj4)));
        if (obj4 == null)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        outputstream1 = obj;
        outputstream2 = obj1;
        s = obj2;
        outputstream = ((DiskLruCache.Editor) (obj4)).newOutputStream(0);
        outputstream1 = outputstream;
        outputstream2 = outputstream;
        s = outputstream;
        bitmap.compress(mCacheParams.compressFormat, mCacheParams.compressQuality, outputstream);
        outputstream1 = outputstream;
        outputstream2 = outputstream;
        s = outputstream;
        ((DiskLruCache.Editor) (obj4)).commit();
        outputstream1 = outputstream;
        outputstream2 = outputstream;
        s = outputstream;
        outputstream.close();
_L6:
        if (outputstream == null) goto _L2; else goto _L5
_L5:
        outputstream.close();
_L2:
        obj3;
        JVM INSTR monitorexit ;
        return;
        s;
        obj3;
        JVM INSTR monitorexit ;
        throw s;
_L4:
        outputstream1 = obj;
        outputstream2 = obj1;
        s = obj2;
        snapshot.getInputStream(0).close();
          goto _L6
        bitmap;
        s = outputstream1;
        Log.e("ImageCache", (new StringBuilder()).append("addBitmapToCache - ").append(bitmap).toString());
        if (outputstream1 == null) goto _L2; else goto _L7
_L7:
        outputstream1.close();
          goto _L2
        s;
        s.printStackTrace();
          goto _L2
        s;
        s.printStackTrace();
          goto _L2
        bitmap;
        s = outputstream2;
        Log.e("ImageCache", (new StringBuilder()).append("addBitmapToCache - ").append(bitmap).toString());
        if (outputstream2 == null) goto _L2; else goto _L8
_L8:
        outputstream2.close();
          goto _L2
        s;
        s.printStackTrace();
          goto _L2
        bitmap;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_355;
        }
        s.close();
_L9:
        throw bitmap;
        s;
        s.printStackTrace();
          goto _L9
    }

    public void clearCache()
    {
        if (mMemoryCache != null)
        {
            mMemoryCache.evictAll();
        }
        Object obj = mDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        mDiskCacheStarting = true;
        if (mDiskLruCache == null) goto _L2; else goto _L1
_L1:
        boolean flag = mDiskLruCache.isClosed();
        if (flag) goto _L2; else goto _L3
_L3:
        mDiskLruCache.delete();
_L4:
        mDiskLruCache = null;
        initDiskCache();
_L2:
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        Log.e("ImageCache", (new StringBuilder()).append("clearCache - ").append(obj1).toString());
          goto _L4
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    public void close()
    {
        Object obj = mDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        DiskLruCache disklrucache = mDiskLruCache;
        if (disklrucache == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        if (!mDiskLruCache.isClosed())
        {
            mDiskLruCache.close();
            mDiskLruCache = null;
        }
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        Log.e("ImageCache", (new StringBuilder()).append("close - ").append(obj1).toString());
          goto _L1
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    public void flush()
    {
        Object obj = mDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        DiskLruCache disklrucache = mDiskLruCache;
        if (disklrucache == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        mDiskLruCache.flush();
_L1:
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        Log.e("ImageCache", (new StringBuilder()).append("flush - ").append(obj1).toString());
          goto _L1
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    public Bitmap getBitmapFromDiskCache(String s)
    {
        Object obj2 = hashKeyForDisk(s);
        Object obj1 = mDiskCacheLock;
        obj1;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = mDiskCacheStarting;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_50;
        }
        mDiskCacheLock.wait();
          goto _L1
        s;
        s.printStackTrace();
          goto _L1
        s;
        obj1;
        JVM INSTR monitorexit ;
        throw s;
        s = mDiskLruCache;
        InputStream inputstream;
        InputStream inputstream1;
        Bitmap bitmap;
        Object obj;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        inputstream1 = null;
        bitmap = null;
        obj = null;
        inputstream = inputstream1;
        s = bitmap;
        obj2 = mDiskLruCache.get(((String) (obj2)));
        s = obj;
        if (obj2 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        inputstream = inputstream1;
        s = bitmap;
        inputstream1 = ((DiskLruCache.Snapshot) (obj2)).getInputStream(0);
        s = inputstream1;
        if (inputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        inputstream = inputstream1;
        s = inputstream1;
        bitmap = BitmapFactory.decodeStream(inputstream1);
        if (inputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        inputstream1.close();
_L2:
        obj1;
        JVM INSTR monitorexit ;
        return bitmap;
        s;
        s.printStackTrace();
          goto _L2
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_149;
        }
        s.close();
_L3:
        obj1;
        JVM INSTR monitorexit ;
        return null;
        s;
        s.printStackTrace();
          goto _L3
        IOException ioexception;
        ioexception;
        s = inputstream;
        Log.e("ImageCache", (new StringBuilder()).append("getBitmapFromDiskCache - ").append(ioexception).toString());
        if (inputstream == null) goto _L3; else goto _L4
_L4:
        inputstream.close();
          goto _L3
        s;
        s.printStackTrace();
          goto _L3
        Exception exception;
        exception;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_219;
        }
        s.close();
_L5:
        throw exception;
        s;
        s.printStackTrace();
          goto _L5
    }

    public Bitmap getBitmapFromMemCache(String s)
    {
        Bitmap bitmap = null;
        if (mMemoryCache != null)
        {
            Bitmap bitmap1 = (Bitmap)mMemoryCache.get(s);
            bitmap = bitmap1;
            if (bitmap1 != null)
            {
                bitmap = bitmap1;
                if (bitmap1.isRecycled())
                {
                    mMemoryCache.remove(s);
                    bitmap = null;
                }
            }
        }
        return bitmap;
    }

    public void initDiskCache()
    {
        Object obj = mDiskCacheLock;
        obj;
        JVM INSTR monitorenter ;
        File file;
        if (mDiskLruCache != null && !mDiskLruCache.isClosed())
        {
            break MISSING_BLOCK_LABEL_98;
        }
        file = mCacheParams.diskCacheDir;
        if (!mCacheParams.diskCacheEnabled || file == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        int i;
        long l;
        if (!file.exists())
        {
            file.mkdirs();
        }
        l = getUsableSpace(file);
        i = mCacheParams.diskCacheSize;
        if (l <= (long)i)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        mDiskLruCache = DiskLruCache.open(file, 1, 1, mCacheParams.diskCacheSize);
_L1:
        mDiskCacheStarting = false;
        mDiskCacheLock.notifyAll();
        obj;
        JVM INSTR monitorexit ;
        return;
        Object obj1;
        obj1;
        mCacheParams.diskCacheDir = null;
        Log.e("ImageCache", (new StringBuilder()).append("initDiskCache - ").append(obj1).toString());
          goto _L1
        obj1;
        obj;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    static 
    {
        DEFAULT_COMPRESS_FORMAT = android.graphics.Bitmap.CompressFormat.PNG;
    }

}
