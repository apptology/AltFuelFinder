// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.braintreepayments.api;

import com.braintreepayments.api.models.PaymentMethod;

// Referenced classes of package com.braintreepayments.api:
//            Braintree

public static interface 
    extends 
{

    public abstract void onPaymentMethodCreated(PaymentMethod paymentmethod);
}
