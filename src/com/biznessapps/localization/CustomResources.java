// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.localization;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.util.Log;

// Referenced classes of package com.biznessapps.localization:
//            KeysMap, StringsSource

public class CustomResources extends Resources
{

    private static CustomResources instance = null;
    private static Resources latestResources = null;
    private Context context;

    private CustomResources(Context context1, AssetManager assetmanager, DisplayMetrics displaymetrics, Configuration configuration)
    {
        super(assetmanager, displaymetrics, configuration);
        context = context1;
    }

    public static CustomResources getInstance(Context context1, Resources resources)
    {
        if (latestResources != resources)
        {
            Log.e(com/biznessapps/localization/CustomResources.getName(), "Resource object is updated");
            if (instance != null)
            {
                try
                {
                    instance.finalize();
                }
                catch (Throwable throwable)
                {
                    throwable.printStackTrace();
                }
            }
            instance = new CustomResources(context1, resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        }
        latestResources = resources;
        return instance;
    }

    public volatile CharSequence getText(int i)
        throws android.content.res.Resources.NotFoundException
    {
        return getText(i);
    }

    public String getText(int i)
    {
        String s = KeysMap.getValue(i);
        String s1 = StringsSource.getInstance().getValue(context, s);
        Log.i(getClass().getName(), (new StringBuilder()).append("find String: ").append(s1).toString());
        s = s1;
        if (s1 == null)
        {
            s = super.getText(i).toString();
            Log.e(getClass().getName(), (new StringBuilder()).append("find not String: ").append(s).toString());
        }
        return s;
    }

}
