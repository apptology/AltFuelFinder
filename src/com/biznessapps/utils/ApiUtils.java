// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.entities.CommonEntity;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.more.Tab;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.utils:
//            StringUtils

public class ApiUtils
    implements AppConstants
{

    public ApiUtils()
    {
    }

    public static String getAppSubject(Context context)
    {
label0:
        {
            String s = context.getString(com.biznessapps.layout.R.string.app_name);
            String s1 = context.getString(com.biznessapps.layout.R.string.code_name);
            if (!s1.equalsIgnoreCase("biznessapps"))
            {
                context = s;
                if (!s1.equalsIgnoreCase("previewapp11"))
                {
                    break label0;
                }
            }
            context = AppCore.getInstance().getCachingManager().getAppCode();
        }
        return context;
    }

    public static Intent getTabIntent(Context context, Tab tab, String s, String s1)
    {
        context = new Intent(context, ActivitySelector.getActivityClass(tab.getViewController()));
        if (StringUtils.isNotEmpty(tab.getUrl()))
        {
            context.putExtra("URL", tab.getUrl());
        }
        context.putExtra("TAB_UNIQUE_ID", tab.getId());
        context.putExtra("TAB_LABEL", tab.getLabel());
        context.putExtra("TAB_SPECIAL_ID", tab.getTabId());
        if (StringUtils.isNotEmpty(s1) && !s1.equalsIgnoreCase("0"))
        {
            context.putExtra("ITEM_ID", s1);
        } else
        {
            context.putExtra("ITEM_ID", tab.getItemId());
        }
        if (StringUtils.isNotEmpty(s) && !s.equalsIgnoreCase("0"))
        {
            context.putExtra("SECTION_ID", s);
        } else
        {
            context.putExtra("SECTION_ID", tab.getSectionId());
        }
        context.putExtra("USE_NATIVE_BROWSER", tab.isOpenInSafari());
        context.putExtra("TAB_FRAGMENT", tab.getViewController());
        return context;
    }

    public static boolean hasNotData(List list)
    {
        return list == null || list.isEmpty() || list.size() == 1 && StringUtils.isEmpty(((CommonEntity)list.get(0)).getId());
    }

    public static void openTab(Context context, String s, String s1, String s2, Bundle bundle)
    {
        Object obj = AppCore.getInstance().getCachingManager().getTabList();
        Object obj1 = null;
        Iterator iterator = ((List) (obj)).iterator();
        do
        {
            obj = obj1;
            if (!iterator.hasNext())
            {
                break;
            }
            obj = (Tab)iterator.next();
        } while (!((Tab) (obj)).getTabId().equalsIgnoreCase(s));
        if (obj != null)
        {
            s = getTabIntent(context, ((Tab) (obj)), s1, s2);
            if (bundle != null)
            {
                s.putExtras(bundle);
            }
            s.setFlags(0x10000000);
            context.startActivity(s);
        }
    }
}
