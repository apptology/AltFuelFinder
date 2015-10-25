// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account.address;

import android.app.Activity;
import android.location.Geocoder;
import android.view.ViewGroup;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.activities.CommonFragmentActivity;
import java.io.IOException;
import java.util.List;

// Referenced classes of package com.biznessapps.food_ordering.account.address:
//            ChooseLocationFragment

private class this._cls0 extends UnModalAsyncTask
{

    final ChooseLocationFragment this$0;

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected transient List doInBackground(String as[])
    {
        Geocoder geocoder = new Geocoder(getApplicationContext());
        Object obj = null;
        try
        {
            as = geocoder.getFromLocationName(as[0], 5);
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            as.printStackTrace();
            as = obj;
        }
        return ChooseLocationFragment.access$800(ChooseLocationFragment.this, as);
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
label0:
        {
            if (activity != null && (activity instanceof CommonFragmentActivity) && ((CommonFragmentActivity)activity).isActive())
            {
                ((CommonFragmentActivity)activity).getProgressBarContainer().removeAllViews();
                if (list == null || list.isEmpty())
                {
                    break label0;
                }
                ChooseLocationFragment.access$900(ChooseLocationFragment.this, getHoldActivity(), list);
            }
            return;
        }
        ChooseLocationFragment.access$1000(ChooseLocationFragment.this, getHoldActivity());
    }

    protected void placeProgressBar()
    {
        if (activity != null && (activity instanceof CommonFragmentActivity))
        {
            ((CommonFragmentActivity)activity).getProgressBarContainer().addView(progressBar);
        }
    }

    public (Activity activity, List list)
    {
        this$0 = ChooseLocationFragment.this;
        super(activity, list);
    }
}
