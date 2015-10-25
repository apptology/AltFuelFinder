// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.around_us;

import android.graphics.Bitmap;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.google.android.gms.maps.model.Marker;
import java.util.Map;

// Referenced classes of package com.biznessapps.around_us:
//            AroundUsActivity

class val.marker
    implements com.biznessapps.utils.google.caching.Callback
{

    final val.marker this$1;
    final Marker val$marker;

    public void onImageLoaded(String s, Bitmap bitmap, View view)
    {
        ((ImageView)view).setImageBitmap(bitmap);
        tInfoContents(val$marker);
    }

    og()
    {
        this$1 = final_og;
        val$marker = Marker.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/around_us/AroundUsActivity$1

/* anonymous class */
    class AroundUsActivity._cls1
        implements com.google.android.gms.maps.GoogleMap.InfoWindowAdapter
    {

        final AroundUsActivity this$0;
        private final View view;

        public View getInfoContents(Marker marker1)
        {
            if (marker1 != null && marker1.isInfoWindowShown())
            {
                marker1.hideInfoWindow();
                marker1.showInfoWindow();
            }
            return null;
        }

        public View getInfoWindow(Marker marker1)
        {
            Object obj = (MapEntity)AroundUsActivity.access$000(AroundUsActivity.this).get(marker1);
            if (obj instanceof AroundUsEntity.PoiItem)
            {
                obj = (AroundUsEntity.PoiItem)obj;
                if (((AroundUsEntity.PoiItem) (obj)).isCurrentLocoation())
                {
                    marker1 = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.map_item_dialog, null);
                    ((TextView)marker1.findViewById(com.biznessapps.layout.R.id.title_view)).setText(((AroundUsEntity.PoiItem) (obj)).getGeneralInfo());
                    return marker1;
                }
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.title_view)).setText((new StringBuilder()).append("\u200E").append(Html.fromHtml(((AroundUsEntity.PoiItem) (obj)).getName())).toString());
                ((TextView)view.findViewById(com.biznessapps.layout.R.id.address_view)).setText((new StringBuilder()).append("\u200E").append(Html.fromHtml(((AroundUsEntity.PoiItem) (obj)).getLocation().getAddress1())).toString());
                Object obj1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.distance_view);
                LocationUtils.setDistanceValue(getApplicationContext(), ((TextView) (obj1)), ((MapEntity) (obj)));
                obj1 = (ImageView)view.findViewById(com.biznessapps.layout.R.id.image_view);
                if (StringUtils.isNotEmpty(((AroundUsEntity.PoiItem) (obj)).getImageUrl()) && !((AroundUsEntity.PoiItem) (obj)).getImageUrl().contains("aroundus.png"))
                {
                    AroundUsActivity.access$100(AroundUsActivity.this).loadCircledBackground(((AroundUsEntity.PoiItem) (obj)).getImageUrl(), ((View) (obj1)), marker1. new AroundUsActivity._cls1._cls1());
                }
            }
            return view;
        }

            
            {
                this$0 = AroundUsActivity.this;
                super();
                view = getLayoutInflater().inflate(com.biznessapps.layout.R.layout.around_map_dialog, null);
            }
    }

}
