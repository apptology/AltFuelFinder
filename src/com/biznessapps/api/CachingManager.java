// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.content.Context;
import android.content.SharedPreferences;
import com.biznessapps.common.entities.AppInfoEntity;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.more.Tab;
import com.biznessapps.reservation.ReservationDataKeeper;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.StringUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class CachingManager
    implements AppConstants
{

    private String musicTabId;
    private Map propertiesMap;
    private HashMap reservationsDataMap;
    private List tabList;

    public CachingManager()
    {
        propertiesMap = new HashMap();
        tabList = new ArrayList();
        reservationsDataMap = new HashMap();
    }

    public void clearCache()
    {
        propertiesMap.clear();
        reservationsDataMap.clear();
        tabList.clear();
    }

    public Tab findTab(String s)
    {
        Object obj = null;
        Tab tab = obj;
        if (StringUtils.isNotEmpty(s))
        {
            Iterator iterator = tabList.iterator();
            do
            {
                tab = obj;
                if (!iterator.hasNext())
                {
                    break;
                }
                tab = (Tab)iterator.next();
            } while (!s.equalsIgnoreCase(tab.getTabId()));
        }
        return tab;
    }

    public String getAppCode()
    {
        return (String)propertiesMap.get("APP_CODE_PROPERTY");
    }

    public AppInfoEntity getAppInfo()
    {
        return (AppInfoEntity)propertiesMap.get("APP_INFO_PROPERTY");
    }

    public Object getData(String s)
    {
        return propertiesMap.get(s);
    }

    public String getDataFromDB(String s)
    {
        return StorageKeeper.instance().get(s);
    }

    public int getFromSharedPreferences(Context context, String s, int i)
    {
        if (context == null)
        {
            return 0;
        } else
        {
            return context.getSharedPreferences("ba.application.settings", 0).getInt(s, i);
        }
    }

    public String getFromSharedPreferences(Context context, String s)
    {
        if (context == null)
        {
            return null;
        } else
        {
            return context.getSharedPreferences("ba.application.settings", 0).getString(s, null);
        }
    }

    public boolean getFromSharedPreferences(Context context, String s, boolean flag)
    {
        if (context == null)
        {
            return flag;
        } else
        {
            return context.getSharedPreferences("ba.application.settings", 0).getBoolean(s, flag);
        }
    }

    public String getMusicTabId()
    {
        return musicTabId;
    }

    public ReservationDataKeeper getReservSystemCacher(String s)
    {
        ReservationDataKeeper reservationdatakeeper1 = (ReservationDataKeeper)reservationsDataMap.get(s);
        ReservationDataKeeper reservationdatakeeper = reservationdatakeeper1;
        if (reservationdatakeeper1 == null)
        {
            reservationdatakeeper = new ReservationDataKeeper();
            reservationsDataMap.put(s, reservationdatakeeper);
        }
        return reservationdatakeeper;
    }

    public List getTabList()
    {
        return tabList;
    }

    public boolean isDataDamaged()
    {
        if (propertiesMap.size() == 0)
        {
            return true;
        }
        for (Iterator iterator = propertiesMap.keySet().iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (propertiesMap.get(s) == null)
            {
                return true;
            }
        }

        return false;
    }

    public void removeData(String s)
    {
        propertiesMap.remove(s);
    }

    public boolean saveData(String s, Object obj)
    {
        boolean flag = false;
        if (obj != null)
        {
            if (obj instanceof List)
            {
                if (!((List)obj).isEmpty())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            {
                flag = true;
            }
        }
        if (flag)
        {
            propertiesMap.put(s, obj);
        }
        return flag;
    }

    public boolean saveDataToDB(String s, Object obj)
    {
        boolean flag = false;
        if (obj != null)
        {
            if (obj instanceof List)
            {
                if (!((List)obj).isEmpty())
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
            } else
            {
                flag = true;
            }
        }
        if (flag)
        {
            StorageKeeper.instance().put(s, obj);
        }
        return flag;
    }

    public void saveInSharedPreferences(Context context, int i, String s)
    {
        context.getSharedPreferences("ba.application.settings", 0).edit().putInt(s, i).commit();
    }

    public void saveInSharedPreferences(Context context, String s, String s1)
    {
        context.getSharedPreferences("ba.application.settings", 0).edit().putString(s1, s).commit();
    }

    public void saveInSharedPreferences(Context context, boolean flag, String s)
    {
        context.getSharedPreferences("ba.application.settings", 0).edit().putBoolean(s, flag).commit();
    }

    public void setAppCode(String s)
    {
        propertiesMap.put("APP_CODE_PROPERTY", s);
    }

    public void setAppInfo(AppInfoEntity appinfoentity)
    {
        propertiesMap.put("APP_INFO_PROPERTY", appinfoentity);
    }

    public void setMusicTabId(String s)
    {
        musicTabId = s;
    }

    public void setReservationDataKeeper(String s, ReservationDataKeeper reservationdatakeeper)
    {
        reservationsDataMap.put(s, reservationdatakeeper);
    }

    public void setTabList(List list)
    {
        tabList = list;
    }
}
