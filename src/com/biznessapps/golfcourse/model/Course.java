// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.golfcourse.model;

import android.content.Context;
import android.location.Location;
import android.util.SparseArray;
import com.biznessapps.common.SerializableSparseArray;
import com.biznessapps.common.entities.CommonListEntity;
import com.google.android.gms.maps.model.LatLngBounds;
import org.json.JSONArray;

// Referenced classes of package com.biznessapps.golfcourse.model:
//            Hole

public class Course extends CommonListEntity
{

    public static final int COURSE_UNIT_METER = 1;
    public static final int COURSE_UNIT_YARD = 0;
    public static final int LATEST_IN_HOLE_NO = 18;
    public static final int LATEST_OUT_HOLE_NO = 9;
    public static final int RETURNABLE_TOTAL_HOLE_COUHNT = 18;
    private static final long serialVersionUID = 0xaa5b38186826f148L;
    public LatLngBounds bounds;
    public long courseId;
    public String description;
    private SerializableSparseArray holeList;
    public boolean isRemoved;
    private int mUnitType;
    public String name;
    public long remoteCourseId;
    public String thumbUrl;
    public boolean useOverlay;

    public Course()
    {
        useOverlay = false;
        holeList = new SerializableSparseArray();
    }

    public Hole getHole(int i)
    {
        return (Hole)getHoleList().get(i);
    }

    public SparseArray getHoleList()
    {
        return holeList;
    }

    public String getJsonHoleList()
    {
        if (holeList == null)
        {
            return "";
        }
        JSONArray jsonarray = new JSONArray();
        for (int i = 0; i < holeList.size(); i++)
        {
            org.json.JSONObject jsonobject = ((Hole)holeList.valueAt(i)).buildJson();
            if (jsonobject != null)
            {
                jsonarray.put(jsonobject);
            }
        }

        return jsonarray.toString();
    }

    public int getTotalHandicap()
    {
        if (holeList != null) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        return k;
_L2:
        int i = 0;
        int j = 1;
        do
        {
            k = i;
            if (j > holeList.size())
            {
                continue;
            }
            i += ((Hole)holeList.get(j)).handicap;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalInHandicap()
    {
        if (isGoBackableCourse()) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        if (holeList == null)
        {
            return 0;
        }
        int i = 0;
        int j = 10;
        do
        {
            k = i;
            if (j > holeList.size())
            {
                continue;
            }
            i += ((Hole)holeList.get(j)).handicap;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalInPars()
    {
        if (isGoBackableCourse()) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        if (holeList == null)
        {
            return 0;
        }
        int i = 0;
        int j = 10;
        do
        {
            k = i;
            if (j > holeList.size())
            {
                continue;
            }
            i += ((Hole)holeList.get(j)).par;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalMeters(Location location)
    {
        if (holeList != null) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        return k;
_L2:
        int i = 0;
        int j = 0;
        do
        {
            k = i;
            if (j >= holeList.size())
            {
                continue;
            }
            Hole hole = (Hole)holeList.valueAt(j);
            i = (int)((float)i + hole.getMeter(location));
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalOutHandicap()
    {
        if (isGoBackableCourse()) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        if (holeList == null)
        {
            return 0;
        }
        int i = 0;
        int j = 1;
        do
        {
            k = i;
            if (j > 9)
            {
                continue;
            }
            i += ((Hole)holeList.get(j)).handicap;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalOutPars()
    {
        if (isGoBackableCourse()) goto _L2; else goto _L1
_L1:
        int k = -1;
_L4:
        return k;
_L2:
        if (holeList == null)
        {
            return 0;
        }
        int i = 0;
        int j = 1;
        do
        {
            k = i;
            if (j > 9)
            {
                continue;
            }
            i += ((Hole)holeList.get(j)).par;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalPars()
    {
        if (holeList != null) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        return k;
_L2:
        int i = 0;
        int j = 1;
        do
        {
            k = i;
            if (j > holeList.size())
            {
                continue;
            }
            i += ((Hole)holeList.get(j)).par;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalTees()
    {
        if (holeList != null) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        return k;
_L2:
        int i = 0;
        int j = 0;
        do
        {
            k = i;
            if (j >= holeList.size())
            {
                continue;
            }
            i += ((Hole)holeList.valueAt(j)).tee1;
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getTotalYards(Location location)
    {
        if (holeList != null) goto _L2; else goto _L1
_L1:
        int k = 0;
_L4:
        return k;
_L2:
        int i = 0;
        int j = 0;
        do
        {
            k = i;
            if (j >= holeList.size())
            {
                continue;
            }
            Hole hole = (Hole)holeList.valueAt(j);
            i = (int)((float)i + hole.getYards(location));
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int getUnitType()
    {
        return mUnitType;
    }

    public boolean isGoBackableCourse()
    {
        return holeList.size() == 18;
    }

    public boolean isValid()
    {
        return remoteCourseId != 0L;
    }

    public void setHoleList(String s)
    {
        s = new JSONArray(s);
        if (holeList == null)
        {
            holeList = new SerializableSparseArray();
        }
          goto _L1
_L3:
        int i;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_79;
        }
        Hole hole = new Hole(s.getJSONObject(i), mUnitType);
        holeList.put(hole.holeNumber, hole);
        i++;
        continue; /* Loop/switch isn't completed */
        s;
        s.printStackTrace();
        return;
_L1:
        i = 0;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public void setUnit(Context context, String s)
    {
        mUnitType = 1;
        if (s == null || s.equalsIgnoreCase("yards"))
        {
            mUnitType = 0;
        } else
        if (s.equalsIgnoreCase("meters"))
        {
            mUnitType = 1;
            return;
        }
    }

    public void setUnitType(int i)
    {
        mUnitType = i;
    }
}
