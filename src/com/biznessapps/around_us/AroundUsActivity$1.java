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

class alog
    implements com.google.android.gms.maps.wAdapter
{

    final AroundUsActivity this$0;
    private final View view;

    public View getInfoContents(Marker marker)
    {
        if (marker != null && marker.isInfoWindowShown())
        {
            marker.hideInfoWindow();
            marker.showInfoWindow();
        }
        return null;
    }

    public View getInfoWindow(final Marker marker)
    {
        Object obj = (MapEntity)AroundUsActivity.access$000(AroundUsActivity.this).get(marker);
        if (obj instanceof tem)
        {
            obj = (tem)obj;
            if (((tem) (obj)).isCurrentLocoation())
            {
                marker = getLayoutInflater().inflate(com.biznessapps.layout.ialog, null);
                ((TextView)marker.findViewById(com.biznessapps.layout.ialog)).setText(((tem) (obj)).getGeneralInfo());
                return marker;
            }
            ((TextView)view.findViewById(com.biznessapps.layout.._cls1.view)).setText((new StringBuilder()).append("\u200E").append(Html.fromHtml(((tem) (obj)).getName())).toString());
            ((TextView)view.findViewById(com.biznessapps.layout.._cls1.view)).setText((new StringBuilder()).append("\u200E").append(Html.fromHtml(((tem) (obj)).getLocation().getAddress1())).toString());
            Object obj1 = (TextView)view.findViewById(com.biznessapps.layout.._cls1.view);
            LocationUtils.setDistanceValue(getApplicationContext(), ((TextView) (obj1)), ((MapEntity) (obj)));
            obj1 = (ImageView)view.findViewById(com.biznessapps.layout.._cls1.view);
            if (StringUtils.isNotEmpty(((tem) (obj)).getImageUrl()) && !((tem) (obj)).getImageUrl().contains("aroundus.png"))
            {
                AroundUsActivity.access$100(AroundUsActivity.this).loadCircledBackground(((tem) (obj)).getImageUrl(), ((View) (obj1)), new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

                    final AroundUsActivity._cls1 this$1;
                    final Marker val$marker;

                    public void onImageLoaded(String s, Bitmap bitmap, View view1)
                    {
                        ((ImageView)view1).setImageBitmap(bitmap);
                        getInfoContents(marker);
                    }

            
            {
                this$1 = AroundUsActivity._cls1.this;
                marker = marker1;
                super();
            }
                });
            }
        }
        return view;
    }

    _cls1.val.marker()
    {
        this$0 = AroundUsActivity.this;
        super();
        view = getLayoutInflater().inflate(com.biznessapps.layout._dialog, null);
    }
}
