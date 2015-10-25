// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse;

import android.content.Context;
import com.biznessapps.golfcourse.model.Course;
import com.biznessapps.golfcourse.model.GolfCourseConfig;
import com.biznessapps.utils.CommonParser;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;

public class CourseJsonParser extends CommonParser
{

    private static CourseJsonParser parser;

    public CourseJsonParser()
    {
    }

    public static CourseJsonParser getInstance()
    {
        if (parser == null)
        {
            parser = new CourseJsonParser();
        }
        return parser;
    }

    public List parseCourseList(Context context, String s)
    {
        ArrayList arraylist = new ArrayList();
        s = new JSONArray(s);
        int i = 0;
_L3:
        Course course;
        org.json.JSONObject jsonobject;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_193;
        }
        course = new Course();
        jsonobject = s.getJSONObject(i);
        course.remoteCourseId = JsonParser.getIntValue(jsonobject, "id");
        course.name = JsonParser.getValue(jsonobject, "name");
        course.thumbUrl = JsonParser.getValue(jsonobject, "thumbnail");
        course.description = JsonParser.getValue(jsonobject, "description");
        course.setBackground(JsonParser.getValue(jsonobject, "background"));
        course.setUnit(context, JsonParser.getValue(jsonobject, "unit"));
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_173;
        }
        course.useOverlay = ((Course)arraylist.get(0)).useOverlay;
_L1:
        course.setHoleList(JsonParser.getValue(jsonobject, "holes"));
        arraylist.add(course);
        i++;
        continue; /* Loop/switch isn't completed */
        course.useOverlay = JsonParser.getBooleanValue(jsonobject, "use_overlay");
          goto _L1
        s;
        s.printStackTrace();
        if (arraylist.size() > 0)
        {
            boolean flag = ((Course)arraylist.get(0)).useOverlay;
            GolfCourseConfig.getInstance(context).setUseBlurOverlay(flag);
        }
        return arraylist;
        if (true) goto _L3; else goto _L2
_L2:
    }
}
