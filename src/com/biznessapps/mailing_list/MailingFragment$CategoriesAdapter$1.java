// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mailing_list;

import android.view.View;
import android.widget.ImageView;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.mailing_list:
//            MailingFragment

class val.turnButton
    implements android.view.goriesAdapter._cls1
{

    final this._cls0 this$0;
    final ImageView val$circleView;
    final this._cls0 val$item;
    final ImageView val$turnButton;

    public void onClick(View view)
    {
        view = val$item;
        boolean flag;
        if (!val$item.d())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        view.ed(flag);
        ViewUtils.updateTurnOnOffViewState(val$item.d(), val$circleView, val$turnButton, cess._mth600(this._cls0.this));
    }

    ()
    {
        this$0 = final_;
        val$item = 1;
        val$circleView = imageview;
        val$turnButton = ImageView.this;
        super();
    }
}
