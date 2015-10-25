// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.paypal.android.sdk.payments.PayPalConfiguration;
import com.paypal.android.sdk.payments.PayPalPayment;
import com.paypal.android.sdk.payments.PayPalService;
import com.paypal.android.sdk.payments.PaymentActivity;
import com.paypal.android.sdk.payments.PaymentConfirmation;
import com.paypal.android.sdk.payments.ProofOfPayment;
import java.math.BigDecimal;

public class PaymentIntegrateFragment extends CommonFragment
{

    private static final int REQUEST_CODE_PAYMENT = 1;
    private String clientId;
    private String currency;
    private String serviceName;
    private float subTotal;

    public PaymentIntegrateFragment()
    {
    }

    private void doPayment()
    {
        PayPalPayment paypalpayment = getThingToBuy("sale");
        Intent intent = new Intent(getHoldActivity(), com/paypal/android/sdk/payments/PaymentActivity);
        intent.putExtra("com.paypal.android.sdk.payment", paypalpayment);
        startActivityForResult(intent, 1);
    }

    private PayPalConfiguration getConfig(String s)
    {
        String s1;
        if (UrlWrapper.getInstance().isUseSandbox())
        {
            s1 = "sandbox";
        } else
        {
            s1 = "live";
        }
        return (new PayPalConfiguration()).environment(s1).clientId(s);
    }

    private PayPalPayment getThingToBuy(String s)
    {
        return new PayPalPayment(BigDecimal.valueOf(subTotal), currency, serviceName, s);
    }

    private void initValues()
    {
        Intent intent = getIntent();
        currency = intent.getStringExtra("CURRENCY_EXTRA");
        serviceName = intent.getStringExtra("serviceName");
        subTotal = intent.getFloatExtra("subTotal", 0.0F);
    }

    private void sendResult(int i)
    {
        getHoldActivity().setResult(i);
        getHoldActivity().finish();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_payment_layout;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (i == 1)
        {
            if (j == -1)
            {
                intent = (PaymentConfirmation)intent.getParcelableExtra("com.paypal.android.sdk.paymentConfirmation");
                if (intent != null)
                {
                    intent = intent.getProofOfPayment().getPaymentId();
                    cacher().saveData("paymentTransactionID", intent);
                    sendResult(10);
                }
            } else
            {
                if (j == 0)
                {
                    sendResult(12);
                    return;
                }
                if (j == 2)
                {
                    sendResult(11);
                    return;
                }
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initSettingsData();
        initValues();
        clientId = getIntent().getStringExtra("CLIENT_ID_EXTRA");
        layoutinflater = new Intent(getHoldActivity(), com/paypal/android/sdk/payments/PayPalService);
        layoutinflater.putExtra("com.paypal.android.sdk.paypalConfiguration", getConfig(clientId));
        getHoldActivity().startService(layoutinflater);
        doPayment();
        return root;
    }

    public void onDestroy()
    {
        getHoldActivity().stopService(new Intent(getHoldActivity(), com/paypal/android/sdk/payments/PayPalService));
        super.onDestroy();
    }
}
