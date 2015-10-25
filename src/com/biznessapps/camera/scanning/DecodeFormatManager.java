// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.camera.scanning;

import com.google.zxing.BarcodeFormat;
import java.util.Vector;

final class DecodeFormatManager
{

    static final Vector DATA_MATRIX_FORMATS;
    static final Vector ONE_D_FORMATS;
    static final Vector PRODUCT_FORMATS;
    static final Vector QR_CODE_FORMATS;

    private DecodeFormatManager()
    {
    }

    static 
    {
        PRODUCT_FORMATS = new Vector(5);
        PRODUCT_FORMATS.add(BarcodeFormat.UPC_A);
        PRODUCT_FORMATS.add(BarcodeFormat.UPC_E);
        PRODUCT_FORMATS.add(BarcodeFormat.EAN_13);
        PRODUCT_FORMATS.add(BarcodeFormat.EAN_8);
        PRODUCT_FORMATS.add(BarcodeFormat.RSS_14);
        ONE_D_FORMATS = new Vector(PRODUCT_FORMATS.size() + 4);
        ONE_D_FORMATS.addAll(PRODUCT_FORMATS);
        ONE_D_FORMATS.add(BarcodeFormat.CODE_39);
        ONE_D_FORMATS.add(BarcodeFormat.CODE_93);
        ONE_D_FORMATS.add(BarcodeFormat.CODE_128);
        ONE_D_FORMATS.add(BarcodeFormat.ITF);
        QR_CODE_FORMATS = new Vector(1);
        QR_CODE_FORMATS.add(BarcodeFormat.QR_CODE);
        DATA_MATRIX_FORMATS = new Vector(1);
        DATA_MATRIX_FORMATS.add(BarcodeFormat.DATA_MATRIX);
    }
}
