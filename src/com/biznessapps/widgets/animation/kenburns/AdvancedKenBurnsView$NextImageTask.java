// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets.animation.kenburns;

import java.util.TimerTask;

// Referenced classes of package com.biznessapps.widgets.animation.kenburns:
//            AdvancedKenBurnsView

private class <init> extends TimerTask
{

    final AdvancedKenBurnsView this$0;

    public void run()
    {
        AdvancedKenBurnsView.access$200(AdvancedKenBurnsView.this).post(new Runnable() {

            final AdvancedKenBurnsView.NextImageTask this$1;

            public void run()
            {
                showNextImage();
            }

            
            {
                this$1 = AdvancedKenBurnsView.NextImageTask.this;
                super();
            }
        });
    }

    private _cls1.this._cls1()
    {
        this$0 = AdvancedKenBurnsView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
