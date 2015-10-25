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

public class TopStaticDrawer extends StaticDrawer
{

    private int mIndicatorLeft;

    TopStaticDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public TopStaticDrawer(Context context)
    {
        super(context);
    }

    public TopStaticDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public TopStaticDrawer(Context context, AttributeSet attributeset, int i)
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
                i = mMenuSize;
                int k = mActiveIndicator.getHeight();
                mActiveView.getDrawingRect(mActiveRect);
                offsetDescendantRectToMyCoords(mActiveView, mActiveRect);
                int j = mActiveIndicator.getWidth();
                k = i - k;
                if (mIndicatorAnimating)
                {
                    int l = mActiveRect.left;
                    int i1 = (mActiveRect.width() - j) / 2;
                    int j1 = mIndicatorStartPos;
                    mIndicatorLeft = j1 + (int)((float)((l + i1) - j1) * mIndicatorOffset);
                } else
                {
                    mIndicatorLeft = mActiveRect.left + (mActiveRect.width() - j) / 2;
                }
                canvas.save();
                canvas.clipRect(mIndicatorLeft, k, mIndicatorLeft + j, i);
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
        mPosition = Position.TOP;
    }

    public void setDropShadowColor(int i)
    {
        mDropShadowDrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP, new int[] {
            i, i & 0xffffff
        });
        invalidate();
    }
}
