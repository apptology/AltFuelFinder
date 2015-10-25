// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;

public class C2DMRegistrationReceiver extends BroadcastReceiver
{

    private static final String GCM_EXTRA_KEY = "GCM_ID";
    private static final String PARAM_ACC_ID = "deviceid";
    private static final String PARAM_APPNAME = "package_name";
    private static final String PARAM_REG_ID = "registrationid";
    private static final String PUSH_NOTIFICATIONS_SEND_PART_URL = "http://%s:8080/notification/TokenReceiver";
    private static final String REGISTRACTION_ACTION = "com.google.android.c2dm.intent.REGISTRATION";
    private static final String REGISTRATION_ID = "registration_id";

    public C2DMRegistrationReceiver()
    {
    }

    public void onReceive(final Context context, Intent intent)
    {
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction()))
        {
            intent = intent.getStringExtra("registration_id");
            (new Thread(new Runnable() {

                final C2DMRegistrationReceiver this$0;
                final Context val$context;
                final String val$deviceId;
                final String val$registrationId;

                public void run()
                {
                    sendDataToServer(context, deviceId, registrationId);
                }

            
            {
                this$0 = C2DMRegistrationReceiver.this;
                context = context1;
                deviceId = s;
                registrationId = s1;
                super();
            }
            })).start();
        }
    }

    public void sendDataToServer(Context context, String s, String s1)
    {
        Object obj1 = AppCore.getInstance().getAppSettings().getPushingIp();
        Object obj = obj1;
        if (StringUtils.isEmpty(((String) (obj1))))
        {
            obj = AppCore.getInstance().getCachingManager().getAppCode();
            JsonParser.updateInitStateWithData(DataSource.getInstance().getData(String.format("init.php?app_code=%s", new Object[] {
                obj
            })));
            obj = AppCore.getInstance().getAppSettings().getPushingIp();
        }
        obj1 = String.format("http://%s:8080/notification/TokenReceiver", new Object[] {
            obj
        });
        obj = new DefaultHttpClient();
        obj1 = new HttpPost(((String) (obj1)));
        try
        {
            ArrayList arraylist = new ArrayList(1);
            arraylist.add(new BasicNameValuePair("package_name", context.getPackageName()));
            arraylist.add(new BasicNameValuePair("deviceid", s));
            arraylist.add(new BasicNameValuePair("registrationid", (new StringBuilder()).append(s1).append("GCM_ID").toString()));
            ((HttpPost) (obj1)).setEntity(new UrlEncodedFormEntity(arraylist));
            ((HttpClient) (obj)).execute(((org.apache.http.client.methods.HttpUriRequest) (obj1)));
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            context.printStackTrace();
        }
    }
}
