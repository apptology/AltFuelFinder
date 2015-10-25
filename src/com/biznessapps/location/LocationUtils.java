// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.location;

import android.content.Context;
import android.location.Location;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.StringUtils;

public class LocationUtils
{

    public static final int DISTANCE_IN_KM = 1;
    public static final String DISTANCE_IN_KM_VALUE = "km";
    public static final String DISTANCE_IN_ML_VALUE = "mi";

    private LocationUtils()
    {
    }

    public static String getAddress(boolean flag, LocationEntity locationentity)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (flag)
        {
            if (StringUtils.isNotEmpty(locationentity.getAddressTopRow()))
            {
                stringbuilder.append(locationentity.getAddressTopRow());
            }
            if (StringUtils.isNotEmpty(locationentity.getAddressBottomRow()))
            {
                if (stringbuilder.length() > 0)
                {
                    stringbuilder.append(", ");
                }
                stringbuilder.append(locationentity.getAddressBottomRow());
            }
        }
        if (stringbuilder.length() == 0)
        {
            locationentity = getFullAddress(locationentity);
            if (StringUtils.isNotEmpty(locationentity))
            {
                stringbuilder.append(locationentity);
            }
        }
        return stringbuilder.toString();
    }

    public static float getDistanceToPlace(String s, String s1)
    {
        float f1 = 0.0F;
        float f = f1;
        if (StringUtils.isNotEmpty(s))
        {
            f = f1;
            if (StringUtils.isNotEmpty(s1))
            {
                Location location = AppCore.getInstance().getLocationFinder().getCurrentLocation();
                f = f1;
                if (location != null)
                {
                    Location location1 = new Location("");
                    try
                    {
                        location1.setLatitude(Double.parseDouble(s));
                        location1.setLongitude(Double.parseDouble(s1));
                    }
                    // Misplaced declaration of an exception variable
                    catch (String s)
                    {
                        s.printStackTrace();
                    }
                    f = location.distanceTo(location1);
                }
            }
        }
        return f;
    }

    public static float getDistanceToPlace(String s, String s1, String s2, String s3)
    {
        Location location = new Location("");
        try
        {
            location.setLatitude(Double.parseDouble(s));
            location.setLongitude(Double.parseDouble(s1));
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            s.printStackTrace();
        }
        s = new Location("");
        try
        {
            s.setLatitude(Double.parseDouble(s2));
            s.setLongitude(Double.parseDouble(s3));
        }
        // Misplaced declaration of an exception variable
        catch (String s1)
        {
            s1.printStackTrace();
        }
        return location.distanceTo(s);
    }

    public static String getDistanceValue(float f, String s, Context context)
    {
        if ("km".equalsIgnoreCase(s) || "Kilometer".equalsIgnoreCase(s))
        {
            f /= 1000F;
            s = "km";
            String s1 = StringsSource.getInstance().getValue(context, "%.2fkm");
            context = s;
            s = s1;
        } else
        {
            f /= 1609.34F;
            String s2 = "mi";
            s = StringsSource.getInstance().getValue(context, "%.1fmi");
            context = s2;
        }
        if (s != null)
        {
            return String.format(s, new Object[] {
                Float.valueOf(f)
            });
        } else
        {
            return String.format("%.2f%s", new Object[] {
                Float.valueOf(f), context
            });
        }
    }

    public static float getDistanceValueInMeters(float f, String s)
    {
        if ("km".equalsIgnoreCase(s) || "Kilometer".equalsIgnoreCase(s))
        {
            return f * 1000F;
        } else
        {
            return f * 1609.34F;
        }
    }

    public static String getEventDetailAddress(LocationEntity locationentity)
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (StringUtils.isNotEmpty(locationentity.getAddressTopRow()))
        {
            stringbuilder.append(locationentity.getAddressTopRow());
        }
        if (StringUtils.isNotEmpty(locationentity.getAddressBottomRow()))
        {
            stringbuilder.append("\n").append(locationentity.getAddressBottomRow());
        }
        if (stringbuilder.length() == 0)
        {
            locationentity = getFullAddress(locationentity, "\n");
            if (StringUtils.isNotEmpty(locationentity))
            {
                stringbuilder.append(locationentity);
            }
        }
        return stringbuilder.toString();
    }

    public static String getFullAddress(LocationEntity locationentity)
    {
        return getFullAddress(locationentity, null);
    }

    public static String getFullAddress(LocationEntity locationentity, String s)
    {
        String s1 = locationentity.getAddress1();
        String s2 = locationentity.getAddress2();
        String s3 = locationentity.getCity();
        String s4 = locationentity.getState();
        locationentity = locationentity.getZip();
        StringBuilder stringbuilder = new StringBuilder();
        if (StringUtils.isNotEmpty(s1))
        {
            stringbuilder.append(s1);
        }
        if (StringUtils.isNotEmpty(s2))
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(s2);
        }
        if (stringbuilder.length() > 0 && s != null)
        {
            stringbuilder.append(s);
        }
        if (StringUtils.isNotEmpty(s3))
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(s3);
        }
        if (StringUtils.isNotEmpty(s4))
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(s4);
        }
        if (StringUtils.isNotEmpty(locationentity))
        {
            if (stringbuilder.length() > 0)
            {
                stringbuilder.append(", ");
            }
            stringbuilder.append(locationentity);
        }
        return stringbuilder.toString();
    }

    public static void setAddress(TextView textview, TextView textview1, LocationEntity locationentity)
    {
        boolean flag = false;
        String s = locationentity.getAddressTopRow();
        String s1 = locationentity.getAddressBottomRow();
        boolean flag1 = StringUtils.isNotEmpty(s);
        boolean flag2 = StringUtils.isNotEmpty(s1);
        int i;
        if (flag1 || flag2)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        if (i != 0)
        {
            if (flag1)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            textview.setVisibility(i);
            if (flag2)
            {
                i = ((flag) ? 1 : 0);
            } else
            {
                i = 8;
            }
            textview1.setVisibility(i);
            if (flag1)
            {
                textview.setSingleLine();
                textview.setText(s);
            }
            if (flag2)
            {
                textview1.setText(s1);
            }
            return;
        } else
        {
            locationentity = getFullAddress(locationentity);
            textview.setSingleLine(false);
            textview.setText(locationentity);
            textview.setVisibility(0);
            textview1.setVisibility(8);
            return;
        }
    }

    public static void setDistanceValue(Context context, TextView textview, MapEntity mapentity)
    {
        if (StringUtils.isNotEmptyValue(mapentity.getLatitude()) && StringUtils.isNotEmptyValue(mapentity.getLongitude()))
        {
            float f = getDistanceToPlace(mapentity.getLatitude(), mapentity.getLongitude());
            if (f > 0.0F)
            {
                textview.setText(getDistanceValue(f, mapentity.getDistanceType(), context));
                return;
            } else
            {
                textview.setText(context.getString(com.biznessapps.layout.R.string.n_a));
                return;
            }
        } else
        {
            textview.setText(context.getString(com.biznessapps.layout.R.string.n_a));
            return;
        }
    }
}
