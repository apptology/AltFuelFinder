// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing;


// Referenced classes of package com.google.zxing:
//            ReaderException

public final class FormatException extends ReaderException
{

    private static final FormatException instance = new FormatException();

    private FormatException()
    {
    }

    private FormatException(Throwable throwable)
    {
        super(throwable);
    }

    public static FormatException getFormatInstance()
    {
        if (isStackTrace)
        {
            return new FormatException();
        } else
        {
            return instance;
        }
    }

    public static FormatException getFormatInstance(Throwable throwable)
    {
        if (isStackTrace)
        {
            return new FormatException(throwable);
        } else
        {
            return instance;
        }
    }

}
