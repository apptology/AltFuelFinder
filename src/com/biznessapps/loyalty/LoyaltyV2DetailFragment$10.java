// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Iterator;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2DetailFragment, LoyaltyV2Entity

class val.progressDialog extends AsyncCallback
{

    final LoyaltyV2DetailFragment this$0;
    final Runnable val$errorRunable;
    final String val$perkId;
    final ProgressDialog val$progressDialog;
    final Runnable val$successRunnable;

    public void onError(String s, Throwable throwable)
    {
        super.onError(s, throwable);
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.failure));
        val$progressDialog.dismiss();
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        s = new JSONObject(s);
        if (s.getInt("success") != 1)
        {
            break MISSING_BLOCK_LABEL_163;
        }
        int i = s.getInt("new_count");
        LoyaltyV2DetailFragment.access$300(LoyaltyV2DetailFragment.this).setAwardedValue(i);
        s = JsonParser.getJSONValue(s, "user_loyalty_perk");
        if (s == null) goto _L2; else goto _L1
_L1:
        Iterator iterator = s.keys();
        if (s == null || iterator == null) goto _L2; else goto _L3
_L3:
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (JsonParser.getIntValue(s, s1) == -1 && s1.equals(val$perkId))
            {
                LoyaltyV2DetailFragment.access$300(LoyaltyV2DetailFragment.this).markAsConsumed(val$perkId);
            }
        } while (true);
          goto _L2
_L4:
        val$progressDialog.dismiss();
        return;
_L2:
        try
        {
            getActivity().runOnUiThread(val$successRunnable);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            getActivity().runOnUiThread(val$errorRunable);
        }
          goto _L4
        getActivity().runOnUiThread(val$errorRunable);
          goto _L4
    }

    ()
    {
        this$0 = final_loyaltyv2detailfragment;
        val$perkId = s;
        val$successRunnable = runnable;
        val$errorRunable = runnable1;
        val$progressDialog = ProgressDialog.this;
        super();
    }
}
