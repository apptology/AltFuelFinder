// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.food_ordering.account;

import android.text.TextUtils;
import com.biznessapps.common.entities.CommonListEntity;

public class AccountEntity extends CommonListEntity
{

    public static final int MY_ADDRESSES_TYPE = 2;
    public static final int PAST_ORDERS_TYPE = 1;
    private static final long serialVersionUID = 0x5a3fcf87378a8331L;
    private String address1;
    private String address2;
    private String email;
    private String firstName;
    private String lastName;
    private String latitude;
    private String longitude;
    private String nickName;
    private String phone;
    private int type;
    private String zipcode;

    public AccountEntity()
    {
    }

    public String getAddress1()
    {
        return address1;
    }

    public String getAddress2()
    {
        return address2;
    }

    public String getEmail()
    {
        return email;
    }

    public String getFirstName()
    {
        return firstName;
    }

    public String getLastName()
    {
        return lastName;
    }

    public String getLatitude()
    {
        return latitude;
    }

    public String getLongitude()
    {
        return longitude;
    }

    public String getNickName()
    {
        return nickName;
    }

    public String getPhone()
    {
        return phone;
    }

    public int getType()
    {
        return type;
    }

    public String getZipcode()
    {
        return zipcode;
    }

    public void setAddress1(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            address1 = s;
        }
    }

    public void setAddress2(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            address2 = s;
        }
    }

    public void setEmail(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            email = s;
        }
    }

    public void setFirstName(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            firstName = s;
        }
    }

    public void setLastName(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            lastName = s;
        }
    }

    public void setLatitude(String s)
    {
        latitude = s;
    }

    public void setLongitude(String s)
    {
        longitude = s;
    }

    public void setNickName(String s)
    {
        nickName = s;
    }

    public void setPhone(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            phone = s;
        }
    }

    public void setType(int i)
    {
        type = i;
    }

    public void setZipcode(String s)
    {
        if (!TextUtils.isEmpty(s))
        {
            zipcode = s;
        }
    }
}
