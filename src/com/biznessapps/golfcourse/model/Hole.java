// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;

import android.content.Context;
import android.content.res.Resources;
import android.location.Location;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.json.JsonParser;
import com.google.android.gms.maps.model.LatLng;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.StringTokenizer;
import junit.framework.Assert;
import org.json.JSONException;
import org.json.JSONObject;

public class Hole
    implements Serializable
{

    private static final String JSON_GPS_FORMAT = "(%.9s, %.9s)";
    private static final long serialVersionUID = 0x304675c37194311cL;
    public transient LatLng back;
    public String description;
    public transient LatLng front;
    public int handicap;
    public int holeNumber;
    public long id;
    public String mapThumbnailUrl;
    public transient LatLng middle;
    public int par;
    public int tee1;
    public int tee2;
    public int tee3;
    public int tee4;
    public int unitType;

    public Hole(String s, int i)
    {
        front = new LatLng(0.0D, 0.0D);
        middle = new LatLng(0.0D, 0.0D);
        back = new LatLng(0.0D, 0.0D);
        try
        {
            parseJson(new JSONObject(s));
            unitType = i;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
    }

    public Hole(JSONObject jsonobject, int i)
    {
        front = new LatLng(0.0D, 0.0D);
        middle = new LatLng(0.0D, 0.0D);
        back = new LatLng(0.0D, 0.0D);
        parseJson(jsonobject);
        unitType = i;
    }

    public static float getMeter(Location location, LatLng latlng)
    {
        if (latlng == null || location == null)
        {
            return -1F;
        } else
        {
            Location location1 = new Location("");
            location1.setLatitude(latlng.latitude);
            location1.setLongitude(latlng.longitude);
            return location1.distanceTo(location);
        }
    }

    public static float getYard(Location location, LatLng latlng)
    {
        if (latlng == null || location == null)
        {
            return -1F;
        } else
        {
            return CommonUtils.getYardsFromMeters(getMeter(location, latlng));
        }
    }

    private void parseJson(JSONObject jsonobject)
    {
        boolean flag;
        if (jsonobject != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        try
        {
            id = JsonParser.getIntValue(jsonobject, "id");
            holeNumber = JsonParser.getIntValue(jsonobject, "hnumber");
            par = JsonParser.getIntValue(jsonobject, "par");
            handicap = JsonParser.getIntValue(jsonobject, "handicap");
            description = JsonParser.getStringValue(jsonobject, "description");
            tee1 = JsonParser.getIntValue(jsonobject, "tee1");
            tee2 = JsonParser.getIntValue(jsonobject, "tee2");
            tee3 = JsonParser.getIntValue(jsonobject, "tee3");
            tee4 = JsonParser.getIntValue(jsonobject, "tee4");
            front = parseLocation(JsonParser.getStringValue(jsonobject, "front"));
            middle = parseLocation(JsonParser.getStringValue(jsonobject, "middle"));
            back = parseLocation(JsonParser.getStringValue(jsonobject, "back"));
            mapThumbnailUrl = JsonParser.getStringValue(jsonobject, "map");
            return;
        }
        // Misplaced declaration of an exception variable
        catch (JSONObject jsonobject)
        {
            jsonobject.printStackTrace();
        }
    }

    private LatLng parseLocation(String s)
    {
        Object obj = null;
        if (s == null)
        {
            return null;
        }
        try
        {
            s = new StringTokenizer(s, ",");
            float f = Float.parseFloat(s.nextToken().substring(1));
            s = s.nextToken();
            float f1 = Float.parseFloat(s.substring(0, s.length() - 1));
            s = new LatLng(f, f1);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
            s = obj;
        }
        return s;
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws IOException, ClassNotFoundException
    {
        objectinputstream.defaultReadObject();
        front = new LatLng(objectinputstream.readDouble(), objectinputstream.readDouble());
        middle = new LatLng(objectinputstream.readDouble(), objectinputstream.readDouble());
        back = new LatLng(objectinputstream.readDouble(), objectinputstream.readDouble());
    }

    private void writeObject(ObjectOutputStream objectoutputstream)
        throws IOException
    {
        objectoutputstream.defaultWriteObject();
        objectoutputstream.writeDouble(front.latitude);
        objectoutputstream.writeDouble(front.longitude);
        objectoutputstream.writeDouble(middle.latitude);
        objectoutputstream.writeDouble(middle.longitude);
        objectoutputstream.writeDouble(back.latitude);
        objectoutputstream.writeDouble(back.longitude);
    }

    public JSONObject buildJson()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("id", id);
            jsonobject.put("hnumber", holeNumber);
            jsonobject.put("par", par);
            jsonobject.put("handicap", handicap);
            jsonobject.put("description", description);
            jsonobject.put("tee1", tee1);
            jsonobject.put("tee2", tee2);
            jsonobject.put("tee3", tee3);
            jsonobject.put("tee4", tee4);
            jsonobject.put("front", String.format("(%.9s, %.9s)", new Object[] {
                Double.valueOf(front.latitude), Double.valueOf(front.longitude)
            }));
            jsonobject.put("middle", String.format("(%.9s, %.9s)", new Object[] {
                Double.valueOf(middle.latitude), Double.valueOf(middle.longitude)
            }));
            jsonobject.put("back", String.format("(%.9s, %.9s)", new Object[] {
                Double.valueOf(back.latitude), Double.valueOf(back.longitude)
            }));
            jsonobject.put("map", mapThumbnailUrl);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return jsonobject;
    }

    public float getDistance(Location location, LatLng latlng)
    {
        switch (unitType)
        {
        default:
            return getYard(location, latlng);

        case 1: // '\001'
            return getMeter(location, latlng);
        }
    }

    public String getDistanceAsString(Context context, Location location, LatLng latlng)
    {
        float f = getDistance(location, latlng);
        if (f == -1F)
        {
            location = context.getString(com.biznessapps.layout.R.string.n_a);
        } else
        {
            location = String.valueOf((int)f);
        }
        switch (unitType)
        {
        default:
            return (new StringBuilder()).append(location).append(" ").append(context.getString(com.biznessapps.layout.R.string.yards)).toString();

        case 1: // '\001'
            return (new StringBuilder()).append(location).append(" ").append(context.getString(com.biznessapps.layout.R.string.meters)).toString();
        }
    }

    public String getHoleName(Resources resources)
    {
        return (new StringBuilder()).append(resources.getString(com.biznessapps.layout.R.string.hole)).append(String.valueOf(holeNumber)).toString();
    }

    public float getMeter(Location location)
    {
        return getMeter(location, middle);
    }

    public float getYards(Location location)
    {
        return getYard(location, middle);
    }
}
