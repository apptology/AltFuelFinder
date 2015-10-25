// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.multi.qrcode;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import com.google.zxing.Result;
import com.google.zxing.ResultMetadataType;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.DecoderResult;
import com.google.zxing.common.DetectorResult;
import com.google.zxing.multi.MultipleBarcodeReader;
import com.google.zxing.multi.qrcode.detector.MultiDetector;
import com.google.zxing.qrcode.QRCodeReader;
import com.google.zxing.qrcode.decoder.Decoder;
import com.google.zxing.qrcode.decoder.QRCodeDecoderMetaData;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class QRCodeMultiReader extends QRCodeReader
    implements MultipleBarcodeReader
{
    private static final class SAComparator
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

        private SAComparator()
        {
        }

    }


    private static final Result EMPTY_RESULT_ARRAY[] = new Result[0];
    private static final ResultPoint NO_POINTS[] = new ResultPoint[0];

    public QRCodeMultiReader()
    {
    }

    private static List processStructuredAppend(List list)
    {
        Object obj;
        byte abyte0[];
        byte abyte1[];
        int i;
        int j = 0;
        obj = list.iterator();
        boolean flag;
        do
        {
            flag = j;
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            if (!((Result)((Iterator) (obj)).next()).getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE))
            {
                continue;
            }
            flag = true;
            break;
        } while (true);
        if (!flag)
        {
            return list;
        }
        obj = new ArrayList();
        Object obj1 = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            Result result = (Result)list.next();
            ((List) (obj)).add(result);
            if (result.getResultMetadata().containsKey(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE))
            {
                ((List) (obj1)).add(result);
            }
        } while (true);
        Collections.sort(((List) (obj1)), new SAComparator());
        list = new StringBuilder();
        j = 0;
        i = 0;
        Iterator iterator = ((List) (obj1)).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj2 = (Result)iterator.next();
            list.append(((Result) (obj2)).getText());
            int i1 = j + ((Result) (obj2)).getRawBytes().length;
            j = i1;
            if (((Result) (obj2)).getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS))
            {
                obj2 = ((Iterable)((Result) (obj2)).getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)).iterator();
                int k = i;
                do
                {
                    i = k;
                    j = i1;
                    if (!((Iterator) (obj2)).hasNext())
                    {
                        break;
                    }
                    k += ((byte[])((Iterator) (obj2)).next()).length;
                } while (true);
            }
        } while (true);
        abyte1 = new byte[j];
        abyte0 = new byte[i];
        j = 0;
        int l = 0;
        obj1 = ((List) (obj1)).iterator();
        do
        {
label0:
            {
                Object obj3;
                int k1;
                do
                {
                    if (!((Iterator) (obj1)).hasNext())
                    {
                        break label0;
                    }
                    obj3 = (Result)((Iterator) (obj1)).next();
                    System.arraycopy(((Result) (obj3)).getRawBytes(), 0, abyte1, j, ((Result) (obj3)).getRawBytes().length);
                    k1 = j + ((Result) (obj3)).getRawBytes().length;
                    j = k1;
                } while (!((Result) (obj3)).getResultMetadata().containsKey(ResultMetadataType.BYTE_SEGMENTS));
                obj3 = ((Iterable)((Result) (obj3)).getResultMetadata().get(ResultMetadataType.BYTE_SEGMENTS)).iterator();
                int j1 = l;
                do
                {
                    l = j1;
                    j = k1;
                    if (!((Iterator) (obj3)).hasNext())
                    {
                        break;
                    }
                    byte abyte2[] = (byte[])((Iterator) (obj3)).next();
                    System.arraycopy(abyte2, 0, abyte0, j1, abyte2.length);
                    j1 += abyte2.length;
                } while (true);
            }
        } while (true);
        list = new Result(list.toString(), abyte1, NO_POINTS, BarcodeFormat.QR_CODE);
        if (i > 0)
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(abyte0);
            list.putMetadata(ResultMetadataType.BYTE_SEGMENTS, arraylist);
        }
        ((List) (obj)).add(list);
        return ((List) (obj));
    }

    public Result[] decodeMultiple(BinaryBitmap binarybitmap)
        throws NotFoundException
    {
        return decodeMultiple(binarybitmap, null);
    }

    public Result[] decodeMultiple(BinaryBitmap binarybitmap, Map map)
        throws NotFoundException
    {
        ArrayList arraylist;
        int i;
        int j;
        arraylist = new ArrayList();
        binarybitmap = (new MultiDetector(binarybitmap.getBlackMatrix())).detectMulti(map);
        j = binarybitmap.length;
        i = 0;
_L2:
        Object obj;
        if (i >= j)
        {
            break; /* Loop/switch isn't completed */
        }
        obj = binarybitmap[i];
        DecoderResult decoderresult;
        Object obj1;
        decoderresult = getDecoder().decode(((DetectorResult) (obj)).getBits(), map);
        ResultPoint aresultpoint[] = ((DetectorResult) (obj)).getPoints();
        if (decoderresult.getOther() instanceof QRCodeDecoderMetaData)
        {
            ((QRCodeDecoderMetaData)decoderresult.getOther()).applyMirroredCorrection(aresultpoint);
        }
        aresultpoint = new Result(decoderresult.getText(), decoderresult.getRawBytes(), aresultpoint, BarcodeFormat.QR_CODE);
        obj1 = decoderresult.getByteSegments();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_136;
        }
        aresultpoint.putMetadata(ResultMetadataType.BYTE_SEGMENTS, obj1);
        obj1 = decoderresult.getECLevel();
        if (obj1 == null)
        {
            break MISSING_BLOCK_LABEL_158;
        }
        aresultpoint.putMetadata(ResultMetadataType.ERROR_CORRECTION_LEVEL, obj1);
        if (decoderresult.hasStructuredAppend())
        {
            aresultpoint.putMetadata(ResultMetadataType.STRUCTURED_APPEND_SEQUENCE, Integer.valueOf(decoderresult.getStructuredAppendSequenceNumber()));
            aresultpoint.putMetadata(ResultMetadataType.STRUCTURED_APPEND_PARITY, Integer.valueOf(decoderresult.getStructuredAppendParity()));
        }
        arraylist.add(aresultpoint);
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (arraylist.isEmpty())
        {
            return EMPTY_RESULT_ARRAY;
        } else
        {
            binarybitmap = processStructuredAppend(arraylist);
            return (Result[])binarybitmap.toArray(new Result[binarybitmap.size()]);
        }
        ReaderException readerexception;
        readerexception;
          goto _L3
    }

}
