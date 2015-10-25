// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package net.simonvt.menudrawer;


// Referenced classes of package net.simonvt.menudrawer:
//            BuildLayerFrameLayout

class this._cls0
    implements Runnable
{

    final BuildLayerFrameLayout this$0;

    public void run()
    {
        BuildLayerFrameLayout.access$002(BuildLayerFrameLayout.this, true);
        invalidate();
    }

    ()
    {
        this$0 = BuildLayerFrameLayout.this;
        super();
    }
}
