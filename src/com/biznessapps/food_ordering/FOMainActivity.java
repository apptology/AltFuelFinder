// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering;

import android.content.Intent;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.common.activities.SingleFragmentActivity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.food_ordering.entities.CartEntity;
import com.braintreepayments.api.Braintree;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.food_ordering:
//            FoodOrderingManager

public class FOMainActivity extends SingleFragmentActivity
{

    private String CLIENT_TOKEN_FORMAT_REQUEST;

    public FOMainActivity()
    {
        CLIENT_TOKEN_FORMAT_REQUEST = "braintree/food_payments.php?action=generateCustomerId&app_id=%s&tab_id=%s";
    }

    private void getClientToken()
    {
        String s = AppCore.getInstance().getAppSettings().getAppId();
        String s1 = getIntent().getStringExtra("TAB_SPECIAL_ID");
        AsyncCallback asynccallback = new AsyncCallback() {

            final FOMainActivity this$0;

            public void onError(String s2, Throwable throwable)
            {
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s2)
            {
                try
                {
                    s2 = (new JSONObject(s2)).optString("clientToken");
                    initBraintreeAndTest(s2);
                    return;
                }
                // Misplaced declaration of an exception variable
                catch (String s2)
                {
                    s2.printStackTrace();
                }
            }

            
            {
                this$0 = FOMainActivity.this;
                super();
            }
        };
        AppHttpUtils.executeGetRequest(String.format(CLIENT_TOKEN_FORMAT_REQUEST, new Object[] {
            s, s1
        }), asynccallback, true);
    }

    private void initBraintreeAndTest(final String clientToken)
    {
        Braintree.setup(this, clientToken, new com.braintreepayments.api.Braintree.BraintreeSetupFinishedListener() {

            final FOMainActivity this$0;
            final String val$clientToken;

            public void onBraintreeSetupFinished(boolean flag, Braintree braintree, String s, Exception exception)
            {
                if (flag)
                {
                    FoodOrderingManager.getInstance().getCart().setClientToken(clientToken);
                }
            }

            
            {
                this$0 = FOMainActivity.this;
                clientToken = s;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
        getClientToken();
    }

}
