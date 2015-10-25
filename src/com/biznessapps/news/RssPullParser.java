// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import android.util.Log;
import android.util.Xml;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

// Referenced classes of package com.biznessapps.news:
//            SearchEntity

public class RssPullParser
{

    static final String CHANNEL = "channel";
    static final String DESCRIPTION = "description";
    static final String ITEM = "item";
    static final String LINK = "link";
    static final String PUB_DATE = "pubDate";
    static final String TAG = "RssPullParser";
    static final String TITLE = "title";
    private SearchEntity currentMessage;
    private InputStream is;
    private XmlPullParser parser;

    public RssPullParser(InputStream inputstream)
    {
        is = inputstream;
    }

    private void parseDescriptionHtml(String s, SearchEntity searchentity)
    {
        if (s == null)
        {
            Log.w("RssPullParser", "description is null");
        } else
        {
            int i = s.indexOf("<td ", 0);
            if (i < 0)
            {
                Log.w("RssPullParser", "incorrect description structure");
                return;
            }
            i = s.indexOf("<td ", i + 1);
            if (i < 0)
            {
                Log.w("RssPullParser", "incorrect description structure");
                return;
            }
            i = s.indexOf("</div><div", i + 1);
            if (i < 0)
            {
                Log.w("RssPullParser", "incorrect description structure");
                return;
            }
            i = s.indexOf(">", i + 10 + 1);
            if (i < 0)
            {
                Log.w("RssPullParser", "incorrect description structure");
                return;
            }
            int k = s.indexOf("</div>", i + 1);
            if (k < 0)
            {
                Log.w("RssPullParser", "incorrect description structure");
                return;
            }
            String s3 = new String(s.substring(i + 1, k));
            i = s3.indexOf(">", s3.indexOf("<font", s3.indexOf("<font", k)));
            String s2 = s3.substring(i + 1, s3.indexOf("</font>", i));
            i = s2.indexOf("\">");
            String s1 = s2;
            if (i > 0)
            {
                s1 = s2.substring(i + 2);
            }
            searchentity.setName(s1);
            i = s3.indexOf(">", s3.indexOf("<font", s3.indexOf("<font", s3.indexOf("<font") + 1) + 1) + 1);
            searchentity.setText(s3.substring(i + 1, s3.indexOf("</font>", i + 1)));
            if (s.contains("<img src=\""))
            {
                int j = s.indexOf("<img src=\"") + 12;
                searchentity.setImageUrl(s.substring(j, s.indexOf("\"", j)));
                return;
            }
        }
    }

    public SearchEntity next()
        throws XmlPullParserException, IOException
    {
        SearchEntity searchentity;
        int i;
        boolean flag;
        searchentity = null;
        i = parser.getEventType();
        flag = false;
_L2:
        SearchEntity searchentity1;
        if (i == 1 || flag)
        {
            break MISSING_BLOCK_LABEL_342;
        }
        switch (i)
        {
        default:
            searchentity1 = searchentity;
            i = ((flag) ? 1 : 0);
            break;

        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
            break MISSING_BLOCK_LABEL_276;
        }
_L3:
        int j = parser.next();
        flag = i;
        i = j;
        searchentity = searchentity1;
        if (true) goto _L2; else goto _L1
_L1:
        String s = parser.getName();
        if ("item".equalsIgnoreCase(s))
        {
            currentMessage = new SearchEntity();
            i = 1;
            searchentity1 = searchentity;
        } else
        {
            i = ((flag) ? 1 : 0);
            searchentity1 = searchentity;
            if (currentMessage != null)
            {
                if ("link".equalsIgnoreCase(s))
                {
                    currentMessage.setLink(parser.nextText());
                    i = ((flag) ? 1 : 0);
                    searchentity1 = searchentity;
                } else
                if ("description".equalsIgnoreCase(s))
                {
                    parseDescriptionHtml(parser.nextText(), currentMessage);
                    i = ((flag) ? 1 : 0);
                    searchentity1 = searchentity;
                } else
                if ("title".equalsIgnoreCase(s))
                {
                    currentMessage.setTitle(parser.nextText());
                    i = ((flag) ? 1 : 0);
                    searchentity1 = searchentity;
                } else
                {
                    i = ((flag) ? 1 : 0);
                    searchentity1 = searchentity;
                    if ("pubDate".equalsIgnoreCase(s))
                    {
                        currentMessage.setNewsDate(parser.nextText());
                        i = ((flag) ? 1 : 0);
                        searchentity1 = searchentity;
                    }
                }
            }
        }
          goto _L3
        String s1 = parser.getName();
        if ("item".equalsIgnoreCase(s1) && currentMessage != null)
        {
            searchentity1 = currentMessage;
            currentMessage = null;
            i = ((flag) ? 1 : 0);
        } else
        {
            i = ((flag) ? 1 : 0);
            searchentity1 = searchentity;
            if ("channel".equalsIgnoreCase(s1))
            {
                i = 1;
                searchentity1 = searchentity;
            }
        }
          goto _L3
        return searchentity;
    }

    public void prepare()
        throws XmlPullParserException, IOException
    {
        boolean flag1;
        int i;
        parser = Xml.newPullParser();
        parser.setInput(is, null);
        i = parser.getEventType();
        flag1 = false;
_L2:
        boolean flag;
        if (i == 1 || flag1)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        flag = flag1;
        switch (i)
        {
        default:
            flag = flag1;
            break;

        case 0: // '\0'
        case 1: // '\001'
            break;

        case 2: // '\002'
            break; /* Loop/switch isn't completed */

        case 3: // '\003'
            break MISSING_BLOCK_LABEL_128;
        }
_L3:
        i = parser.next();
        flag1 = flag;
        if (true) goto _L2; else goto _L1
_L1:
        flag = flag1;
        if (parser.getName().equalsIgnoreCase("item"))
        {
            currentMessage = new SearchEntity();
            flag = true;
        }
          goto _L3
        flag = flag1;
        if (parser.getName().equalsIgnoreCase("channel"))
        {
            flag = true;
        }
          goto _L3
    }
}
