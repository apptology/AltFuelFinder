// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.pushnotifications;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.media.RingtoneManager;
import android.os.AsyncTask;
import android.os.Bundle;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.DataSource;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.layout.MainController;
import com.biznessapps.messages.MessageEntity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.pushnotifications:
//            GeoFencingHelper

public class C2DMMessagesReceiver extends BroadcastReceiver
    implements AppConstants
{

    private static final String GEO_FENCING_ENABLED = "gf=1";
    private static final int GEO_FENCING_MIN_DISTANCE = 100;
    private static final int JELLY_BEAN_OS_NUMBER = 16;
    private static final String PAYLOAD = "payload";
    private static final String RECEIVE_ACTION = "com.google.android.c2dm.intent.RECEIVE";
    private static Location lastSavedLocation;
    private static LocationListener locationListener;
    private Context context;

    public C2DMMessagesReceiver()
    {
    }

    private void checkAndSendNotification(Context context1, String s)
    {
        String s1;
        int i;
        int j;
        i = s.indexOf(";;;");
        if (i == -1)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        s1 = s.substring(i + 3);
        j = s1.indexOf("id");
        if (j == -1) goto _L2; else goto _L1
_L1:
        (new AsyncTask() {

            final C2DMMessagesReceiver this$0;
            final Context val$context;
            final int val$detailsIndex;
            final String val$detailsText;
            final String val$id;
            final String val$message;

            protected transient MessageEntity doInBackground(Void avoid[])
            {
                avoid = (new StringBuilder()).append("push_message_details.php?push_id=").append(id).toString();
                return JsonParser.parseRichNotification(DataSource.getInstance().getData(avoid));
            }

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected void onPostExecute(MessageEntity messageentity)
            {
                super.onPostExecute(messageentity);
                String s2 = message.substring(0, detailsIndex);
                messageentity.setTitle(s2);
                if (detailsText.indexOf("gf=1") >= 0 && StringUtils.isNotEmpty(messageentity.getPaths()))
                {
                    messageentity.setGeoFencingEnabled(true);
                    sendForSpecificArea(context, s2, messageentity);
                    return;
                }
                if (detailsText.indexOf("la") != -1)
                {
                    sendForCircledArea(context, message, s2, messageentity);
                    return;
                } else
                {
                    sendNotification(context, s2, messageentity);
                    return;
                }
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((MessageEntity)obj);
            }

            
            {
                this$0 = C2DMMessagesReceiver.this;
                id = s;
                message = s1;
                detailsIndex = i;
                detailsText = s2;
                context = context1;
                super();
            }
        }).execute(new Void[0]);
_L4:
        return;
_L2:
        if (s1.indexOf("la") == -1) goto _L4; else goto _L3
_L3:
        sendNotification(context1, s.substring(0, i), null);
        return;
        sendNotification(context1, s, null);
        return;
    }

    private void checkGFmessages()
    {
        Object obj = StorageKeeper.instance().getMessages();
        Iterator iterator = ((List) (obj)).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            MessageEntity messageentity = (MessageEntity)iterator.next();
            if (messageentity.isGeoFencingEnabled())
            {
                if (messageentity.getActiveTill() > 0L)
                {
                    if (DateUtils.getDateWithOffset(messageentity.getActiveTill()).getTime() > System.currentTimeMillis())
                    {
                        if (context != null)
                        {
                            sendForSpecificArea(context, messageentity.getTitle(), messageentity);
                        }
                    } else
                    {
                        messageentity.setGeoFencingEnabled(false);
                    }
                } else
                if (context != null)
                {
                    sendForSpecificArea(context, messageentity.getTitle(), messageentity);
                }
            }
        } while (true);
        boolean flag1 = false;
        obj = ((List) (obj)).iterator();
        boolean flag;
        do
        {
            flag = flag1;
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            if (!((MessageEntity)((Iterator) (obj)).next()).isGeoFencingEnabled())
            {
                continue;
            }
            flag = true;
            break;
        } while (true);
        if (flag)
        {
            AppCore.getInstance().getLocationFinder().startSearching();
            return;
        } else
        {
            AppCore.getInstance().getLocationFinder().stopSearching();
            return;
        }
    }

    private LocationListener getLocationListener()
    {
        return new LocationListener() {

            final C2DMMessagesReceiver this$0;

            public void onLocationChanged(Location location)
            {
                if (C2DMMessagesReceiver.lastSavedLocation == null)
                {
                    C2DMMessagesReceiver.lastSavedLocation = location;
                    checkGFmessages();
                } else
                if (C2DMMessagesReceiver.lastSavedLocation.distanceTo(location) > 100F)
                {
                    C2DMMessagesReceiver.lastSavedLocation = location;
                    checkGFmessages();
                    return;
                }
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
                this$0 = C2DMMessagesReceiver.this;
                super();
            }
        };
    }

    private Notification getNotification(Context context1, int i, String s, String s1, MessageEntity messageentity)
    {
        Object obj = new Intent(context1, com/biznessapps/layout/MainController);
        ((Intent) (obj)).putExtra("OPEN_MESSAGE_TAB_PROPERTY", true);
        if (messageentity != null && (StringUtils.isNotEmpty(messageentity.getTabId()) || StringUtils.isNotEmpty(messageentity.getUrl())))
        {
            ((Intent) (obj)).putExtra("RICH_PUSH_PROPERTY", messageentity);
        }
        obj = PendingIntent.getActivity(context1, 0, ((Intent) (obj)), 0x8000000);
        if (android.os.Build.VERSION.SDK_INT >= 16)
        {
            messageentity = new android.support.v4.app.NotificationCompat.BigTextStyle();
            messageentity.bigText(s1);
            messageentity = (new android.support.v4.app.NotificationCompat.Builder(context1)).setTicker(s1).setContentTitle(s).setSmallIcon(i).setStyle(messageentity).setPriority(1).setVibrate(new long[0]).build();
        } else
        {
            messageentity = new Notification(i, s, System.currentTimeMillis());
        }
        messageentity.flags = ((Notification) (messageentity)).flags | 0x10;
        messageentity.setLatestEventInfo(context1, s, s1, ((PendingIntent) (obj)));
        messageentity.sound = RingtoneManager.getDefaultUri(2);
        return messageentity;
    }

    private static boolean isInArea(double d, double d1, double d2, double d3, 
            double d4)
    {
        d = (3.1415926535897931D * d) / 180D;
        d1 = (3.1415926535897931D * d1) / 180D;
        d2 = (3.1415926535897931D * d2) / 180D;
        double d5 = (3.1415926535897931D * d3) / 180D;
        double d6 = (d2 - d) / 2D;
        d3 = Math.sin(d6);
        d6 = Math.sin(d6);
        d1 = (d5 - d1) / 2D;
        return 2D * Math.asin(Math.sqrt(d3 * d6 + Math.cos(d) * Math.cos(d2) * Math.sin(d1) * Math.sin(d1))) * 6367.4446571224998D <= 2D + d4;
    }

    private void saveMessage(MessageEntity messageentity)
    {
        StorageKeeper.instance().addMessage(messageentity);
    }

    private void sendForCircledArea(Context context1, String s, String s1, MessageEntity messageentity)
    {
        s = messageentity.getLongitude();
        String s2 = messageentity.getLatitude();
        String s3 = messageentity.getRadius();
        if (!StringUtils.checkTextFieldsOnEmpty(new String[] {
    s, s2, s3
}))
        {
            double d = Double.parseDouble(s2);
            double d1 = Double.parseDouble(s);
            double d2 = Double.parseDouble(s3);
            s = AppCore.getInstance().getLocationFinder().getCurrentLocation();
            if (s != null)
            {
                double d3 = s.getLatitude();
                if (isInArea(d1, d, s.getLongitude(), d3, d2))
                {
                    sendNotification(context1, s1, messageentity);
                    saveMessage(messageentity);
                }
            }
        }
    }

    private void sendForSpecificArea(Context context1, String s, MessageEntity messageentity)
    {
        double d;
        double d1;
        Location location;
        boolean flag;
        try
        {
            location = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        }
        // Misplaced declaration of an exception variable
        catch (Context context1)
        {
            context1.printStackTrace();
            return;
        }
        if (location == null)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        d = location.getLatitude();
        d1 = location.getLongitude();
        flag = GeoFencingHelper.isContainCoordinate(GeoFencingHelper.GeoPoint.createList(messageentity.getPaths()), new GeoFencingHelper.GeoPoint(d, d1));
        messageentity.setTitle(s);
        if (!flag) goto _L2; else goto _L1
_L1:
        messageentity.setGeoFencingEnabled(false);
        sendNotification(context1, s, messageentity);
_L3:
        saveMessage(messageentity);
        return;
_L2:
label0:
        {
            if (messageentity.getActiveTill() != 0L)
            {
                break label0;
            }
            messageentity.setGeoFencingEnabled(false);
        }
          goto _L3
        AppCore.getInstance().getLocationFinder().startSearching();
          goto _L3
    }

    private void sendNotification(Context context1, String s, MessageEntity messageentity)
    {
        String s1 = context1.getString(com.biznessapps.layout.R.string.app_name);
        s = getNotification(context1, com.biznessapps.layout.R.drawable.icon_icon, s1, s, messageentity);
        ((NotificationManager)context1.getSystemService("notification")).notify(1, s);
        UserStatsProfile.getInstance(context1).updateNumberOfMessages();
    }

    public void onReceive(Context context1, Intent intent)
    {
        context = context1;
        if (!AppCore.getInstance().isInitialized())
        {
            AppCore.getInstance().init(context1);
        }
        if ("com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction()))
        {
            if (!AppCore.getInstance().isInitialized())
            {
                AppCore.getInstance().init(context1);
            }
            intent = intent.getStringExtra("payload");
            if (StringUtils.isNotEmpty(intent))
            {
                checkAndSendNotification(context1, intent);
            }
        }
        if (locationListener == null)
        {
            locationListener = getLocationListener();
            AppCore.getInstance().getLocationFinder().addLocationListener(locationListener);
        }
    }






/*
    static Location access$302(Location location)
    {
        lastSavedLocation = location;
        return location;
    }

*/

}
