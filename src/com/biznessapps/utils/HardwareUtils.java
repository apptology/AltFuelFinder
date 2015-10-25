// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.os.Environment;
import java.io.File;
import java.util.UUID;

// Referenced classes of package com.biznessapps.utils:
//            StringUtils

public final class HardwareUtils
{

    private HardwareUtils()
    {
    }

    public static String getDeviceToken(String s, String s1)
    {
        int i = 0;
        int j = 0;
        if (StringUtils.isNotEmpty(s))
        {
            i = s.hashCode();
        }
        if (StringUtils.isNotEmpty(s1))
        {
            j = s1.hashCode();
        }
        return (new UUID(i, j)).toString();
    }

    public static String getExternalPath()
    {
        Object obj = null;
        String s = obj;
        if (hasExternalStorage())
        {
            File file = Environment.getExternalStorageDirectory();
            s = obj;
            if (file != null)
            {
                s = file.toString();
            }
        }
        return s;
    }

    public static boolean hasExternalStorage()
    {
        return "mounted".equals(Environment.getExternalStorageState());
    }
}
