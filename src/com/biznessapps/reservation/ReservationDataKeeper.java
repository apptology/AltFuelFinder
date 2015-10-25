// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import com.biznessapps.common.entities.CommonEntity;
import java.util.Date;
import java.util.List;

public class ReservationDataKeeper extends CommonEntity
{
    public static class BlockedDayEntity
    {

        private Date date;
        private String note;

        public Date getDate()
        {
            return date;
        }

        public String getNote()
        {
            return note;
        }

        public void setDate(Date date1)
        {
            date = date1;
        }

        public void setNote(String s)
        {
            note = s;
        }

        public BlockedDayEntity()
        {
        }
    }

    public static class PaymentMethod
    {

        private String currency;
        private String gatewayAppId;
        private String gatewayKey;
        private String gatewayPassword;
        private String gatewayTitle;
        private int gatewayType;
        private String others;

        public String getCurrency()
        {
            return currency;
        }

        public String getGatewayAppId()
        {
            return gatewayAppId;
        }

        public String getGatewayKey()
        {
            return gatewayKey;
        }

        public String getGatewayPassword()
        {
            return gatewayPassword;
        }

        public String getGatewayTitle()
        {
            return gatewayTitle;
        }

        public int getGatewayType()
        {
            return gatewayType;
        }

        public String getOthers()
        {
            return others;
        }

        public void setCurrency(String s)
        {
            currency = s;
        }

        public void setGatewayAppId(String s)
        {
            gatewayAppId = s;
        }

        public void setGatewayKey(String s)
        {
            gatewayKey = s;
        }

        public void setGatewayPassword(String s)
        {
            gatewayPassword = s;
        }

        public void setGatewayTitle(String s)
        {
            gatewayTitle = s;
        }

        public void setGatewayType(int i)
        {
            gatewayType = i;
        }

        public void setOthers(String s)
        {
            others = s;
        }

        public PaymentMethod()
        {
        }
    }


    private static final long serialVersionUID = 0x44c8f0368a984e67L;
    private String adminEmail;
    private String backgroundUrl;
    private List blockedDays;
    private String brief;
    private String headerImage;
    private boolean isLoggedIn;
    private List locations;
    private List openTimes;
    private List paymentMethods;
    private String sessionToken;
    private String userEmail;
    private String userFirstName;
    private String userLastName;
    private String userPhone;

    public ReservationDataKeeper()
    {
    }

    public String getAdminEmail()
    {
        return adminEmail;
    }

    public String getBackgroundUrl()
    {
        return backgroundUrl;
    }

    public List getBlockedDays()
    {
        return blockedDays;
    }

    public String getBrief()
    {
        return brief;
    }

    public String getHeaderImage()
    {
        return headerImage;
    }

    public List getLocations()
    {
        return locations;
    }

    public List getOpenTimes()
    {
        return openTimes;
    }

    public List getPaymentMethods()
    {
        return paymentMethods;
    }

    public String getSessionToken()
    {
        return sessionToken;
    }

    public String getUserEmail()
    {
        return userEmail;
    }

    public String getUserFirstName()
    {
        return userFirstName;
    }

    public String getUserLastName()
    {
        return userLastName;
    }

    public String getUserPhone()
    {
        return userPhone;
    }

    public boolean isLoggedIn()
    {
        return isLoggedIn && sessionToken != null;
    }

    public void setAdminEmail(String s)
    {
        adminEmail = s;
    }

    public void setBackground(String s)
    {
        backgroundUrl = s;
    }

    public void setBlockedDays(List list)
    {
        blockedDays = list;
    }

    public void setBrief(String s)
    {
        brief = s;
    }

    public void setHeaderImage(String s)
    {
        headerImage = s;
    }

    public void setLocations(List list)
    {
        locations = list;
    }

    public void setLoggedIn(boolean flag)
    {
        isLoggedIn = flag;
        if (!flag)
        {
            sessionToken = null;
        }
    }

    public void setOpenTimes(List list)
    {
        openTimes = list;
    }

    public void setPaymentMethods(List list)
    {
        paymentMethods = list;
    }

    public void setSessionToken(String s)
    {
        sessionToken = s;
    }

    public void setUserEmail(String s)
    {
        userEmail = s;
    }

    public void setUserFirstName(String s)
    {
        userFirstName = s;
    }

    public void setUserLastName(String s)
    {
        userLastName = s;
    }

    public void setUserPhone(String s)
    {
        userPhone = s;
    }
}
