// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.email_photo;

import com.biznessapps.common.entities.CommonEntity;

public class EmailPhotoEntity extends CommonEntity
{

    private static final long serialVersionUID = 0x443dab90097f7ba6L;
    private String email;
    private String subject;

    public EmailPhotoEntity()
    {
    }

    public String getEmail()
    {
        return email;
    }

    public String getSubject()
    {
        return subject;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setSubject(String s)
    {
        subject = s;
    }
}
