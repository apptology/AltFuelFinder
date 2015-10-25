// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.location;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.CameraUpdateFactory;
import com.google.android.gms.maps.GoogleMap;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.Marker;
import java.util.Iterator;
import java.util.Set;

public class MapUtils
{

    public static final int CAR_FINDER_RADIUS = 700;
    public static final int CAR_FINDER_ZOOM_LEVEL = 14;
    private static final int FAN_WALL_BORDER_ICON_HEIGHT = 95;
    private static final int FAN_WALL_BORDER_ICON_WIDTH = 85;
    private static final int FAN_WALL_ICON_LEFT_OFFSET = 8;
    private static final int FAN_WALL_ICON_TOP_OFFSET = 10;
    private static final int FAN_WALL_ICON_WIDTH = 70;
    private static final int OFFSET_PIXELS = 50;
    public static final int SINGLE_ZOOM_LEVEL = 15;

    public MapUtils()
    {
    }

    public static Bitmap createComboBitmap(Bitmap bitmap, Bitmap bitmap1)
    {
        bitmap1 = Bitmap.createScaledBitmap(bitmap1, 70, 70, false);
        bitmap = Bitmap.createScaledBitmap(bitmap, 85, 95, false);
        Paint paint = new Paint();
        paint.setFlags(1);
        paint.setStyle(android.graphics.Paint.Style.STROKE);
        paint.setColor(-1);
        Bitmap bitmap2 = Bitmap.createBitmap(85, 95, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap2);
        canvas.drawBitmap(bitmap, 0.0F, 0.0F, paint);
        canvas.drawBitmap(bitmap1, 8F, 10F, paint);
        return bitmap2;
    }

    public static Bitmap customizeMarkerBitmap(int i, Context context, int j)
    {
        Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), i);
        float f = context.getResources().getDimension(com.biznessapps.layout.R.dimen.map_pin_size);
        float f1 = (int)(((float)bitmap.getHeight() * f) / (float)bitmap.getWidth());
        context = Bitmap.createScaledBitmap(bitmap, (int)f, (int)f1, false);
        int i1 = context.getPixel(context.getWidth() / 2, context.getHeight() / 2);
        i = Color.red(i1);
        int k = Color.green(i1);
        i1 = Color.blue(i1);
        int k1 = Color.red(j);
        int i2 = Color.green(j);
        j = Color.blue(j);
        f = (float)k1 / (float)i;
        f1 = (float)i2 / (float)k;
        float f2 = (float)j / (float)i1;
        for (i = 0; i < context.getWidth(); i++)
        {
            for (j = 0; j < context.getHeight(); j++)
            {
                int k2 = context.getPixel(i, j);
                int j1 = (int)((float)Color.red(k2) * f);
                int l1 = (int)((float)Color.green(k2) * f1);
                int j2 = (int)((float)Color.blue(k2) * f2);
                int l = j1;
                if (j1 > 255)
                {
                    l = 255;
                }
                j1 = l1;
                if (l1 > 255)
                {
                    j1 = 255;
                }
                l1 = j2;
                if (j2 > 255)
                {
                    l1 = 255;
                }
                context.setPixel(i, j, Color.argb(Color.alpha(k2), l, j1, l1));
            }

        }

        return context;
    }

    public static void defineZoom(GoogleMap googlemap, Set set)
    {
        defineZoom(googlemap, set, 15, false);
    }

    public static void defineZoom(GoogleMap googlemap, Set set, int i, boolean flag)
    {
        if (set.size() == 1 || flag)
        {
            googlemap.setOnMapLoadedCallback(new com.google.android.gms.maps.GoogleMap.OnMapLoadedCallback(googlemap, (Marker)set.iterator().next(), i) {

                final GoogleMap val$map;
                final Marker val$singlePin;
                final int val$singleZoomLevel;

                public void onMapLoaded()
                {
                    map.moveCamera(CameraUpdateFactory.newLatLngZoom(singlePin.getPosition(), singleZoomLevel));
                }

            
            {
                map = googlemap;
                singlePin = marker;
                singleZoomLevel = i;
                super();
            }
            });
            return;
        }
        com.google.android.gms.maps.model.LatLngBounds.Builder builder = new com.google.android.gms.maps.model.LatLngBounds.Builder();
        for (set = set.iterator(); set.hasNext(); builder.include(((Marker)set.next()).getPosition())) { }
        googlemap.setOnMapLoadedCallback(new com.google.android.gms.maps.GoogleMap.OnMapLoadedCallback(builder.build(), googlemap) {

            final LatLngBounds val$bounds;
            final GoogleMap val$map;

            public void onMapLoaded()
            {
                com.google.android.gms.maps.CameraUpdate cameraupdate = CameraUpdateFactory.newLatLngBounds(bounds, 50);
                map.moveCamera(cameraupdate);
                map.animateCamera(cameraupdate);
            }

            
            {
                bounds = latlngbounds;
                map = googlemap;
                super();
            }
        });
    }

    public static Drawable getColoredMapPin(Context context, int i, int j, int k)
    {
        Bitmap bitmap = BitmapFactory.decodeResource(context.getResources(), i);
        float f = context.getResources().getDimensionPixelSize(j);
        float f1 = (int)(((float)bitmap.getHeight() * f) / (float)bitmap.getWidth());
        context = Bitmap.createScaledBitmap(bitmap, (int)f, (int)f1, false);
        int l = context.getPixel(context.getWidth() / 2, context.getHeight() / 2);
        i = Color.red(l);
        j = Color.green(l);
        l = Color.blue(l);
        int j1 = Color.red(k);
        int l1 = Color.green(k);
        k = Color.blue(k);
        f = (float)j1 / (float)i;
        f1 = (float)l1 / (float)j;
        float f2 = (float)k / (float)l;
        for (i = 0; i < context.getWidth(); i++)
        {
            for (j = 0; j < context.getHeight(); j++)
            {
                int j2 = context.getPixel(i, j);
                int i1 = (int)((float)Color.red(j2) * f);
                int k1 = (int)((float)Color.green(j2) * f1);
                int i2 = (int)((float)Color.blue(j2) * f2);
                k = i1;
                if (i1 > 255)
                {
                    k = 255;
                }
                i1 = k1;
                if (k1 > 255)
                {
                    i1 = 255;
                }
                k1 = i2;
                if (i2 > 255)
                {
                    k1 = 255;
                }
                context.setPixel(i, j, Color.argb(Color.alpha(j2), k, i1, k1));
            }

        }

        return new BitmapDrawable(context);
    }
}
