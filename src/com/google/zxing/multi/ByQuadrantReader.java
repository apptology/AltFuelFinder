// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.multi;

import com.google.zxing.BinaryBitmap;
import com.google.zxing.ChecksumException;
import com.google.zxing.FormatException;
import com.google.zxing.NotFoundException;
import com.google.zxing.Reader;
import com.google.zxing.Result;
import com.google.zxing.ResultPoint;
import java.util.Map;

public final class ByQuadrantReader
    implements Reader
{

    private final Reader _flddelegate;

    public ByQuadrantReader(Reader reader)
    {
        _flddelegate = reader;
    }

    private static void makeAbsolute(ResultPoint aresultpoint[], int i, int j)
    {
        if (aresultpoint != null)
        {
            for (int k = 0; k < aresultpoint.length; k++)
            {
                ResultPoint resultpoint = aresultpoint[k];
                aresultpoint[k] = new ResultPoint(resultpoint.getX() + (float)i, resultpoint.getY() + (float)j);
            }

        }
    }

    public Result decode(BinaryBitmap binarybitmap)
        throws NotFoundException, ChecksumException, FormatException
    {
        return decode(binarybitmap, null);
    }

    public Result decode(BinaryBitmap binarybitmap, Map map)
        throws NotFoundException, ChecksumException, FormatException
    {
        int i = binarybitmap.getWidth();
        int j = binarybitmap.getHeight();
        i /= 2;
        j /= 2;
        Result result;
        try
        {
            result = _flddelegate.decode(binarybitmap.crop(0, 0, i, j), map);
        }
        catch (NotFoundException notfoundexception)
        {
            Result result1;
            try
            {
                result1 = _flddelegate.decode(binarybitmap.crop(i, 0, i, j), map);
                makeAbsolute(result1.getResultPoints(), i, 0);
            }
            catch (NotFoundException notfoundexception1)
            {
                Result result2;
                try
                {
                    result2 = _flddelegate.decode(binarybitmap.crop(0, j, i, j), map);
                    makeAbsolute(result2.getResultPoints(), 0, j);
                }
                catch (NotFoundException notfoundexception2)
                {
                    Result result3;
                    try
                    {
                        result3 = _flddelegate.decode(binarybitmap.crop(i, j, i, j), map);
                        makeAbsolute(result3.getResultPoints(), i, j);
                    }
                    catch (NotFoundException notfoundexception3)
                    {
                        int k = i / 2;
                        int l = j / 2;
                        binarybitmap = binarybitmap.crop(k, l, i, j);
                        binarybitmap = _flddelegate.decode(binarybitmap, map);
                        makeAbsolute(binarybitmap.getResultPoints(), k, l);
                        return binarybitmap;
                    }
                    return result3;
                }
                return result2;
            }
            return result1;
        }
        return result;
    }

    public void reset()
    {
        _flddelegate.reset();
    }
}
