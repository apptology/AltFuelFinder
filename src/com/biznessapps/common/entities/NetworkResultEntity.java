// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.entities;

import com.biznessapps.utils.StringUtils;
import java.io.Serializable;

public class NetworkResultEntity
    implements Serializable
{

    public static final int BLOCKED_DAY_ERROR = 8;
    public static final int EXCEPTION_STATE = -4;
    public static final int INCORREST_DATA_STATE = -3;
    public static final int MAX_SERVICE_LIMIT_ERROR = 5;
    public static final int NETWORK_FAILURE = -5;
    public static final int NO_ERROR = 0;
    public static final int OK = 200;
    public static final int REFUSED = -2;
    public static final int TIME_SLOT_FILLED = 6;
    public static final int UNSUCCESS_RESULT = -1;
    private static final long serialVersionUID = 0xba7ac6e38e59ade1L;
    private String background;
    private int errorCode;
    private Exception exception;
    private boolean hasCorrectData;
    private String message;

    public NetworkResultEntity()
    {
        errorCode = 200;
    }

    public String getBackground()
    {
        return background;
    }

    public int getErrorCode()
    {
        return errorCode;
    }

    public Exception getException()
    {
        return exception;
    }

    public String getMessage()
    {
        return message;
    }

    public boolean hasBackground()
    {
        return StringUtils.isNotEmpty(background);
    }

    public boolean hasCorrectData()
    {
        return hasCorrectData;
    }

    public boolean isOk()
    {
        return errorCode == 200 || errorCode == 0;
    }

    public void setBackground(String s)
    {
        background = s;
    }

    public void setErrorCode(int i)
    {
        errorCode = i;
    }

    public void setException(Exception exception1)
    {
        exception = exception1;
        errorCode = -4;
    }

    public void setHasCorrectData(boolean flag)
    {
        hasCorrectData = flag;
    }

    public void setMessage(String s)
    {
        message = s;
    }
}
