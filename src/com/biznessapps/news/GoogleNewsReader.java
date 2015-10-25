// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.biznessapps.news:
//            RssPullParser, SearchEntity

public class GoogleNewsReader
{

    private static final String SEARCH_URL_PATTERN = "https://news.google.com/news/feeds?q=%s&output=rss&num=50";
    private InputStream is;
    private RssPullParser parser;
    private String query;

    public GoogleNewsReader(String s)
    {
        query = s;
    }

    public void close()
    {
        try
        {
            is.close();
            return;
        }
        catch (Exception exception)
        {
            Log.w("GoogleNewsReader", "InputStream.close() exception");
        }
    }

    public SearchEntity next()
        throws XmlPullParserException, IOException
    {
        return parser.next();
    }

    public void prepare()
        throws XmlPullParserException, IOException
    {
        is = (new URL(String.format("https://news.google.com/news/feeds?q=%s&output=rss&num=50", new Object[] {
            URLEncoder.encode(query)
        }))).openConnection().getInputStream();
        parser = new RssPullParser(is);
        parser.prepare();
    }
}
