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

public class LeftStaticDrawer extends StaticDrawer
{

    private int mIndicatorTop;

    LeftStaticDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public LeftStaticDrawer(Context context)
    {
        super(context);
    }

    public LeftStaticDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public LeftStaticDrawer(Context context, AttributeSet attributeset, int i)
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
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                int k;
                if (mIndicatorAnimating)
                {
                    i = mActiveRect.top;
                    int j = (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                    int l = mIndicatorStartPos;
                    mIndicatorTop = l + (int)((float)((i + j) - l) * mIndicatorOffset);
                } else
                {
                    mIndicatorTop = mActiveRect.top + (mActiveRect.height() - mActiveIndicator.getHeight()) / 2;
                }
                i = mMenuSize;
                k = i - mActiveIndicator.getWidth();
                canvas.save();
                canvas.clipRect(k, 0, i, getHeight());
                canvas.drawBitmap(mActiveIndicator, k, mIndicatorTop, null);
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
        mPosition = Position.LEFT;
    }

    public void setDropShadowColor(int i)
    {
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.RIGHT_LEFT, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
