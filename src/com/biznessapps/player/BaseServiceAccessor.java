// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.player;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;

public abstract class BaseServiceAccessor
{

    private static final String TAG = com/biznessapps/player/BaseServiceAccessor.getCanonicalName();
    private static final String UNBIND_SERVICE_ERROR = "Cann't unbind service";
    private Context context;
    protected IInterface service;
    protected ServiceConnection serviceConnection;
    private Intent serviceIntent;

    public BaseServiceAccessor(Context context1)
    {
        serviceIntent = null;
        context = context1;
        onCreate();
    }

    protected abstract IInterface createServiceStub(IBinder ibinder);

    public IInterface getService()
    {
        return service;
    }

    protected abstract Class getServiceClass();

    protected ServiceConnection getServiceConnection()
    {
        if (serviceConnection == null)
        {
            serviceConnection = new ServiceConnection() {

                final BaseServiceAccessor this$0;

                public void onServiceConnected(ComponentName componentname, IBinder ibinder)
                {
                    service = createServiceStub(ibinder);
                }

                public void onServiceDisconnected(ComponentName componentname)
                {
                    service = null;
                }

            
            {
                this$0 = BaseServiceAccessor.this;
                super();
            }
            };
        }
        return serviceConnection;
    }

    public void onCreate()
    {
        serviceIntent = new Intent(context, getServiceClass());
        context.bindService(serviceIntent, getServiceConnection(), 1);
    }

    public void onDestroy()
    {
        try
        {
            context.unbindService(getServiceConnection());
            return;
        }
        catch (Exception exception)
        {
            Log.e(TAG, "Cann't unbind service", exception);
        }
    }

}
