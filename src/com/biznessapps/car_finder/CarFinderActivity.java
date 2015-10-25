// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.car_finder;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.location.LocationListener;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.activities.CommonMapActivity;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.ViewUtils;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.CircleOptions;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.Marker;
import com.google.android.gms.maps.model.MarkerOptions;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

// Referenced classes of package com.biznessapps.car_finder:
//            ChooseTimerActivity

public class CarFinderActivity extends CommonMapActivity
{
    public static class CarFinderItem extends MapEntity
    {

        private static final long serialVersionUID = 0x828c4a444d6d8214L;
        private boolean isCarItem;

        public String getGeneralInfo()
        {
            return title;
        }

        public boolean isCarItem()
        {
            return isCarItem;
        }

        public void setCarItem(boolean flag)
        {
            isCarItem = flag;
        }

        public CarFinderItem()
        {
        }
    }


    private static final int DECREASE_ALARM_EVENT = 2;
    private static final int DELAY_TIME = 1000;
    private static final String EMAIL_PHOTO_IMAGE = "email_photo_image.jpg";
    private static final int INCREASE_TIMER_EVENT = 1;
    public static final int SECS_IN_MINUTE = 60;
    private static Ringtone alarmRingtone;
    private static Location carLocation;
    private static long lastAlarmValue;
    private static long lastTimerValue;
    private ImageButton alarmButton;
    private int alarmCounter;
    private TextView alarmTextView;
    private ViewGroup bottomContainer;
    private long carSetTime;
    private Handler eventHandler;
    private boolean isCarLocationSet;
    private LocationListener locationListener;
    private Location myLocation;
    private File photoImage;
    private String selectedImagePath;
    private int timerCounter;
    private TextView timerTextView;

    public CarFinderActivity()
    {
        carSetTime = 0L;
    }

    private void checkLastValues()
    {
        if (lastTimerValue > 0L)
        {
            bottomContainer.setVisibility(0);
            timerCounter = (int)((System.currentTimeMillis() - lastTimerValue) / 1000L);
            timerCounter = timerCounter + 1;
            timerTextView.setText(getSecInTimeFormat(timerCounter));
            sendChangeTabMessage(1);
        }
        if (lastAlarmValue > 0L)
        {
            alarmCounter = (int)((lastAlarmValue - System.currentTimeMillis()) / 1000L);
            alarmTextView.setText(getSecInTimeFormat(alarmCounter));
            sendChangeTabMessage(2);
        }
        if (carLocation != null)
        {
            isCarLocationSet = true;
            initPois();
        }
    }

    private void email(Context context, String s, String s1, String s2, File file)
    {
        context = new Intent("android.intent.action.SEND_MULTIPLE");
        context.setFlags(0x10000000);
        context.setType("text/plain");
        context.putExtra("android.intent.extra.EMAIL", new String[] {
            s
        });
        context.putExtra("android.intent.extra.SUBJECT", s1);
        context.putExtra("android.intent.extra.TEXT", s2);
        s = new ArrayList();
        s.add(Uri.fromFile(file));
        context.putParcelableArrayListExtra("android.intent.extra.STREAM", s);
        startActivity(Intent.createChooser(context, getString(com.biznessapps.layout.R.string.email)));
    }

    private void emailPhoto()
    {
        ViewUtils.openChoosePhotoDialog(this, new Runnable() {

            final CarFinderActivity this$0;

            public void run()
            {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if ("mounted".equals(Environment.getExternalStorageState()))
                {
                    photoImage = new File(Environment.getExternalStorageDirectory(), "email_photo_image.jpg");
                    intent.putExtra("output", Uri.fromFile(photoImage));
                    startActivityForResult(intent, 2);
                    return;
                } else
                {
                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sdcard_missed));
                    return;
                }
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
    }

    private LocationListener getLocationListener()
    {
        if (locationListener == null)
        {
            locationListener = new LocationListener() {

                final CarFinderActivity this$0;

                public void onLocationChanged(Location location)
                {
                    myLocation = location;
                    initPois();
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
                this$0 = CarFinderActivity.this;
                super();
            }
            };
        }
        return locationListener;
    }

    private String getSecInTimeFormat(int i)
    {
        String s;
        boolean flag;
        int j;
        int k;
        if (i < 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        j = Math.abs(i);
        k = Math.abs(i) / 60;
        i = Math.abs(i) / 60 / 60;
        if (flag)
        {
            s = "-";
        } else
        {
            s = "";
        }
        return (new StringBuilder()).append(s).append(String.format("%02d:%02d:%02d", new Object[] {
            Integer.valueOf(i), Integer.valueOf(k % 60), Integer.valueOf(j % 60)
        })).toString();
    }

    private int getTimeValue(int i, int j)
    {
        return j * 60 + i * 3600;
    }

    private void initButtons()
    {
        alarmButton = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_alarm_button);
        final Button mapModeButton = (Button)findViewById(com.biznessapps.layout.R.id.car_finder_map_mode_button);
        final Button hybModeButton = (Button)findViewById(com.biznessapps.layout.R.id.car_finder_hyb_mode_button);
        mapModeButton.setText(com.biznessapps.layout.R.string.map);
        hybModeButton.setText(com.biznessapps.layout.R.string.hyb);
        mapModeButton.setSelected(true);
        ImageButton imagebutton = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_directions_button);
        ImageButton imagebutton1 = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_photo_button);
        ImageButton imagebutton2 = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_email_button);
        ImageButton imagebutton3 = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_trash_button);
        ImageButton imagebutton4 = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_pin_button);
        ImageButton imagebutton5 = (ImageButton)findViewById(com.biznessapps.layout.R.id.car_finder_location_button);
        alarmButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
                view = new Intent(getApplicationContext(), com/biznessapps/car_finder/ChooseTimerActivity);
                startActivityForResult(view, 20);
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
        mapModeButton.setOnClickListener(new android.view.View.OnClickListener() );
        hybModeButton.setOnClickListener(new android.view.View.OnClickListener() );
        imagebutton.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
                if (CarFinderActivity.carLocation != null)
                {
                    ViewUtils.openGoogleMap(getApplicationContext(), (new StringBuilder()).append("").append(CarFinderActivity.carLocation.getLongitude()).toString(), (new StringBuilder()).append("").append(CarFinderActivity.carLocation.getLatitude()).toString());
                }
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
        imagebutton1.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
                emailPhoto();
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
        imagebutton2.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
                view = getString(com.biznessapps.layout.R.string.current_location);
                String s = getString(com.biznessapps.layout.R.string.car_finder_email_message);
                s = (new StringBuilder()).append(s).append("\n").append(String.format(Locale.US, "http://maps.google.com/maps?q=%f,%f", new Object[] {
                    Double.valueOf(myLocation.getLatitude()), Double.valueOf(myLocation.getLongitude())
                })).toString();
                ViewUtils.email(CarFinderActivity.this, new String[] {
                    ""
                }, view, s);
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
        imagebutton3.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
                stopTimer();
                stopAlarmTimer();
                reinitAlarm();
                CarFinderActivity.lastTimerValue = 0L;
                isCarLocationSet = false;
                CarFinderActivity.carLocation = null;
                initPois();
                bottomContainer.setVisibility(8);
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
        imagebutton4.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
                if (myLocation != null)
                {
                    CarFinderActivity.carLocation = new Location(myLocation);
                    isCarLocationSet = true;
                    carSetTime = System.currentTimeMillis();
                    initPois();
                    bottomContainer.setVisibility(0);
                    sendChangeTabMessage(1);
                }
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
        imagebutton5.setOnClickListener(new android.view.View.OnClickListener() {

            final CarFinderActivity this$0;

            public void onClick(View view)
            {
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
            }
        });
    }

    private void initLocation()
    {
        myLocation = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        AppCore.getInstance().getLocationFinder().addLocationListener(getLocationListener());
    }

    private void initPois()
    {
        ArrayList arraylist = new ArrayList();
        CarFinderItem carfinderitem = new CarFinderItem();
        carfinderitem.setLatitude(Double.toString(myLocation.getLatitude()));
        carfinderitem.setLongitude(Double.toString(myLocation.getLongitude()));
        carfinderitem.setTitle(getString(com.biznessapps.layout.R.string.current_location));
        arraylist.add(carfinderitem);
        if (isCarLocationSet)
        {
            CarFinderItem carfinderitem1 = new CarFinderItem();
            carfinderitem1.setLatitude(Double.toString(carLocation.getLatitude()));
            carfinderitem1.setLongitude(Double.toString(carLocation.getLongitude()));
            carfinderitem1.setTitle(getString(com.biznessapps.layout.R.string.car_location));
            carfinderitem1.setCarItem(true);
            arraylist.add(carfinderitem1);
        }
        addPins(arraylist);
    }

    private void initTimers()
    {
        eventHandler = new Handler(getMainLooper()) ;
    }

    private void initViews()
    {
        bottomContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.car_finder_bottom_container);
        timerTextView = (TextView)findViewById(com.biznessapps.layout.R.id.car_finder_timer_text);
        alarmTextView = (TextView)findViewById(com.biznessapps.layout.R.id.car_finder_alarm_text);
        timerTextView.setText(com.biznessapps.layout.R.string.set);
        alarmTextView.setText(com.biznessapps.layout.R.string.set_timer);
        initButtons();
    }

    private void reinitAlarm()
    {
        alarmTextView.setTextColor(-1);
        alarmButton.setImageResource(com.biznessapps.layout.R.drawable.alarm_on);
        lastAlarmValue = 0L;
    }

    private void sendChangeTabMessage(int i)
    {
        Message message = eventHandler.obtainMessage(i);
        eventHandler.removeMessages(i);
        eventHandler.sendMessageDelayed(message, 1000L);
    }

    private void startAlarmSound()
    {
        Uri uri1 = RingtoneManager.getDefaultUri(4);
        Uri uri = uri1;
        if (uri1 == null)
        {
            uri = RingtoneManager.getDefaultUri(2);
        }
        if (uri != null)
        {
            if (alarmRingtone == null)
            {
                alarmRingtone = RingtoneManager.getRingtone(getApplicationContext(), uri);
            }
            if (!alarmRingtone.isPlaying())
            {
                alarmRingtone.play();
            }
        }
    }

    private void stopAlarmSound()
    {
        if (alarmRingtone != null)
        {
            alarmRingtone.stop();
            alarmRingtone = null;
        }
    }

    private void stopAlarmTimer()
    {
        alarmTextView.setText(com.biznessapps.layout.R.string.set_timer);
        alarmCounter = 0;
        stopTimer(2);
        alarmTextView.setTextColor(-1);
        stopAlarmSound();
    }

    private void stopTimer()
    {
        timerTextView.setText(com.biznessapps.layout.R.string.set);
        timerCounter = 0;
        stopTimer(1);
    }

    private void stopTimer(int i)
    {
        eventHandler.removeMessages(i);
    }

    protected void addPins(List list)
    {
        addPins(list);
        if (isCarLocationSet)
        {
            int i = getResources().getColor(com.biznessapps.layout.R.color.circle_fill_color);
            googleMap.addCircle((new CircleOptions()).center(new LatLng(carLocation.getLatitude(), carLocation.getLongitude())).radius(700D).strokeColor(-1).strokeWidth(1.0F).fillColor(i));
        }
    }

    protected com.google.android.gms.maps.GoogleMap.InfoWindowAdapter getInfoAdapter()
    {
        return new com.google.android.gms.maps.GoogleMap.InfoWindowAdapter() {

            final CarFinderActivity this$0;
            private final View view;

            public View getInfoContents(Marker marker)
            {
                return null;
            }

            public View getInfoWindow(Marker marker)
            {
                marker = (MapEntity)description_view.get(marker);
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.title_view)).setText(marker.getGeneralInfo());
                if ((marker instanceof CarFinderItem) && ((CarFinderItem)marker).isCarItem())
                {
                    marker = (TextView)view.findViewById(com.biznessapps.layout.R.id.description_view);
                    marker.setText(DateUtils.getStandartDateFormat(new Date(carSetTime)));
                    marker.setVisibility(0);
                }
                return view;
            }

            
            {
                this$0 = CarFinderActivity.this;
                super();
                view = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.map_item_dialog, null);
            }
        };
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.car_finder_layout;
    }

    protected MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        if (mapentity instanceof CarFinderItem)
        {
            mapentity = (CarFinderItem)mapentity;
            float f;
            float f1;
            Bitmap bitmap;
            int i;
            if (mapentity.isCarItem())
            {
                i = com.biznessapps.layout.R.drawable.pin_red;
            } else
            {
                i = com.biznessapps.layout.R.drawable.my_location_bubble;
            }
            bitmap = BitmapFactory.decodeResource(getResources(), i);
            f = getResources().getDimension(com.biznessapps.layout.R.dimen.map_pin_size);
            f1 = ((float)bitmap.getHeight() * f) / (float)bitmap.getWidth();
            if (mapentity.isCarItem())
            {
                f *= 1.5F;
            }
            if (mapentity.isCarItem())
            {
                f1 *= 1.5F;
            }
            mapentity = Bitmap.createScaledBitmap(bitmap, (int)f, (int)f1, false);
            return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromBitmap(mapentity));
        } else
        {
            throw new IllegalStateException("You can use only CarFinderItem for mapping. Check adding pins logic");
        }
    }

    protected int getZoomLevel()
    {
        return 14;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        i;
        JVM INSTR tableswitch 2 3: default 24
    //                   2 64
    //                   3 100;
           goto _L1 _L2 _L3
_L3:
        break MISSING_BLOCK_LABEL_100;
_L1:
        super.onActivityResult(i, j, intent);
_L4:
        File file;
        switch (j)
        {
        default:
            super.onActivityResult(i, j, intent);
            return;

        case 20: // '\024'
            alarmCounter = getTimeValue(intent.getIntExtra("HOURS_EXTRA", 0), intent.getIntExtra("MINUTES_EXTRA", 0));
            sendChangeTabMessage(2);
            return;

        case 21: // '\025'
            stopAlarmTimer();
            break;
        }
        break MISSING_BLOCK_LABEL_188;
_L2:
        file = new File(Environment.getExternalStorageDirectory(), "email_photo_image.jpg");
        email(getApplicationContext(), "", "", "", file);
          goto _L4
        selectedImagePath = CommonUtils.getPath(intent.getData(), this);
        if (selectedImagePath != null)
        {
            file = new File(selectedImagePath);
            email(getApplicationContext(), "", "", "", file);
        }
          goto _L4
        reinitAlarm();
        return;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initViews();
        initLocation();
        initTimers();
        if (!AppCore.getInstance().isAnyConnectionAvailable())
        {
            ViewUtils.showNetwortErrorToast(this);
        }
    }

    protected void onDestroy()
    {
        super.onDestroy();
        AppCore.getInstance().getLocationFinder().removeLocationListener(getLocationListener());
    }

    protected void onResume()
    {
        super.onResume();
        AppCore.getInstance().getLocationFinder().startSearching();
        checkLastValues();
    }

    protected void onStop()
    {
        super.onStop();
        AppCore.getInstance().getLocationFinder().stopSearching();
        if (timerCounter > 0)
        {
            lastTimerValue = System.currentTimeMillis() - (long)(timerCounter * 1000);
        }
        if (alarmCounter > 0)
        {
            lastAlarmValue = System.currentTimeMillis() + (long)(alarmCounter * 1000);
        }
        stopTimer();
        stopAlarmTimer();
    }

    protected boolean useConstantZoom()
    {
        return true;
    }




/*
    static long access$1002(long l)
    {
        lastTimerValue = l;
        return l;
    }

*/


/*
    static long access$102(CarFinderActivity carfinderactivity, long l)
    {
        carfinderactivity.carSetTime = l;
        return l;
    }

*/


/*
    static boolean access$1102(CarFinderActivity carfinderactivity, boolean flag)
    {
        carfinderactivity.isCarLocationSet = flag;
        return flag;
    }

*/






/*
    static File access$1502(CarFinderActivity carfinderactivity, File file)
    {
        carfinderactivity.photoImage = file;
        return file;
    }

*/



/*
    static int access$1610(CarFinderActivity carfinderactivity)
    {
        int i = carfinderactivity.alarmCounter;
        carfinderactivity.alarmCounter = i - 1;
        return i;
    }

*/








/*
    static int access$2108(CarFinderActivity carfinderactivity)
    {
        int i = carfinderactivity.timerCounter;
        carfinderactivity.timerCounter = i + 1;
        return i;
    }

*/





/*
    static Location access$402(Location location)
    {
        carLocation = location;
        return location;
    }

*/




/*
    static Location access$602(CarFinderActivity carfinderactivity, Location location)
    {
        carfinderactivity.myLocation = location;
        return location;
    }

*/



}
