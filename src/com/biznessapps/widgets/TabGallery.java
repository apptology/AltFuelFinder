// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.graphics.Camera;
import android.graphics.Matrix;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.Transformation;
import android.widget.Gallery;

public class TabGallery extends Gallery
{

    private final Camera camera;
    private int galleryCenter;
    private int maxRotationAngle;
    private int maxZoom;

    public TabGallery(Context context)
    {
        super(context);
        camera = new Camera();
        maxZoom = -100;
        maxRotationAngle = 70;
        setStaticTransformationsEnabled(true);
    }

    public TabGallery(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0x1010070);
    }

    public TabGallery(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        camera = new Camera();
        maxZoom = -100;
        maxRotationAngle = 70;
        setStaticTransformationsEnabled(true);
    }

    private int getGalleryCenter()
    {
        return (getWidth() - getPaddingLeft() - getPaddingRight()) / 2 + getPaddingLeft();
    }

    private static int getViewCenter(View view)
    {
        return view.getLeft() + view.getWidth() / 2;
    }

    private void transformImageBitmap(View view, Transformation transformation, int i)
    {
        camera.save();
        transformation = transformation.getMatrix();
        int j = view.getMeasuredHeight();
        int k = view.getMeasuredWidth();
        int l = Math.abs(i);
        camera.translate(0.0F, 0.0F, 100F);
        if (l < maxRotationAngle)
        {
            float f = (float)((double)maxZoom + (double)l * 1.5D);
            camera.translate(0.0F, 0.0F, f);
        }
        camera.rotateY(i);
        camera.getMatrix(transformation);
        transformation.preTranslate(-((float)k / 2.0F), -((float)j / 2.0F));
        transformation.postTranslate((float)k / 2.0F, (float)j / 2.0F);
        camera.restore();
    }

    protected boolean getChildStaticTransformation(View view, Transformation transformation)
    {
        int i = getViewCenter(view);
        int j = view.getWidth();
        int k = Math.abs(galleryCenter - i);
        transformation.clear();
        transformation.setTransformationType(Transformation.TYPE_MATRIX);
        if (k < j / 2)
        {
            transformImageBitmap(view, transformation, 0);
        } else
        {
            j = (int)(((float)(galleryCenter - i) / (float)j) * (float)maxRotationAngle);
            i = j;
            if (Math.abs(j) > maxRotationAngle)
            {
                if (j < 0)
                {
                    i = -maxRotationAngle;
                } else
                {
                    i = maxRotationAngle;
                }
            }
            transformImageBitmap(view, transformation, i);
        }
        return true;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        galleryCenter = getGalleryCenter();
        super.onSizeChanged(i, j, k, l);
    }
}
