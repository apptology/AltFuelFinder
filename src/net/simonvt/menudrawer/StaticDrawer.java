// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;

// Referenced classes of package net.simonvt.menudrawer:
//            MenuDrawer, Position, BuildLayerFrameLayout

public abstract class StaticDrawer extends MenuDrawer
{

    protected Position mPosition;

    StaticDrawer(Activity activity, int i)
    {
        super(activity, i);
    }

    public StaticDrawer(Context context)
    {
        super(context);
    }

    public StaticDrawer(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public StaticDrawer(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private void drawDropShadow(Canvas canvas)
    {
        int i;
        int j;
        int k;
        int l;
        i = getWidth();
        j = getHeight();
        k = mMenuSize;
        l = mDropShadowSize;
        static class _cls1
        {

            static final int $SwitchMap$net$simonvt$menudrawer$Position[];

            static 
            {
                $SwitchMap$net$simonvt$menudrawer$Position = new int[Position.values().length];
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.LEFT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.TOP.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.RIGHT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$net$simonvt$menudrawer$Position[Position.BOTTOM.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.net.simonvt.menudrawer.Position[mPosition.ordinal()];
        JVM INSTR tableswitch 1 4: default 64
    //                   1 73
    //                   2 92
    //                   3 111
    //                   4 134;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        mDropShadowDrawable.draw(canvas);
        return;
_L2:
        mDropShadowDrawable.setBounds(k - l, 0, k, j);
        continue; /* Loop/switch isn't completed */
_L3:
        mDropShadowDrawable.setBounds(0, k - l, i, k);
        continue; /* Loop/switch isn't completed */
_L4:
        mDropShadowDrawable.setBounds(i - k, 0, (i - k) + l, j);
        continue; /* Loop/switch isn't completed */
_L5:
        mDropShadowDrawable.setBounds(0, j - k, i, (j - k) + l);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void closeMenu(boolean flag)
    {
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if (mDropShadowEnabled)
        {
            drawDropShadow(canvas);
        }
        if (mActiveIndicator != null)
        {
            drawIndicator(canvas);
        }
    }

    protected abstract void drawIndicator(Canvas canvas);

    public boolean getOffsetMenuEnabled()
    {
        return false;
    }

    public int getTouchBezelSize()
    {
        return 0;
    }

    public int getTouchMode()
    {
        return 0;
    }

    public boolean isMenuVisible()
    {
        return true;
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        i = k - i;
        j = l - j;
        switch (_cls1..SwitchMap.net.simonvt.menudrawer.Position[mPosition.ordinal()])
        {
        default:
            return;

        case 1: // '\001'
            mMenuContainer.layout(0, 0, mMenuSize, j);
            mContentContainer.layout(mMenuSize, 0, i, j);
            return;

        case 3: // '\003'
            mMenuContainer.layout(i - mMenuSize, 0, i, j);
            mContentContainer.layout(0, 0, i - mMenuSize, j);
            return;

        case 2: // '\002'
            mMenuContainer.layout(0, 0, i, mMenuSize);
            mContentContainer.layout(0, mMenuSize, i, j);
            return;

        case 4: // '\004'
            mMenuContainer.layout(0, j - mMenuSize, i, j);
            break;
        }
        mContentContainer.layout(0, 0, i, j - mMenuSize);
    }

    protected void onMeasure(int i, int j)
    {
        int k = android.view.View.MeasureSpec.getMode(i);
        int j1 = android.view.View.MeasureSpec.getMode(j);
        if (k != 0x40000000 || j1 != 0x40000000)
        {
            throw new IllegalStateException("Must measure with an exact size");
        }
        i = android.view.View.MeasureSpec.getSize(i);
        j = android.view.View.MeasureSpec.getSize(j);
        if (!mMenuSizeSet)
        {
            mMenuSize = (int)((float)j * 0.25F);
        }
        _cls1..SwitchMap.net.simonvt.menudrawer.Position[mPosition.ordinal()];
        JVM INSTR tableswitch 1 4: default 104
    //                   1 111
    //                   2 167
    //                   3 111
    //                   4 167;
           goto _L1 _L2 _L3 _L2 _L3
_L1:
        setMeasuredDimension(i, j);
        return;
_L2:
        int l = android.view.View.MeasureSpec.makeMeasureSpec(j, 0x40000000);
        int i2 = mMenuSize;
        int k1 = android.view.View.MeasureSpec.makeMeasureSpec(i2, 0x40000000);
        i2 = android.view.View.MeasureSpec.makeMeasureSpec(i - i2, 0x40000000);
        mContentContainer.measure(i2, l);
        mMenuContainer.measure(k1, l);
        continue; /* Loop/switch isn't completed */
_L3:
        int i1 = android.view.View.MeasureSpec.makeMeasureSpec(i, 0x40000000);
        int j2 = mMenuSize;
        int l1 = android.view.View.MeasureSpec.makeMeasureSpec(j2, 0x40000000);
        j2 = android.view.View.MeasureSpec.makeMeasureSpec(j - j2, 0x40000000);
        mContentContainer.measure(i1, j2);
        mMenuContainer.measure(i1, l1);
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void openMenu(boolean flag)
    {
    }

    public void peekDrawer()
    {
    }

    public void peekDrawer(long l)
    {
    }

    public void peekDrawer(long l, long l1)
    {
    }

    public void setHardwareLayerEnabled(boolean flag)
    {
    }

    public void setMenuSize(int i)
    {
        mMenuSize = i;
        mMenuSizeSet = true;
        requestLayout();
        invalidate();
    }

    public void setOffsetMenuEnabled(boolean flag)
    {
    }

    public void setTouchBezelSize(int i)
    {
    }

    public void setTouchMode(int i)
    {
    }

    public void toggleMenu(boolean flag)
    {
    }
}
