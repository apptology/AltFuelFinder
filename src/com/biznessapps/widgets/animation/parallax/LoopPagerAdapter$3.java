// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.parallax;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.ImageView;

// Referenced classes of package com.biznessapps.widgets.animation.parallax:
//            LoopPagerAdapter

class val.image
    implements com.biznessapps.utils.google.caching.adCallback
{

    final LoopPagerAdapter this$0;
    final ImageView val$image;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        if (bitmap != null)
        {
            val$image.setImageBitmap(bitmap);
            val$image.post(new Runnable() {

                final LoopPagerAdapter._cls3 this$1;

                public void run()
                {
                    Matrix matrix = new Matrix();
                    matrix.reset();
                    float f2 = image.getWidth();
                    float f3 = image.getHeight();
                    float f4 = image.getDrawable().getIntrinsicWidth();
                    float f5 = image.getDrawable().getIntrinsicHeight();
                    float f = f2;
                    float f1 = f3;
                    if (f4 / f2 > f5 / f3)
                    {
                        matrix.setScale(f3 / f5, f3 / f5);
                        f = (f4 * f3) / f5;
                    } else
                    {
                        matrix.setScale(f2 / f4, f2 / f4);
                        f1 = (f5 * f2) / f4;
                    }
                    matrix.preTranslate((f2 - f) / 2.0F, (f3 - f1) / 2.0F);
                    image.setScaleType(android.widget.ImageView.ScaleType.CENTER_CROP);
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        image.setScaleX(1.35F);
                        image.setScaleY(1.35F);
                    }
                    image.setImageMatrix(matrix);
                }

            
            {
                this$1 = LoopPagerAdapter._cls3.this;
                super();
            }
            });
        }
    }

    _cls1.this._cls1()
    {
        this$0 = final_looppageradapter;
        val$image = ImageView.this;
        super();
    }
}
