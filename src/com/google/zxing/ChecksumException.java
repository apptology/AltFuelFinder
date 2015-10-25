// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing;


// Referenced classes of package com.google.zxing:
//            ReaderException

public final class ChecksumException extends ReaderException
{

    private static final ChecksumException instance = new ChecksumException();

    private ChecksumException()
    {
    }

    private ChecksumException(Throwable throwable)
    {
        super(throwable);
    }

    public static ChecksumException getChecksumInstance()
    {
        if (isStackTrace)
        {
            return new ChecksumException();
        } else
        {
            return instance;
        }
    }

    public static ChecksumException getChecksumInstance(Throwable throwable)
    {
        if (isStackTrace)
        {
            return new ChecksumException(throwable);
        } else
        {
            return instance;
        }
    }

}
