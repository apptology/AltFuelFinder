// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import com.biznessapps.storage.StorageKeeper;
import java.util.Map;

// Referenced classes of package com.biznessapps.api:
//            AppCore, AppHttpUtils, AsyncCallback

public class DataSource
{

    private static DataSource instance;

    private DataSource()
    {
    }

    private boolean canUseOfflineData()
    {
        return AppCore.getInstance().canUseOfflineMode();
    }

    public static DataSource getInstance()
    {
        if (instance == null)
        {
            instance = new DataSource();
        }
        return instance;
    }

    private String removeAdditionalParams(String s)
    {
        String s1 = s.replace("&firstRun=1", "");
        int i = s1.indexOf("device_user_id");
        s = s1;
        if (i > 0)
        {
            s = s1.substring(0, i - 1);
        }
        return s;
    }

    public String getBearerAccessToken(String s, String s1)
    {
        String s2 = null;
        if (isOnline())
        {
            s2 = AppHttpUtils.getBearerAccessToken(s, s1);
            StorageKeeper.instance().saveCacheItem((new StringBuilder()).append(s).append(s1).toString(), s2);
        } else
        if (canUseOfflineData())
        {
            return StorageKeeper.instance().getCachedItem((new StringBuilder()).append(s).append(s1).toString());
        }
        return s2;
    }

    public String getData(String s)
    {
        return getData(s, true, ((Map []) (null)));
    }

    public String getData(String s, String s1, String s2)
    {
        String s3 = null;
        if (isOnline())
        {
            s3 = AppHttpUtils.executeGetSyncRequest(s, s1, s2);
            StorageKeeper.instance().saveCacheItem((new StringBuilder()).append(s).append(s1).append(s2).toString(), s3);
        } else
        if (canUseOfflineData())
        {
            return StorageKeeper.instance().getCachedItem((new StringBuilder()).append(s).append(s1).append(s2).toString());
        }
        return s3;
    }

    public String getData(String s, boolean flag)
    {
        return getData(s, flag, ((Map []) (null)));
    }

    public transient String getData(String s, boolean flag, Map amap[])
    {
        Object obj = null;
        boolean flag1 = isOnline();
        Object obj1 = null;
        if (amap != null && amap.length > 0)
        {
            amap = amap[0];
            if (AppCore.getInstance().isTablet())
            {
                amap.put("device", "ipad");
            } else
            {
                amap.put("device", "iphone5");
            }
        } else
        if (AppCore.getInstance().isTablet())
        {
            s = (new StringBuilder()).append(s).append("&device=ipad").toString();
            amap = obj1;
        } else
        {
            s = (new StringBuilder()).append(s).append("&device=iphone5").toString();
            amap = obj1;
        }
        if (flag1)
        {
            if (amap != null)
            {
                obj = new String(amap.toString());
                amap = AppHttpUtils.executePostRequestSync(s, amap, flag);
                s = (new StringBuilder()).append(s).append(((String) (obj)).hashCode()).toString();
            } else
            {
                amap = AppHttpUtils.executeGetSyncRequest(s, flag);
            }
            StorageKeeper.instance().saveCacheItem(s, amap);
            obj = amap;
        } else
        if (canUseOfflineData())
        {
            String s1 = s;
            if (amap != null)
            {
                s1 = (new StringBuilder()).append(s).append(amap.toString().hashCode()).toString();
            }
            return StorageKeeper.instance().getCachedItem(s1);
        }
        return ((String) (obj));
    }

    public void getData(AsyncCallback asynccallback, String s)
    {
        if (isOnline())
        {
            if (AppCore.getInstance().isTablet())
            {
                s = (new StringBuilder()).append(s).append("&device=ipad").toString();
            } else
            {
                s = (new StringBuilder()).append(s).append("&device=iphone5").toString();
            }
            AppHttpUtils.executeGetRequest(s, asynccallback, true);
            return;
        }
        if (canUseOfflineData())
        {
            asynccallback.onResult(StorageKeeper.instance().getCachedItem(removeAdditionalParams(s)));
            return;
        } else
        {
            asynccallback.onError(null, null);
            return;
        }
    }

    public boolean isOnline()
    {
        return AppCore.getInstance().isAnyConnectionAvailable();
    }

    public void update(String s, String s1, boolean flag)
    {
        if (flag)
        {
            StorageKeeper.instance().saveCacheItem(removeAdditionalParams(s), s1);
            return;
        } else
        {
            StorageKeeper.instance().saveCacheItem(s, s1);
            return;
        }
    }
}
