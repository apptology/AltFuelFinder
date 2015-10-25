// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.paypal.android.sdk;

import java.util.Comparator;
import java.util.Currency;

final class bU
    implements Comparator
{

    bU()
    {
    }

    public final int compare(Object obj, Object obj1)
    {
        obj = (Currency)obj;
        obj1 = (Currency)obj1;
        return ((Currency) (obj)).getCurrencyCode().compareTo(((Currency) (obj1)).getCurrencyCode());
    }
}
