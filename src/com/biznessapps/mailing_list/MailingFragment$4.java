// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mailing_list;

import android.app.Activity;
import android.view.ViewGroup;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.List;

// Referenced classes of package com.biznessapps.mailing_list:
//            MailingFragment

class val.userComments extends UnModalAsyncTask
{

    final MailingFragment this$0;
    final String val$tabParam;
    final String val$userBirthday;
    final String val$userComments;
    final String val$userCountry;
    final String val$userEmail;
    final String val$userName;
    final String val$userZip;

    protected transient Boolean doInBackground(Void avoid[])
    {
        boolean flag;
        if (!JsonParser.hasDataError(AppHttpUtils.addToMailingList(val$userName, val$userEmail, cacher().getAppCode(), val$tabParam, MailingFragment.access$400(MailingFragment.this, MailingFragment.access$300(MailingFragment.this)), val$userBirthday, val$userZip, val$userCountry, val$userComments)))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return Boolean.valueOf(flag);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected void onPostExecute(Boolean boolean1)
    {
        super.onPostExecute(boolean1);
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            ((CommonFragmentActivity)commonfragmentactivity).getProgressBarContainer().removeAllViews();
            int i;
            if (boolean1.booleanValue())
            {
                i = com.biznessapps.layout.ist_add_success;
            } else
            {
                i = com.biznessapps.layout.ured;
            }
            ViewUtils.showCustomToast(getApplicationContext(), getString(i));
            if (boolean1.booleanValue())
            {
                commonfragmentactivity.finish();
            }
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean)obj);
    }

    protected void placeProgressBar()
    {
        ((CommonFragmentActivity)activity).getProgressBarContainer().addView(progressBar);
    }

    tActivity(String s5, String s6)
    {
        this$0 = final_mailingfragment;
        val$userName = s;
        val$userEmail = s1;
        val$tabParam = s2;
        val$userBirthday = s3;
        val$userZip = String.this;
        val$userCountry = s5;
        val$userComments = s6;
        super(final_activity, final_list);
    }
}
