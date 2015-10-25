// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import org.json.JSONException;
import org.json.JSONObject;

public abstract class CommonParser
{

    private static final String EMPTY_STRING = "";

    public CommonParser()
    {
    }

    public boolean getBooleanValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        return getValue(jsonobject, s).equals("1") || getValue(jsonobject, s).equals("y") || getValue(jsonobject, s).equals("YES");
    }

    public boolean getBooleanValue(JSONObject jsonobject, String s, boolean flag)
        throws JSONException
    {
        if (jsonobject.has(s))
        {
            flag = getBooleanValue(jsonobject, s);
        }
        return flag;
    }

    public double getDoubleValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        double d = 0.0D;
        if (jsonobject.has(s))
        {
            try
            {
                d = jsonobject.getDouble(s);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return 0.0D;
            }
        }
        return d;
    }

    public float getFloatValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        float f = 0.0F;
        if (jsonobject.has(s))
        {
            double d;
            try
            {
                d = jsonobject.getDouble(s);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return 0.0F;
            }
            f = (float)d;
        }
        return f;
    }

    public int getIntValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        int i = 0;
        if (jsonobject.has(s))
        {
            try
            {
                i = jsonobject.getInt(s);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return 0;
            }
        }
        return i;
    }

    public JSONObject getJSONValue(JSONObject jsonobject, String s)
    {
label0:
        {
            try
            {
                if (!jsonobject.has(s))
                {
                    break label0;
                }
                jsonobject = jsonobject.getJSONObject(s);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return null;
            }
            return jsonobject;
        }
        return null;
    }

    public long getLongValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        long l = 0L;
        if (jsonobject.has(s))
        {
            try
            {
                l = jsonobject.getLong(s);
            }
            // Misplaced declaration of an exception variable
            catch (JSONObject jsonobject)
            {
                jsonobject.printStackTrace();
                return 0L;
            }
        }
        return l;
    }

    public String getStringValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        return getValue(jsonobject, s);
    }

    public String getValue(JSONObject jsonobject, String s)
        throws JSONException
    {
        if (jsonobject.has(s))
        {
            return jsonobject.get(s).toString();
        } else
        {
            return "";
        }
    }
}
