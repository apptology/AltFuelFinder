// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flexible_counter;

import com.biznessapps.common.entities.CommonEntity;
import java.util.List;

public class StatFieldsEntity extends CommonEntity
{

    private static final long serialVersionUID = 0xfb0d2dc96692ad17L;
    private String email;
    private List fields;
    private String message;

    public StatFieldsEntity()
    {
    }

    public String getEmail()
    {
        return email;
    }

    public List getFields()
    {
        return fields;
    }

    public String getMessage()
    {
        return message;
    }

    public void setEmail(String s)
    {
        email = s;
    }

    public void setFields(List list)
    {
        fields = list;
    }

    public void setMessage(String s)
    {
        message = s;
    }
}
