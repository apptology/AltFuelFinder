// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;

// Referenced classes of package net.simonvt.menudrawer:
//            MenuDrawer

public class BuildLayerFrameLayout extends FrameLayout
{

    private boolean mAttached;
    private boolean mChanged;
    private boolean mFirst;
    private boolean mHardwareLayersEnabled;

    public BuildLayerFrameLayout(Context context)
    {
        super(context);
        mHardwareLayersEnabled = true;
        mFirst = true;
        if (MenuDrawer.USE_TRANSLATIONS)
        {
            setLayerType(2, null);
        }
    }

    public BuildLayerFrameLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mHardwareLayersEnabled = true;
        mFirst = true;
        if (MenuDrawer.USE_TRANSLATIONS)
        {
            setLayerType(2, null);
        }
    }

    public BuildLayerFrameLayout(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        mHardwareLayersEnabled = true;
        mFirst = true;
        if (MenuDrawer.USE_TRANSLATIONS)
        {
            setLayerType(2, null);
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        super.dispatchDraw(canvas);
        if (mChanged && MenuDrawer.USE_TRANSLATIONS)
        {
            post(new Runnable() {

                final BuildLayerFrameLayout this$0;

                public void run()
                {
                    if (mAttached && (getLayerType() != 2 || mFirst))
                    {
                        mFirst = false;
                        setLayerType(2, null);
                        buildLayer();
                        setLayerType(0, null);
                    }
                }

            
            {
                this$0 = BuildLayerFrameLayout.this;
                super();
            }
            });
            mChanged = false;
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        mAttached = true;
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        mAttached = false;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (MenuDrawer.USE_TRANSLATIONS && mHardwareLayersEnabled)
        {
            post(new Runnable() {

                final BuildLayerFrameLayout this$0;

                public void run()
                {
                    mChanged = true;
                    invalidate();
                }

            
            {
                this$0 = BuildLayerFrameLayout.this;
                super();
            }
            });
        }
    }

    void setHardwareLayersEnabled(boolean flag)
    {
        mHardwareLayersEnabled = flag;
    }


/*
    static boolean access$002(BuildLayerFrameLayout buildlayerframelayout, boolean flag)
    {
        buildlayerframelayout.mChanged = flag;
        return flag;
    }

*/




/*
    static boolean access$202(BuildLayerFrameLayout buildlayerframelayout, boolean flag)
    {
        buildlayerframelayout.mFirst = flag;
        return flag;
    }

*/
}
