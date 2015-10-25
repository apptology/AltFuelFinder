// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.multi.qrcode;

import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import java.io.Serializable;
import java.util.Comparator;
import java.util.Map;

// Referenced classes of package com.google.zxing.multi.qrcode:
//            QRCodeMultiReader

private static final class <init>
    implements Comparator, Serializable
{

    public int compare(Result result, Result result1)
    {
        int i = ((Integer)(Integer)result.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue();
        int j = ((Integer)(Integer)result1.getResultMetadata().get(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE)).intValue();
        if (i < j)
        {
            return -1;
        }
        return i <= j ? 0 : 1;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((Result)obj, (Result)obj1);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
