// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class LocationFinder
{

    private static final int GOLF_COURSE_DELAY = 15000;
    private static final int TWO_MINUTES_DELAY = 0x1d4c0;
    private Location currentBestLocation;
    private LocationListener gpsLocationListener;
    private List listeners;
    private LocationManager locationManager;
    private LocationListener networkLocationListener;

    public LocationFinder(Context context)
    {
        listeners = new ArrayList();
        locationManager = (LocationManager)context.getSystemService("location");
        getNetworkLocationListener();
        getGpsLocationListener();
    }

    private LocationListener getGpsLocationListener()
    {
        if (gpsLocationListener == null)
        {
            gpsLocationListener = new LocationListener() {

                final LocationFinder this$0;

                public void onLocationChanged(Location location)
                {
                    processNewLocation(location);
                }

                public void onProviderDisabled(String s)
                {
                }

                public void onProviderEnabled(String s)
                {
                }

                public void onStatusChanged(String s, int i, Bundle bundle)
                {
                }

            
            {
                this$0 = LocationFinder.this;
                super();
            }
            };
        }
        return gpsLocationListener;
    }

    private LocationListener getNetworkLocationListener()
    {
        if (networkLocationListener == null)
        {
            networkLocationListener = new LocationListener() {

                final LocationFinder this$0;

                public void onLocationChanged(Location location)
                {
                    processNewLocation(location);
                }

                public void onProviderDisabled(String s)
                {
                }

                public void onProviderEnabled(String s)
                {
                }

                public void onStatusChanged(String s, int i, Bundle bundle)
                {
                }

            
            {
                this$0 = LocationFinder.this;
                super();
            }
            };
        }
        return networkLocationListener;
    }

    private boolean isBetterLocation(Location location, Location location1)
    {
        if (location1 == null)
        {
            return true;
        }
        long l = location.getTime() - location1.getTime();
        boolean flag;
        boolean flag1;
        boolean flag2;
        if (l > 0x1d4c0L)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (l < 0xfffffffffffe2b40L)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag1)
        {
            return true;
        }
        if (flag2)
        {
            return false;
        }
        int i = (int)(location.getAccuracy() - location1.getAccuracy());
        boolean flag3;
        boolean flag4;
        if (i > 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (i < 0)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        if (i > 200)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        flag4 = isSameProvider(location.getProvider(), location1.getProvider());
        if (flag2)
        {
            return true;
        }
        if (flag && !flag1)
        {
            return true;
        }
        return flag && !flag3 && flag4;
    }

    private boolean isSameProvider(String s, String s1)
    {
        if (s == null)
        {
            return s1 == null;
        } else
        {
            return s.equals(s1);
        }
    }

    private void processNewLocation(Location location)
    {
        this;
        JVM INSTR monitorenter ;
        if (isBetterLocation(location, currentBestLocation))
        {
            currentBestLocation = location;
            for (location = listeners.iterator(); location.hasNext(); ((LocationListener)location.next()).onLocationChanged(currentBestLocation)) { }
        }
        break MISSING_BLOCK_LABEL_64;
        location;
        throw location;
        this;
        JVM INSTR monitorexit ;
    }

    public void addLocationListener(LocationListener locationlistener)
    {
        if (locationlistener != null)
        {
            listeners.add(locationlistener);
        }
    }

    public void destroy()
    {
        listeners = null;
        networkLocationListener = null;
        gpsLocationListener = null;
    }

    public Location getCurrentLocation()
    {
        if (currentBestLocation != null)
        {
            return currentBestLocation;
        }
        Location location = locationManager.getLastKnownLocation("gps");
        Location location1 = locationManager.getLastKnownLocation("network");
        if (location1 != null && isBetterLocation(location1, location))
        {
            return location1;
        } else
        {
            return location;
        }
    }

    public void removeLocationListener(LocationListener locationlistener)
    {
        listeners.remove(locationlistener);
    }

    public void startSearching()
    {
        startSearching(false);
    }

    public void startSearching(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 15000;
        } else
        {
            i = 0x1d4c0;
        }
        locationManager.requestLocationUpdates("network", i, 0.0F, networkLocationListener);
        locationManager.requestLocationUpdates("gps", i, 0.0F, gpsLocationListener);
    }

    public void stopSearching()
    {
        boolean flag1 = true;
        if (locationManager != null)
        {
            boolean flag;
            if (networkLocationListener != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (gpsLocationListener == null)
            {
                flag1 = false;
            }
            if (flag & flag1)
            {
                locationManager.removeUpdates(networkLocationListener);
                locationManager.removeUpdates(gpsLocationListener);
            }
        }
    }

}
