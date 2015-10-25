// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.view.View;

// Referenced classes of package com.biznessapps.common.components:
//            WheelDelegate

public interface OnWheelDelegateVisibleListener
{

    public abstract void onHide(WheelDelegate wheeldelegate, View view);

    public abstract void onShow(WheelDelegate wheeldelegate, View view);
}
