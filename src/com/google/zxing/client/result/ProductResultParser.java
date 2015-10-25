// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.Result;
import com.google.zxing.oned.UPCEReader;

// Referenced classes of package com.google.zxing.client.result:
//            ResultParser, ProductParsedResult, ParsedResult

public final class ProductResultParser extends ResultParser
{

    public ProductResultParser()
    {
    }

    public volatile ParsedResult parse(Result result)
    {
        return parse(result);
    }

    public ProductParsedResult parse(Result result)
    {
        BarcodeFormat barcodeformat = result.getBarcodeFormat();
        String s;
        if (barcodeformat == BarcodeFormat.UPC_A || barcodeformat == BarcodeFormat.UPC_E || barcodeformat == BarcodeFormat.EAN_8 || barcodeformat == BarcodeFormat.EAN_13)
        {
            if (isStringOfDigits(s = getMassagedText(result), s.length()))
            {
                if (barcodeformat == BarcodeFormat.UPC_E && s.length() == 8)
                {
                    result = UPCEReader.convertUPCEtoUPCA(s);
                } else
                {
                    result = s;
                }
                return new ProductParsedResult(s, result);
            }
        }
        return null;
    }
}
