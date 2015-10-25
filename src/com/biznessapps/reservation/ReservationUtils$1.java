// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.content.Intent;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationUtils

static final class val.holdActivity
    implements Runnable
{

    final Activity val$holdActivity;

    public void run()
    {
        if (val$holdActivity != null)
        {
            ViewUtils.showDialog(val$holdActivity, val$holdActivity.getString(com.biznessapps.layout.e), val$holdActivity.getString(com.biznessapps.layout.n), new Runnable() {

                final ReservationUtils._cls1 this$0;

                public void run()
                {
                    Intent intent = new Intent(holdActivity.getApplicationContext(), ActivitySelector.getActivityClass("ReservationLoginViewController"));
                    String s = holdActivity.getIntent().getStringExtra("TAB_SPECIAL_ID");
                    intent.putExtra("TAB_FRAGMENT", "ReservationLoginViewController");
                    intent.putExtra("TAB_LABEL", holdActivity.getString(com.biznessapps.layout.R.string.login));
                    intent.putExtra("TAB_SPECIAL_ID", s);
                    holdActivity.startActivityForResult(intent, 0);
                }

            
            {
                this$0 = ReservationUtils._cls1.this;
                super();
            }
            });
        }
    }

    _cls1.this._cls0(Activity activity)
    {
        val$holdActivity = activity;
        super();
    }
}
