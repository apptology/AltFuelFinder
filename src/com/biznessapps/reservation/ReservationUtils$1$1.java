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

class this._cls0
    implements Runnable
{

    final l.holdActivity this$0;

    public void run()
    {
        Intent intent = new Intent(holdActivity.getApplicationContext(), ActivitySelector.getActivityClass("ReservationLoginViewController"));
        String s = holdActivity.getIntent().getStringExtra("TAB_SPECIAL_ID");
        intent.putExtra("TAB_FRAGMENT", "ReservationLoginViewController");
        intent.putExtra("TAB_LABEL", holdActivity.getString(com.biznessapps.layout.._cls1.val.holdActivity));
        intent.putExtra("TAB_SPECIAL_ID", s);
        holdActivity.startActivityForResult(intent, 0);
    }

    l.holdActivity()
    {
        this$0 = this._cls0.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/reservation/ReservationUtils$1

/* anonymous class */
    static final class ReservationUtils._cls1
        implements Runnable
    {

        final Activity val$holdActivity;

        public void run()
        {
            if (holdActivity != null)
            {
                ViewUtils.showDialog(holdActivity, holdActivity.getString(com.biznessapps.layout.R.string.token_issue), holdActivity.getString(com.biznessapps.layout.R.string.login_again), new ReservationUtils._cls1._cls1());
            }
        }

            
            {
                holdActivity = activity;
                super();
            }
    }

}
