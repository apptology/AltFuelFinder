// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.app.Application;
import android.content.res.Configuration;
import android.content.res.Resources;
import com.biznessapps.localization.CustomResources;
import com.biznessapps.localization.LanguageHelper;
import com.biznessapps.localization.StringsSource;

public class CoreApplication extends Application
{

    private Resources resources;

    public CoreApplication()
    {
    }

    public Resources getResources()
    {
        Resources resources1 = super.getResources();
        resources = CustomResources.getInstance(super.getApplicationContext(), resources1);
        return resources;
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
        configuration = LanguageHelper.getUsedLanguageCode(configuration.locale);
        StringsSource.getInstance().update(getApplicationContext(), configuration);
    }

    public void onCreate()
    {
        super.onCreate();
        String s = LanguageHelper.getUsedLanguageCode(getResources().getConfiguration().locale);
        StringsSource.getInstance().update(getApplicationContext(), s);
    }
}
