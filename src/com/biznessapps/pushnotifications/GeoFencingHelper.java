// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import java.util.ArrayList;

public class GeoFencingHelper
{
    public static class GeoPoint
    {

        public double x;
        public double y;

        public static GeoPoint createInstance(String s)
            throws Exception
        {
            s = s.trim();
            if (s.length() < 11)
            {
                throw new Exception("str length < 17 or > 21");
            }
            if (s.charAt(0) != '(' || s.charAt(s.length() - 1) != ')')
            {
                throw new Exception("str does not match pattern '(.*)'");
            }
            s = s.substring(1, s.length() - 1).split(",");
            if (s == null || s.length != 2)
            {
                throw new Exception("str does not match pattern '(number,number)'");
            } else
            {
                return new GeoPoint(Double.parseDouble(s[0]), Double.parseDouble(s[1]));
            }
        }

        public static GeoPoint[] createList(String s)
            throws Exception
        {
            s = s.trim().split(" ");
            if (s == null)
            {
                throw new Exception("str does not match pattern '(number,number) (number,number) ... (number,number)'");
            }
            if (s.length < 3)
            {
                throw new Exception("str contains 3 points only");
            }
            ArrayList arraylist = new ArrayList();
            int j = s.length;
            for (int i = 0; i < j; i++)
            {
                arraylist.add(createInstance(s[i]));
            }

            return (GeoPoint[])arraylist.toArray(new GeoPoint[0]);
        }

        public GeoPoint()
        {
        }

        public GeoPoint(double d, double d1)
        {
            x = d;
            y = d1;
        }
    }


    public GeoFencingHelper()
    {
    }

    public static boolean isContainCoordinate(GeoPoint ageopoint[], GeoPoint geopoint)
    {
        int j = 0;
        for (int i = 0; i < ageopoint.length;)
        {
            GeoPoint geopoint1 = ageopoint[i];
            int l = i + 1;
            int k = l;
            if (l >= ageopoint.length)
            {
                k = 0;
            }
            l = j;
            if (rayCrossesSegment(geopoint, geopoint1, ageopoint[k]))
            {
                l = j + 1;
            }
            i++;
            j = l;
        }

        return j % 2 == 1;
    }

    public static boolean rayCrossesSegment(GeoPoint geopoint, GeoPoint geopoint1, GeoPoint geopoint2)
    {
        double d;
        double d1;
        double d2;
        double d3;
        double d4;
        double d9;
label0:
        {
            d9 = geopoint.x;
            double d5 = geopoint.y;
            d = geopoint1.x;
            d4 = geopoint1.y;
            d1 = geopoint2.x;
            double d8 = geopoint2.y;
            d2 = d4;
            d3 = d8;
            if (d4 > d8)
            {
                d = geopoint2.x;
                d2 = geopoint2.y;
                d1 = geopoint1.x;
                d3 = geopoint1.y;
            }
            if (d5 != d2)
            {
                d4 = d5;
                if (d5 != d3)
                {
                    break label0;
                }
            }
            d4 = d5 + 1E-08D;
        }
label1:
        {
            if (d4 <= d3 && d4 >= d2)
            {
                double d6;
                if (d > d1)
                {
                    d6 = d;
                } else
                {
                    d6 = d1;
                }
                if (d9 <= d6)
                {
                    break label1;
                }
            }
            return false;
        }
        double d7;
        if (d < d1)
        {
            d7 = d;
        } else
        {
            d7 = d1;
        }
        if (d9 < d7)
        {
            return true;
        }
        if (d != d1)
        {
            d1 = (d3 - d2) / (d1 - d);
        } else
        {
            d1 = 1.7976931348623157E+308D;
        }
        if (d != d9)
        {
            d = (d4 - d2) / (d9 - d);
        } else
        {
            d = 1.7976931348623157E+308D;
        }
        return d >= d1;
    }
}
