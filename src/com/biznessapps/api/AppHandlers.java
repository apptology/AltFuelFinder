// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.api;

import android.os.Handler;

public class AppHandlers
{

    private static Handler uiHandler;

    public AppHandlers()
    {
    }

    public static Handler getHandler()
    {
        com/biznessapps/api/AppHandlers;
        JVM INSTR monitorenter ;
        Handler handler = uiHandler;
        com/biznessapps/api/AppHandlers;
        JVM INSTR monitorexit ;
        return handler;
        Exception exception;
        exception;
        throw exception;
    }

    public static Handler getUiHandler()
    {
        com/biznessapps/api/AppHandlers;
        JVM INSTR monitorenter ;
        Handler handler;
        if (uiHandler == null)
        {
            uiHandler = new Handler();
        }
        handler = uiHandler;
        com/biznessapps/api/AppHandlers;
        JVM INSTR monitorexit ;
        return handler;
        Exception exception;
        exception;
        throw exception;
    }
}
