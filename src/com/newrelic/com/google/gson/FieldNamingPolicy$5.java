// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.newrelic.com.google.gson;

import java.lang.reflect.Field;

// Referenced classes of package com.newrelic.com.google.gson:
//            FieldNamingPolicy

static final class nit> extends FieldNamingPolicy
{

    public String translateName(Field field)
    {
        return FieldNamingPolicy.access$200(field.getName(), "-").toLowerCase();
    }

    (String s, int i)
    {
        super(s, i, null);
    }
}
