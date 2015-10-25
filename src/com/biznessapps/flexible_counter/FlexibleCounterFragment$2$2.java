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

class this._cls1
    implements android.content.ner
{

    final this._cls1 this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/flexible_counter/FlexibleCounterFragment$2

/* anonymous class */
    class FlexibleCounterFragment._cls2
        implements android.view.View.OnClickListener
    {

        final FlexibleCounterFragment this$0;

        public void onClick(View view)
        {
            view = new android.app.AlertDialog.Builder(getHoldActivity());
            view.setMessage(com.biznessapps.layout.R.string.sport_stats_clear_text).setNegativeButton(com.biznessapps.layout.R.string.no, new FlexibleCounterFragment._cls2._cls2()).setPositiveButton(com.biznessapps.layout.R.string.ok, new FlexibleCounterFragment._cls2._cls1());
            view.create().show();
        }

            
            {
                this$0 = FlexibleCounterFragment.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/flexible_counter/FlexibleCounterFragment$2$1

/* anonymous class */
        class FlexibleCounterFragment._cls2._cls1
            implements android.content.DialogInterface.OnClickListener
        {

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
        }

    }

}
