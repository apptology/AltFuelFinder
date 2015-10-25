// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation.entities;

import com.biznessapps.common.entities.MapEntity;

public class ReservationBillingAddressItem extends MapEntity
{

    private static final long serialVersionUID = 0xef9fdb64cd3ea139L;
    private String company;
    private String country;
    private String fax;
    private String firstName;
    private String lastName;
    private String phone;

    public ReservationBillingAddressItem()
    {
    }

    public String getCompany()
    {
        return company;
    }

    public String getCountry()
    {
        return country;
    }

    public String getFax()
    {
        return fax;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public String getPhone()
    {
        return phone;
    }

    public void setCompany(String s)
    {
        company = s;
    }

    public void setCountry(String s)
    {
        country = s;
    }

    public void setFax(String s)
    {
        fax = s;
    }

    public void setFirstName(String s)
    {
        firstName = s;
    }

    public void setLastName(String s)
    {
        lastName = s;
    }

    public void setPhone(String s)
    {
        phone = s;
    }
}
