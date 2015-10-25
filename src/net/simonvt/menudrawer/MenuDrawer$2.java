// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;

import android.graphics.Rect;
import android.view.View;

// Referenced classes of package net.simonvt.menudrawer:
//            MenuDrawer

class this._cls0
    implements android.view.ver.OnScrollChangedListener
{

    final MenuDrawer this$0;

    public void onScrollChanged()
    {
        if (mActiveView != null && isViewDescendant(mActiveView))
        {
            mActiveView.getDrawingRect(MenuDrawer.access$100(MenuDrawer.this));
            offsetDescendantRectToMyCoords(mActiveView, MenuDrawer.access$100(MenuDrawer.this));
            if (MenuDrawer.access$100(MenuDrawer.this).left != mActiveRect.left || MenuDrawer.access$100(MenuDrawer.this).top != mActiveRect.top || MenuDrawer.access$100(MenuDrawer.this).right != mActiveRect.right || MenuDrawer.access$100(MenuDrawer.this).bottom != mActiveRect.bottom)
            {
                invalidate();
            }
        }
    }

    llChangedListener()
    {
        this$0 = MenuDrawer.this;
        super();
    }
}
