// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.utils.ViewUtils;

public class ReservationUtils
{

    public ReservationUtils()
    {
    }

    public static void showInvalidTokenDialog(Activity activity, Handler handler)
    {
        handler.post(new Runnable(activity) {

            final Activity val$holdActivity;

            public void run()
            {
                if (holdActivity != null)
                {
                    ViewUtils.showDialog(holdActivity, holdActivity.getString(com.biznessapps.layout.R.string.token_issue), holdActivity.getString(com.biznessapps.layout.R.string.login_again), new Runnable() {

                        final _cls1 this$0;

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
                this$0 = _cls1.this;
                super();
            }
                    });
                }
            }

            
            {
                holdActivity = activity;
                super();
            }
        });
    }
}
