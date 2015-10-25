// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.common;

import java.util.List;

public final class DecoderResult
{

    private final List byteSegments;
    private final String ecLevel;
    private Integer erasures;
    private Integer errorsCorrected;
    private Object other;
    private final byte rawBytes[];
    private final int structuredAppendParity;
    private final int structuredAppendSequenceNumber;
    private final String text;

    public DecoderResult(byte abyte0[], String s, List list, String s1)
    {
        this(abyte0, s, list, s1, -1, -1);
    }

    public DecoderResult(byte abyte0[], String s, List list, String s1, int i, int j)
    {
        rawBytes = abyte0;
        text = s;
        byteSegments = list;
        ecLevel = s1;
        structuredAppendParity = j;
        structuredAppendSequenceNumber = i;
    }

    public List getByteSegments()
    {
        return byteSegments;
    }

    public String getECLevel()
    {
        return ecLevel;
    }

    public Integer getErasures()
    {
        return erasures;
    }

    public Integer getErrorsCorrected()
    {
        return errorsCorrected;
    }

    public Object getOther()
    {
        return other;
    }

    public byte[] getRawBytes()
    {
        return rawBytes;
    }

    public int getStructuredAppendParity()
    {
        return structuredAppendParity;
    }

    public int getStructuredAppendSequenceNumber()
    {
        return structuredAppendSequenceNumber;
    }

    public String getText()
    {
        return text;
    }

    public boolean hasStructuredAppend()
    {
        return structuredAppendParity >= 0 && structuredAppendSequenceNumber >= 0;
    }

    public void setErasures(Integer integer)
    {
        erasures = integer;
    }

    public void setErrorsCorrected(Integer integer)
    {
        errorsCorrected = integer;
    }

    public void setOther(Object obj)
    {
        other = obj;
    }
}
