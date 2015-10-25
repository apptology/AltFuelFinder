// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.View;

// Referenced classes of package net.simonvt.menudrawer:
//            StaticDrawer, Position

public class BottomStaticDrawer extends StaticDrawer
{

    private int mIndicatorLeft;

    BottomStaticDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public BottomStaticDrawer(Context context)
    {
        super(context);
    }

    public BottomStaticDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public BottomStaticDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    protected void drawIndicator(Canvas canvas)
    {
        if (mActiveView != null && isViewDescendant(mActiveView))
        {
            Integer integer = (Integer)mActiveView.getTag(com.biznessapps.layout.R.id.mdActiveViewPosition);
            int i;
            if (integer == null)
            {
                i = 0;
            } else
            {
                i = integer.intValue();
            }
            if (i == mActivePosition)
            {
                int k = getHeight();
                int l = mMenuSize;
                i = mActiveIndicator.getHeight();
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                int j = mActiveIndicator.getWidth();
                k -= l;
                if (mIndicatorAnimating)
                {
                    int i1 = mActiveRect.left;
                    int j1 = (mActiveRect.width() - j) / 2;
                    int k1 = mIndicatorStartPos;
                    mIndicatorLeft = k1 + (int)((float)((i1 + j1) - k1) * mIndicatorOffset);
                } else
                {
                    mIndicatorLeft = mActiveRect.left + (mActiveRect.width() - j) / 2;
                }
                canvas.save();
                canvas.clipRect(mIndicatorLeft, k, mIndicatorLeft + j, k + i);
                canvas.drawBitmap(mActiveIndicator, mIndicatorLeft, k, null);
                canvas.restore();
            }
        }
    }

    protected int getIndicatorStartPos()
    {
        return mIndicatorLeft;
    }

    protected void initDrawer(Context context, AttributeSet attributeset, int i)
    {
        super.initDrawer(context, attributeset, i);
        mPosition = Position.BOTTOM;
    }

    public void setDropShadowColor(int i)
    {
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TOP_BOTTOM, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
