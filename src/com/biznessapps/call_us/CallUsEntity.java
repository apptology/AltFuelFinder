// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.call_us;

import com.biznessapps.common.entities.CommonListEntity;

public class CallUsEntity extends CommonListEntity
{

    private static final long serialVersionUID = 0xc77deb45e103fa68L;
    private String phone;

    public CallUsEntity()
    {
    }

    public String getPhone()
    {
        return phone;
    }

    public void setPhone(String s)
    {
        phone = s;
    }
}
