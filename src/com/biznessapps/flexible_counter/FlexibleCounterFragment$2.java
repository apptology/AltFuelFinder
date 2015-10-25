// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flexible_counter;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.View;
import java.util.List;

// Referenced classes of package com.biznessapps.flexible_counter:
//            FlexibleCounterFragment

class this._cls0
    implements android.view.leCounterFragment._cls2
{

    final FlexibleCounterFragment this$0;

    public void onClick(View view)
    {
        view = new android.app.(getHoldActivity());
        view.sage(com.biznessapps.layout._text).ativeButton(com.biznessapps.layout., new android.content.DialogInterface.OnClickListener() {

            final FlexibleCounterFragment._cls2 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
            }

            
            {
                this$1 = FlexibleCounterFragment._cls2.this;
                super();
            }
        }).itiveButton(com.biznessapps.layout., new android.content.DialogInterface.OnClickListener() {

            final FlexibleCounterFragment._cls2 this$1;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.cancel();
                if (FlexibleCounterFragment.access$100(this$0) != null && !FlexibleCounterFragment.access$100(this$0).isEmpty())
                {
                    for (i = 0; i < FlexibleCounterFragment.access$100(this$0).size(); i++)
                    {
                        FlexibleCounterFragment.access$100(this$0).set(i, Integer.valueOf(0));
                    }

                }
                FlexibleCounterFragment.access$200(this$0, getActivity());
            }

            
            {
                this$1 = FlexibleCounterFragment._cls2.this;
                super();
            }
        });
        view.().show();
    }

    _cls2.this._cls1()
    {
        this$0 = FlexibleCounterFragment.this;
        super();
    }
}
