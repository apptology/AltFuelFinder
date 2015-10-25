// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.images;

import com.biznessapps.utils.StringUtils;

// Referenced classes of package com.biznessapps.images:
//            BitmapDownloader

public class NewImageManager
{

    public static final float REDUCING_COEFF = 0.7F;
    private static final int STANDART_DEVICE_WIDTH = 480;
    private BitmapDownloader bitmapDownloader;

    public NewImageManager()
    {
        bitmapDownloader = new BitmapDownloader();
    }

    public static String addWidthParam(String s, int i)
    {
        return addWidthParam(s, i, 0.7F);
    }

    public static String addWidthParam(String s, int i, float f)
    {
        int j;
label0:
        {
            j = i;
            if (i > 480)
            {
                j = (int)((float)i * f);
            }
            String s1 = s;
            if (StringUtils.isNotEmpty(s))
            {
                s1 = s;
                if (j > 0)
                {
                    if (!s.contains("?"))
                    {
                        break label0;
                    }
                    s1 = (new StringBuilder()).append(s).append("&width=").append(j).toString();
                }
            }
            return s1;
        }
        return (new StringBuilder()).append(s).append("?width=").append(j).toString();
    }

    public BitmapDownloader getBitmapDownloader()
    {
        return bitmapDownloader;
    }
}
