// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.graphics.Bitmap;
import android.os.Environment;
import android.util.Log;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;

public class BlurEffectUtils
{

    private static final float ALPHA_SHADOW = 0.23F;
    private static final float FOREGROUND_SHADOW = 0.95F;

    public BlurEffectUtils()
    {
    }

    public static Bitmap addBlurEffect(Bitmap bitmap, int i)
    {
        return addBlurEffect(bitmap, i, false, 0.0F, 0.0F);
    }

    public static Bitmap addBlurEffect(Bitmap bitmap, int i, boolean flag, float f, float f1)
    {
        if (bitmap == null || i < 1)
        {
            bitmap = null;
        } else
        {
            Bitmap bitmap1;
            Object obj;
            if (bitmap.getConfig() != null)
            {
                obj = bitmap.copy(bitmap.getConfig(), true);
            } else
            {
                obj = Bitmap.createBitmap(bitmap);
            }
            bitmap1 = ((Bitmap) (obj));
            if (obj == null)
            {
                bitmap1 = convertToMutable(bitmap);
            }
            bitmap = bitmap1;
            if (bitmap1 != null)
            {
                bitmap = bitmap1;
                if (bitmap1.isMutable())
                {
                    int k10 = bitmap1.getWidth();
                    int l10 = bitmap1.getHeight();
                    bitmap = new int[k10 * l10];
                    Log.e("pix", (new StringBuilder()).append(k10).append(" ").append(l10).append(" ").append(bitmap.length).toString());
                    bitmap1.getPixels(bitmap, 0, k10, 0, 0, k10, l10);
                    int l11 = k10 - 1;
                    int i11 = l10 - 1;
                    int j = k10 * l10;
                    int j11 = i + i + 1;
                    obj = new int[j];
                    int ai[] = new int[j];
                    int ai1[] = new int[j];
                    int ai2[] = new int[Math.max(k10, l10)];
                    j = j11 + 1 >> 1;
                    int k1 = j * j;
                    int ai3[] = new int[k1 * 256];
                    for (int k = 0; k < k1 * 256; k++)
                    {
                        ai3[k] = k / k1;
                    }

                    int i8 = 0;
                    int l6 = 0;
                    int ai4[][] = (int[][])Array.newInstance(Integer.TYPE, new int[] {
                        j11, 3
                    });
                    int k11 = i + 1;
                    for (int j7 = 0; j7 < l10; j7++)
                    {
                        int l4 = 0;
                        int l5 = 0;
                        int j6 = 0;
                        int l1 = 0;
                        int i4 = 0;
                        int j5 = 0;
                        int l = 0;
                        int k2 = 0;
                        int j3 = 0;
                        int k8 = -i;
                        while (k8 <= i) 
                        {
                            int k9 = bitmap[Math.min(l11, Math.max(k8, 0)) + i8];
                            int ai5[] = ai4[k8 + i];
                            ai5[0] = (0xff0000 & k9) >> 16;
                            ai5[1] = (0xff00 & k9) >> 8;
                            ai5[2] = k9 & 0xff;
                            k9 = k11 - Math.abs(k8);
                            j6 += ai5[0] * k9;
                            l5 += ai5[1] * k9;
                            l4 += ai5[2] * k9;
                            if (k8 > 0)
                            {
                                j3 += ai5[0];
                                k2 += ai5[1];
                                l += ai5[2];
                            } else
                            {
                                j5 += ai5[0];
                                i4 += ai5[1];
                                l1 += ai5[2];
                            }
                            k8++;
                        }
                        int l9 = i;
                        for (int l8 = 0; l8 < k10; l8++)
                        {
                            obj[i8] = ai3[j6];
                            ai[i8] = ai3[l5];
                            ai1[i8] = ai3[l4];
                            int ai6[] = ai4[((l9 - i) + j11) % j11];
                            int j13 = ai6[0];
                            int l12 = ai6[1];
                            int j12 = ai6[2];
                            if (j7 == 0)
                            {
                                ai2[l8] = Math.min(l8 + i + 1, l11);
                            }
                            int k13 = bitmap[ai2[l8] + l6];
                            ai6[0] = (0xff0000 & k13) >> 16;
                            ai6[1] = (0xff00 & k13) >> 8;
                            ai6[2] = k13 & 0xff;
                            j3 += ai6[0];
                            k2 += ai6[1];
                            l += ai6[2];
                            j6 = (j6 - j5) + j3;
                            l5 = (l5 - i4) + k2;
                            l4 = (l4 - l1) + l;
                            l9 = (l9 + 1) % j11;
                            ai6 = ai4[l9 % j11];
                            j5 = (j5 - j13) + ai6[0];
                            i4 = (i4 - l12) + ai6[1];
                            l1 = (l1 - j12) + ai6[2];
                            j3 -= ai6[0];
                            k2 -= ai6[1];
                            l -= ai6[2];
                            i8++;
                        }

                        l6 += k10;
                    }

                    for (int i1 = 0; i1 < k10; i1++)
                    {
                        int k5 = 0;
                        int k6 = 0;
                        int i7 = 0;
                        int l2 = 0;
                        int i5 = 0;
                        int i6 = 0;
                        int i2 = 0;
                        int k3 = 0;
                        int j4 = 0;
                        int k7 = -i * k10;
                        int j8 = -i;
                        while (j8 <= i) 
                        {
                            int i9 = Math.max(0, k7) + i1;
                            int ai7[] = ai4[j8 + i];
                            ai7[0] = obj[i9];
                            ai7[1] = ai[i9];
                            ai7[2] = ai1[i9];
                            int i10 = k11 - Math.abs(j8);
                            i7 += obj[i9] * i10;
                            k6 += ai[i9] * i10;
                            k5 += ai1[i9] * i10;
                            if (j8 > 0)
                            {
                                j4 += ai7[0];
                                k3 += ai7[1];
                                i2 += ai7[2];
                            } else
                            {
                                i6 += ai7[0];
                                i5 += ai7[1];
                                l2 += ai7[2];
                            }
                            i9 = k7;
                            if (j8 < i11)
                            {
                                i9 = k7 + k10;
                            }
                            j8++;
                            k7 = i9;
                        }
                        j8 = i1;
                        int j9 = i;
                        for (int l7 = 0; l7 < l10; l7++)
                        {
                            bitmap[j8] = 0xff000000 & bitmap[j8] | ai3[i7] << 16 | ai3[k6] << 8 | ai3[k5];
                            int ai8[] = ai4[((j9 - i) + j11) % j11];
                            int k12 = ai8[0];
                            int i12 = ai8[1];
                            int j10 = ai8[2];
                            if (i1 == 0)
                            {
                                ai2[l7] = Math.min(l7 + k11, i11) * k10;
                            }
                            int i13 = i1 + ai2[l7];
                            ai8[0] = obj[i13];
                            ai8[1] = ai[i13];
                            ai8[2] = ai1[i13];
                            j4 += ai8[0];
                            k3 += ai8[1];
                            i2 += ai8[2];
                            i7 = (i7 - i6) + j4;
                            k6 = (k6 - i5) + k3;
                            k5 = (k5 - l2) + i2;
                            j9 = (j9 + 1) % j11;
                            ai8 = ai4[j9];
                            i6 = (i6 - k12) + ai8[0];
                            i5 = (i5 - i12) + ai8[1];
                            l2 = (l2 - j10) + ai8[2];
                            j4 -= ai8[0];
                            k3 -= ai8[1];
                            i2 -= ai8[2];
                            j8 += k10;
                        }

                    }

                    if (flag)
                    {
                        int j1 = Math.round(255F * f);
                        for (i = 0; i < bitmap.length; i++)
                        {
                            int j2 = bitmap[i];
                            int i3 = bitmap[i] >> 16 & 0xff;
                            int l3 = bitmap[i] >> 8 & 0xff;
                            int k4 = bitmap[i] >> 0 & 0xff;
                            bitmap[i] = (j2 >> 24 & 0xff) << 24 | i3 + (int)((float)(j1 - i3) * f1) << 16 | l3 + (int)((float)(j1 - l3) * f1) << 8 | k4 + (int)((float)(j1 - k4) * f1);
                        }

                    }
                    bitmap1.setPixels(bitmap, 0, k10, 0, 0, k10, l10);
                    return bitmap1;
                }
            }
        }
        return bitmap;
    }

    public static Bitmap applyBlurring(Bitmap bitmap)
    {
        return addBlurEffect(bitmap, 85, true, 0.95F, 0.23F);
    }

    private static Bitmap convertToMutable(Bitmap bitmap)
    {
        Bitmap bitmap1 = bitmap;
        Bitmap bitmap2 = bitmap;
        File file;
        RandomAccessFile randomaccessfile;
        FileChannel filechannel;
        MappedByteBuffer mappedbytebuffer;
        android.graphics.Bitmap.Config config;
        int i;
        int j;
        try
        {
            file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append(File.separator).append("temp.tmp").toString());
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return bitmap1;
        }
        // Misplaced declaration of an exception variable
        catch (Bitmap bitmap)
        {
            bitmap.printStackTrace();
            return bitmap2;
        }
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        randomaccessfile = new RandomAccessFile(file, "rw");
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        i = bitmap.getWidth();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        j = bitmap.getHeight();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        config = bitmap.getConfig();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        filechannel = randomaccessfile.getChannel();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        mappedbytebuffer = filechannel.map(java.nio.channels.FileChannel.MapMode.READ_WRITE, 0L, bitmap.getRowBytes() * j);
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        bitmap.copyPixelsToBuffer(mappedbytebuffer);
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        bitmap.recycle();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        System.gc();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        bitmap = Bitmap.createBitmap(i, j, config);
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        mappedbytebuffer.position(0);
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        bitmap.copyPixelsFromBuffer(mappedbytebuffer);
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        filechannel.close();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        randomaccessfile.close();
        bitmap1 = bitmap;
        bitmap2 = bitmap;
        file.delete();
        return bitmap;
    }
}
