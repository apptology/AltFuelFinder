// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen;


// Referenced classes of package com.biznessapps.home_screen:
//            HomeAnimation

class this._cls0
    implements android.support.v4.view.ChangeListener
{

    final HomeAnimation this$0;

    public void onPageScrollStateChanged(int i)
    {
    }

    public void onPageScrolled(int i, float f, int j)
    {
    }

    public void onPageSelected(int i)
    {
        HomeAnimation.access$002(HomeAnimation.this, i);
    }

    geListener()
    {
        this$0 = HomeAnimation.this;
        super();
    }
}
