// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.ViewUtils;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1DetailFragment, LoyaltyV1Entity

class val.progressDialog extends AsyncCallback
{

    final LoyaltyV1DetailFragment this$0;
    final Runnable val$errorRunable;
    final ProgressDialog val$progressDialog;
    final Runnable val$successRunnable;

    public void onError(String s, Throwable throwable)
    {
        super.onError(s, throwable);
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout._failure));
        val$progressDialog.dismiss();
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        s = new JSONObject(s);
        if (s.getInt("success") != 1) goto _L2; else goto _L1
_L1:
        int i = s.getInt("new_count");
        LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this).setApprovedCount(i);
        StorageKeeper.instance().saveLoyaltyItem(LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this));
        if (!LoyaltyV1DetailFragment.access$400(LoyaltyV1DetailFragment.this).stampCompleted()) goto _L4; else goto _L3
_L3:
        LoyaltyV1DetailFragment.access$902(LoyaltyV1DetailFragment.this, 2);
_L5:
        getActivity().runOnUiThread(val$successRunnable);
_L6:
        val$progressDialog.dismiss();
        return;
_L4:
        LoyaltyV1DetailFragment.access$902(LoyaltyV1DetailFragment.this, 0);
          goto _L5
        s;
        s.printStackTrace();
        if (val$errorRunable != null)
        {
            getActivity().runOnUiThread(val$errorRunable);
        }
          goto _L6
_L2:
        if (val$errorRunable == null) goto _L6; else goto _L7
_L7:
        getActivity().runOnUiThread(val$errorRunable);
          goto _L6
    }

    ()
    {
        this$0 = final_loyaltyv1detailfragment;
        val$successRunnable = runnable;
        val$errorRunable = runnable1;
        val$progressDialog = ProgressDialog.this;
        super();
    }
}
