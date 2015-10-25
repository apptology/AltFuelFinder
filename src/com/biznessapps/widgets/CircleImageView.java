// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;

public class CircleImageView extends ImageView
{

    private static String TAG = "CircleImageView";
    private Bitmap mBackgroundBitmap;
    private Drawable mBackgroundDrawable;
    private Bitmap mCircleBitmap;
    private boolean mFitByWidth;
    private int mOrgHeight;
    private int mOrgWidth;
    private Paint mPaint;
    private Paint mPaintEraser;

    public CircleImageView(Context context)
    {
        this(context, null);
    }

    public CircleImageView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        initUI();
        initAttrs(attributeset);
    }

    private void buildCircleBitmap()
    {
        Object obj;
        loadBackgroundBitmap(false);
        mCircleBitmap = null;
        obj = getDrawable();
        break MISSING_BLOCK_LABEL_15;
        if (obj != null && getMeasuredWidth() != 0 && getMeasuredHeight() != 0)
        {
            obj = convertToBitmap(((Drawable) (obj)), getMeasuredWidth(), getMeasuredHeight());
            if (obj != null)
            {
                try
                {
                    mCircleBitmap = Bitmap.createBitmap(getMeasuredWidth(), getMeasuredHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                }
                catch (Exception exception)
                {
                    System.gc();
                    Log.e(TAG, (new StringBuilder()).append("width = ").append(getMeasuredWidth()).append(", height = ").append(getMeasuredHeight()).toString());
                    mCircleBitmap = null;
                    return;
                }
                if (mCircleBitmap != null)
                {
                    Canvas canvas = new Canvas(mCircleBitmap);
                    Paint paint = new Paint();
                    Rect rect = new Rect(0, 0, ((Bitmap) (obj)).getWidth(), ((Bitmap) (obj)).getHeight());
                    Rect rect1 = new Rect(0, 0, mCircleBitmap.getWidth(), mCircleBitmap.getHeight());
                    paint.setAntiAlias(true);
                    paint.setFilterBitmap(true);
                    paint.setDither(true);
                    canvas.drawARGB(0, 0, 0, 0);
                    paint.setColor(Color.parseColor("#BAB399"));
                    canvas.drawCircle((float)(mCircleBitmap.getWidth() / 2) + 0.7F, (float)(mCircleBitmap.getHeight() / 2) + 0.7F, (float)(mCircleBitmap.getWidth() / 2) + 0.1F, paint);
                    paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
                    canvas.drawBitmap(((Bitmap) (obj)), rect, rect1, paint);
                    invalidate();
                    return;
                }
            }
        }
        return;
    }

    private void initAttrs(AttributeSet attributeset)
    {
        attributeset = getContext().obtainStyledAttributes(attributeset, com.biznessapps.layout.R.styleable.CircleImageView);
        mFitByWidth = attributeset.getBoolean(0, true);
        attributeset.recycle();
    }

    private void initUI()
    {
        mPaint = new Paint();
        mPaint.setAntiAlias(true);
        mPaint.setDither(true);
        mPaint.setFilterBitmap(true);
    }

    private void loadBackgroundBitmap(boolean flag)
    {
label0:
        {
            if (mBackgroundBitmap == null || flag)
            {
                mBackgroundBitmap = convertToBitmap(mBackgroundDrawable, getMeasuredWidth(), getMeasuredHeight());
                if (mBackgroundBitmap != null)
                {
                    break label0;
                }
            }
            return;
        }
        Canvas canvas = new Canvas(mBackgroundBitmap);
        mPaintEraser = new Paint();
        mPaintEraser.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.CLEAR));
        mPaintEraser.setColor(0);
        mPaintEraser.setAntiAlias(true);
        canvas.drawCircle(mBackgroundBitmap.getWidth() / 2, mBackgroundBitmap.getHeight() / 2, mBackgroundBitmap.getWidth() / 2, mPaintEraser);
    }

    public Bitmap convertToBitmap(Drawable drawable, int i, int j)
    {
        if (drawable == null)
        {
            return null;
        }
        if (i == 0 || j == 0)
        {
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        if (bitmap == null)
        {
            return null;
        } else
        {
            Canvas canvas = new Canvas(bitmap);
            drawable.setBounds(0, 0, i, j);
            drawable.draw(canvas);
            return bitmap;
        }
    }

    public void onDraw(Canvas canvas)
    {
        if (canvas != null)
        {
            if (mBackgroundBitmap != null)
            {
                canvas.drawBitmap(mBackgroundBitmap, 0.0F, 0.0F, mPaint);
            }
            if (mCircleBitmap != null)
            {
                canvas.drawBitmap(mCircleBitmap, 0.0F, 0.0F, mPaint);
                return;
            }
        }
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        i = getMeasuredWidth();
        j = getMeasuredHeight();
        if (i != 0 || j != 0)
        {
            if (mFitByWidth)
            {
                j = i;
            } else
            {
                i = j;
            }
            setMeasuredDimension(i, j);
            if (i != mOrgWidth || j != mOrgHeight)
            {
                mOrgWidth = i;
                mOrgHeight = j;
                buildCircleBitmap();
                return;
            }
        }
    }

    public void setBackgroundColor(int i)
    {
        super.setBackgroundColor(i);
        mBackgroundDrawable = new ColorDrawable(i);
        loadBackgroundBitmap(true);
    }

    public void setBackgroundResource(int i)
    {
        super.setBackgroundResource(i);
        mBackgroundDrawable = getResources().getDrawable(i);
        loadBackgroundBitmap(true);
        super.setBackgroundResource(0);
    }

    public void setBitmap(Bitmap bitmap)
    {
        setImageBitmap(bitmap);
    }

    public void setImageBitmap(Bitmap bitmap)
    {
        super.setImageBitmap(bitmap);
        buildCircleBitmap();
    }

    public void setImageDrawable(Drawable drawable)
    {
        super.setImageDrawable(drawable);
        buildCircleBitmap();
    }

    public void setImageResource(int i)
    {
        super.setImageResource(i);
        buildCircleBitmap();
    }

}
