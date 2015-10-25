// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import com.biznessapps.flickr.GalleryAlbum;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.json.JSONArray;
import org.json.JSONObject;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

public final class PicasaUtils
{

    private static final String CONTENT_TAG = "content";
    private static final String ENTRY_TAG = "entry";
    private static final String FEED_TAG = "feed";
    private static final String PHOTO_ID_TAG = "gphoto:id";
    private static final String SRC_TAG = "src";
    private static final String SUMMARY_TAG = "summary";
    private static final String TITLE_TAG = "title";

    public PicasaUtils()
    {
    }

    private static String convertToStringFromElement(Element element)
    {
        org.w3c.dom.Node node = element.getFirstChild();
        element = null;
        if (node != null)
        {
            element = ((CharacterData)node).getData();
        }
        return element;
    }

    public static String getPicasaData(String s)
    {
        StringBuilder stringbuilder;
        s = new BufferedReader(new InputStreamReader(((HttpURLConnection)(new URL(s)).openConnection()).getInputStream(), Charset.forName("utf-8")));
        stringbuilder = new StringBuilder();
_L1:
        String s1 = s.readLine();
label0:
        {
            if (s1 == null)
            {
                break label0;
            }
            try
            {
                stringbuilder.append((new StringBuilder()).append(s1).append("\n").toString());
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                s.printStackTrace();
                return null;
            }
        }
          goto _L1
        s = stringbuilder.toString();
        return s;
    }

    public static List parseGalleryList(String s)
    {
        ArrayList arraylist = new ArrayList();
        DocumentBuilder documentbuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
        InputSource inputsource = new InputSource();
        inputsource.setCharacterStream(new StringReader(s));
        s = documentbuilder.parse(inputsource).getElementsByTagName("entry");
        int i = 0;
_L2:
        if (i >= s.getLength())
        {
            break; /* Loop/switch isn't completed */
        }
        Element element = (Element)s.item(i);
        GalleryAlbum galleryalbum = new GalleryAlbum();
        galleryalbum.setId(convertToStringFromElement((Element)element.getElementsByTagName("gphoto:id").item(0)));
        galleryalbum.setTitle(convertToStringFromElement((Element)element.getElementsByTagName("title").item(0)));
        galleryalbum.setDescription(convertToStringFromElement((Element)element.getElementsByTagName("summary").item(0)));
        arraylist.add(galleryalbum);
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }

    public static List parsePhotosList(String s)
    {
        ArrayList arraylist = new ArrayList();
        s = (new JSONObject(s)).getJSONObject("feed").getJSONArray("entry");
        int i = 0;
_L2:
        if (i >= s.length())
        {
            break; /* Loop/switch isn't completed */
        }
        arraylist.add(s.getJSONObject(i).getJSONObject("content").getString("src"));
        i++;
        if (true) goto _L2; else goto _L1
        s;
        s.printStackTrace();
_L1:
        return arraylist;
    }
}
