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

public class RightStaticDrawer extends StaticDrawer
{

    private int mIndicatorTop;

    RightStaticDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public RightStaticDrawer(Context context)
    {
        super(context);
    }

    public RightStaticDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public RightStaticDrawer(Context context, AttributeSet attributeset, int i)
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
                int j = getWidth();
                int k = mMenuSize;
                i = mActiveIndicator.getWidth();
                j -= k;
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                if (mIndicatorAnimating)
                {
                    int l = mActiveRect.top;
                    int i1 = (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                    int j1 = mIndicatorStartPos;
                    mIndicatorTop = j1 + (int)((float)((l + i1) - j1) * mIndicatorOffset);
                } else
                {
                    mIndicatorTop = mActiveRect.top + (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                }
                canvas.save();
                canvas.clipRect(j, 0, j + i, getHeight());
                canvas.drawBitmap(mActiveIndicator, j, mIndicatorTop, null);
                canvas.restore();
            }
        }
    }

    protected int getIndicatorStartPos()
    {
        return mIndicatorTop;
    }

    protected void initDrawer(Context context, AttributeSet attributeset, int i)
    {
        super.initDrawer(context, attributeset, i);
        mPosition = Position.RIGHT;
    }

    public void setDropShadowColor(int i)
    {
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.LEFT_RIGHT, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
