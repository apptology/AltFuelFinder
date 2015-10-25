// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.home_screen.components;

import com.biznessapps.utils.TabUtils;

// Referenced classes of package com.biznessapps.home_screen.components:
//            ModernAnimationComponent

class this._cls0
    implements com.biznessapps.widgets.animation.parallax.kListener
{

    final ModernAnimationComponent this$0;

    public void onClick(int i)
    {
        TabUtils.openLinkedTab(i, ModernAnimationComponent.access$000(ModernAnimationComponent.this));
    }

    ClickListener()
    {
        this$0 = ModernAnimationComponent.this;
        super();
    }
}
