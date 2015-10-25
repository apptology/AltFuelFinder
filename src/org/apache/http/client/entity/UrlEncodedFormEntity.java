// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.entity;

import java.io.UnsupportedEncodingException;
import java.util.List;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.entity.StringEntity;

public class UrlEncodedFormEntity extends StringEntity
{

    public UrlEncodedFormEntity(List list)
        throws UnsupportedEncodingException
    {
        this(list, "ISO-8859-1");
    }

    public UrlEncodedFormEntity(List list, String s)
        throws UnsupportedEncodingException
    {
        super(URLEncodedUtils.format(list, s), s);
        list = (new StringBuilder()).append("application/x-www-form-urlencoded; charset=");
        if (s == null)
        {
            s = "ISO-8859-1";
        }
        setContentType(list.append(s).toString());
    }
}
