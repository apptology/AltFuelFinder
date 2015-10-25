// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class FlashlightManager
{

    private static final String TAG = com/biznessapps/camera/scanning/FlashlightManager.getSimpleName();
    private static final Object iHardwareService;
    private static final Method setFlashEnabledMethod;

    private FlashlightManager()
    {
    }

    static void disableFlashlight()
    {
        setFlashlight(false);
    }

    static void enableFlashlight()
    {
        setFlashlight(true);
    }

    private static Object getHardwareService()
    {
        Object obj = maybeForName("android.os.ServiceManager");
        Object obj1;
        if (obj != null)
        {
            if ((obj = maybeGetMethod(((Class) (obj)), "getService", new Class[] {
    java/lang/String
})) != null && (obj = invoke(((Method) (obj)), null, new Object[] {
    "hardware"
})) != null && (obj1 = maybeForName("android.os.IHardwareService$Stub")) != null && (obj1 = maybeGetMethod(((Class) (obj1)), "asInterface", new Class[] {
    android/os/IBinder
})) != null)
            {
                return invoke(((Method) (obj1)), null, new Object[] {
                    obj
                });
            }
        }
        return null;
    }

    private static Method getSetFlashEnabledMethod(Object obj)
    {
        if (obj == null)
        {
            return null;
        } else
        {
            return maybeGetMethod(obj.getClass(), "setFlashlightEnabled", new Class[] {
                Boolean.TYPE
            });
        }
    }

    private static transient Object invoke(Method method, Object obj, Object aobj[])
    {
        try
        {
            obj = method.invoke(obj, aobj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.w(TAG, (new StringBuilder()).append("Unexpected error while invoking ").append(method).toString(), ((Throwable) (obj)));
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.w(TAG, (new StringBuilder()).append("Unexpected error while invoking ").append(method).toString(), ((InvocationTargetException) (obj)).getCause());
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Log.w(TAG, (new StringBuilder()).append("Unexpected error while invoking ").append(method).toString(), ((Throwable) (obj)));
            return null;
        }
        return obj;
    }

    private static Class maybeForName(String s)
    {
        Class class1;
        try
        {
            class1 = Class.forName(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return null;
        }
        catch (RuntimeException runtimeexception)
        {
            Log.w(TAG, (new StringBuilder()).append("Unexpected error while finding class ").append(s).toString(), runtimeexception);
            return null;
        }
        return class1;
    }

    private static transient Method maybeGetMethod(Class class1, String s, Class aclass[])
    {
        try
        {
            class1 = class1.getMethod(s, aclass);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return null;
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            Log.w(TAG, (new StringBuilder()).append("Unexpected error while finding method ").append(s).toString(), class1);
            return null;
        }
        return class1;
    }

    private static void setFlashlight(boolean flag)
    {
        if (iHardwareService != null)
        {
            invoke(setFlashEnabledMethod, iHardwareService, new Object[] {
                Boolean.valueOf(flag)
            });
        }
    }

    static 
    {
        iHardwareService = getHardwareService();
        setFlashEnabledMethod = getSetFlashEnabledMethod(iHardwareService);
    }
}
