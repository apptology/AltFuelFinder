// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.apache.http.client.utils;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;
import org.apache.http.Header;
import org.apache.http.HeaderElement;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

public class URLEncodedUtils
{

    public static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String NAME_VALUE_SEPARATOR = "=";
    private static final String PARAMETER_SEPARATOR = "&";

    public URLEncodedUtils()
    {
    }

    private static String decode(String s, String s1)
    {
        if (s1 == null)
        {
            s1 = "ISO-8859-1";
        }
        try
        {
            return URLDecoder.decode(s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(s);
        }
    }

    private static String encode(String s, String s1)
    {
        if (s1 == null)
        {
            s1 = "ISO-8859-1";
        }
        try
        {
            return URLEncoder.encode(s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            throw new IllegalArgumentException(s);
        }
    }

    public static String format(List list, String s)
    {
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            list = (NameValuePair)iterator.next();
            String s1 = encode(list.getName(), s);
            list = list.getValue();
            if (list != null)
            {
                list = encode(list, s);
            } else
            {
                list = "";
            }
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append("&");
            }
            stringbuilder.append(s1);
            stringbuilder.append("=");
            stringbuilder.append(list);
        }
        return stringbuilder.toString();
    }

    public static boolean isEncoded(HttpEntity httpentity)
    {
        boolean flag1 = false;
        httpentity = httpentity.getContentType();
        boolean flag = flag1;
        if (httpentity != null)
        {
            httpentity = httpentity.getElements();
            flag = flag1;
            if (httpentity.length > 0)
            {
                flag = httpentity[0].getName().equalsIgnoreCase("application/x-www-form-urlencoded");
            }
        }
        return flag;
    }

    public static List parse(URI uri, String s)
    {
        List list = Collections.emptyList();
        String s1 = uri.getRawQuery();
        uri = list;
        if (s1 != null)
        {
            uri = list;
            if (s1.length() > 0)
            {
                uri = new ArrayList();
                parse(((List) (uri)), new Scanner(s1), s);
            }
        }
        return uri;
    }

    public static List parse(HttpEntity httpentity)
        throws IOException
    {
        List list = Collections.emptyList();
        Object obj2 = null;
        Object obj1 = null;
        Header header = httpentity.getContentType();
        Object obj = obj1;
        String s = obj2;
        if (header != null)
        {
            HeaderElement aheaderelement[] = header.getElements();
            obj = obj1;
            s = obj2;
            if (aheaderelement.length > 0)
            {
                obj = aheaderelement[0];
                String s1 = ((HeaderElement) (obj)).getName();
                NameValuePair namevaluepair = ((HeaderElement) (obj)).getParameterByName("charset");
                obj = obj1;
                s = s1;
                if (namevaluepair != null)
                {
                    obj = namevaluepair.getValue();
                    s = s1;
                }
            }
        }
        obj1 = list;
        if (s != null)
        {
            obj1 = list;
            if (s.equalsIgnoreCase("application/x-www-form-urlencoded"))
            {
                httpentity = EntityUtils.toString(httpentity, "ASCII");
                obj1 = list;
                if (httpentity != null)
                {
                    obj1 = list;
                    if (httpentity.length() > 0)
                    {
                        obj1 = new ArrayList();
                        parse(((List) (obj1)), new Scanner(httpentity), ((String) (obj)));
                    }
                }
            }
        }
        return ((List) (obj1));
    }

    public static void parse(List list, Scanner scanner, String s)
    {
        scanner.useDelimiter("&");
        String s1;
        String s2;
        for (; scanner.hasNext(); list.add(new BasicNameValuePair(s2, s1)))
        {
            String as[] = scanner.next().split("=");
            if (as.length == 0 || as.length > 2)
            {
                throw new IllegalArgumentException("bad parameter");
            }
            s2 = decode(as[0], s);
            s1 = null;
            if (as.length == 2)
            {
                s1 = decode(as[1], s);
            }
        }

    }
}
