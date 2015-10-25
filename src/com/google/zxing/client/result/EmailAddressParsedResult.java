// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.zxing.client.result;


// Referenced classes of package com.google.zxing.client.result:
//            ParsedResult, ParsedResultType

public final class EmailAddressParsedResult extends ParsedResult
{

    private final String bccs[];
    private final String body;
    private final String ccs[];
    private final String subject;
    private final String tos[];

    EmailAddressParsedResult(String s)
    {
        this(new String[] {
            s
        }, null, null, null, null);
    }

    EmailAddressParsedResult(String as[], String as1[], String as2[], String s, String s1)
    {
        super(ParsedResultType.EMAIL_ADDRESS);
        tos = as;
        ccs = as1;
        bccs = as2;
        subject = s;
        body = s1;
    }

    public String[] getBCCs()
    {
        return bccs;
    }

    public String getBody()
    {
        return body;
    }

    public String[] getCCs()
    {
        return ccs;
    }

    public String getDisplayResult()
    {
        StringBuilder stringbuilder = new StringBuilder(30);
        maybeAppend(tos, stringbuilder);
        maybeAppend(ccs, stringbuilder);
        maybeAppend(bccs, stringbuilder);
        maybeAppend(subject, stringbuilder);
        maybeAppend(body, stringbuilder);
        return stringbuilder.toString();
    }

    public String getEmailAddress()
    {
        if (tos == null || tos.length == 0)
        {
            return null;
        } else
        {
            return tos[0];
        }
    }

    public String getMailtoURI()
    {
        return "mailto:";
    }

    public String getSubject()
    {
        return subject;
    }

    public String[] getTos()
    {
        return tos;
    }
}
