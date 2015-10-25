// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.content.Context;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.coupons:
//            CouponEntity, CouponsListFragment

public class CouponAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView checkinView;
        TextView clockView;
        TextView dateView;
        TextView distanceView;
        ImageView iconClockView;
        ImageView iconCountView;
        ImageView locationIcon;
        TextView textView;

        private ViewHolder()
        {
        }

    }


    public CouponAdapter(Context context, List list, int i, UiSettings uisettings)
    {
        super(context, list, i, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        ViewHolder viewholder;
        View view1;
        CouponEntity couponentity;
        if (view == null)
        {
            view1 = inflater.inflate(layoutItemResourceId, null);
            viewholder = new ViewHolder();
            viewholder.textView = (TextView)view1.findViewById(com.biznessapps.layout.R.id.coupon_text);
            viewholder.dateView = (TextView)view1.findViewById(com.biznessapps.layout.R.id.date_text);
            viewholder.distanceView = (TextView)view1.findViewById(com.biznessapps.layout.R.id.distance_text);
            viewholder.locationIcon = (ImageView)view1.findViewById(com.biznessapps.layout.R.id.location_ping);
            viewholder.iconClockView = (ImageView)view1.findViewById(com.biznessapps.layout.R.id.icon_clock_view);
            viewholder.iconCountView = (ImageView)view1.findViewById(com.biznessapps.layout.R.id.icon_count_view);
            viewholder.clockView = (TextView)view1.findViewById(com.biznessapps.layout.R.id.additional_text);
            viewholder.checkinView = (TextView)view1.findViewById(com.biznessapps.layout.R.id.checkin_text);
            if (viewholder.locationIcon != null)
            {
                CommonUtils.overrideImageColor(settings.getButtonBgColor(), viewholder.locationIcon.getDrawable());
            }
            view1.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
            view1 = view;
        }
        couponentity = (CouponEntity)getItem(i);
        if (couponentity != null)
        {
            viewholder.textView.setText(Html.fromHtml(couponentity.getTitle()));
            if ((ViewGroup)view1.findViewById(com.biznessapps.layout.R.id.coupon_image_container) != null)
            {
                viewholder.clockView.setText(getContext().getString(com.biznessapps.layout.R.string.checkin));
                float f1 = 0.0F;
                float f = f1;
                if (StringUtils.isNotEmpty(couponentity.getLatitude()))
                {
                    f = f1;
                    if (StringUtils.isNotEmpty(couponentity.getLongitude()))
                    {
                        f = LocationUtils.getDistanceToPlace(couponentity.getLatitude(), couponentity.getLongitude());
                    }
                }
                view = couponentity.getLocations();
                f1 = f;
                if (view != null)
                {
                    view = view.iterator();
                    do
                    {
                        f1 = f;
                        if (!view.hasNext())
                        {
                            break;
                        }
                        viewgroup = (LocationEntity)view.next();
                        f1 = LocationUtils.getDistanceToPlace(viewgroup.getLatitude(), viewgroup.getLongitude());
                        if (f <= 0.0F)
                        {
                            f = f1;
                        } else
                        if (f1 < f)
                        {
                            f = f1;
                        }
                    } while (true);
                }
                if (f1 > 0.0F)
                {
                    viewholder.distanceView.setText(LocationUtils.getDistanceValue(f1, couponentity.getDistanceType(), getContext()));
                } else
                {
                    viewholder.distanceView.setText(getContext().getString(com.biznessapps.layout.R.string.n_a));
                }
            } else
            if (couponentity.getCheckinTargetMax() == 0)
            {
                viewholder.clockView.setText(" - ");
            } else
            {
                viewholder.clockView.setText(getContext().getString(com.biznessapps.layout.R.string.scan));
            }
            if (couponentity.getStartDate() == null && couponentity.getEndDate() == null)
            {
                viewholder.dateView.setText(getContext().getString(com.biznessapps.layout.R.string.ongoing));
            } else
            {
                Object obj = null;
                Object obj1 = null;
                if (couponentity.getStartDate() != null && couponentity.getEndDate() != null)
                {
                    viewgroup = DateUtils.getStandartShortDateFormat(couponentity.getStartDate());
                    view = DateUtils.getStandartShortDateFormat(couponentity.getEndDate());
                } else
                if (couponentity.getStartDate() != null && couponentity.getEndDate() == null)
                {
                    viewgroup = DateUtils.getStandartShortDateFormat(couponentity.getStartDate());
                    view = getContext().getString(com.biznessapps.layout.R.string.ongoing);
                } else
                {
                    view = obj1;
                    viewgroup = obj;
                    if (couponentity.getStartDate() == null)
                    {
                        view = obj1;
                        viewgroup = obj;
                        if (couponentity.getEndDate() != null)
                        {
                            viewgroup = "";
                            view = DateUtils.getStandartShortDateFormat(couponentity.getEndDate());
                        }
                    }
                }
                viewholder.dateView.setText(String.format("%s - %s", new Object[] {
                    viewgroup, view
                }));
            }
            if (couponentity.hasColor())
            {
                view1.setBackgroundDrawable(getListItemDrawable(couponentity.getItemColor()));
                CommonUtils.overrideImageColor(couponentity.getItemTextColor(), viewholder.iconClockView.getDrawable());
                CommonUtils.overrideImageColor(couponentity.getItemTextColor(), viewholder.iconCountView.getDrawable());
                if (viewholder.distanceView != null)
                {
                    setTextColorToView(couponentity.getItemTextColor(), new TextView[] {
                        viewholder.clockView, viewholder.checkinView, viewholder.dateView, viewholder.textView, viewholder.distanceView
                    });
                } else
                {
                    setTextColorToView(couponentity.getItemTextColor(), new TextView[] {
                        viewholder.clockView, viewholder.checkinView, viewholder.dateView, viewholder.textView
                    });
                }
            }
            if (StringUtils.isNotEmpty(couponentity.getId()))
            {
                if (couponentity.getCheckinTarget() == 0)
                {
                    viewholder.checkinView.setText(getContext().getString(com.biznessapps.layout.R.string.unlocked));
                    viewholder.clockView.setText(" - ");
                } else
                {
                    if (couponentity.getLastRedeemedTime() != 0L)
                    {
                        viewholder.checkinView.setText(getContext().getString(com.biznessapps.layout.R.string.redeemed));
                        viewholder.clockView.setText(" - ");
                        return view1;
                    }
                    viewholder.checkinView.setText(Html.fromHtml((new StringBuilder()).append(couponentity.getCheckinTargetMax() - couponentity.getCheckinTarget()).append("/").append(couponentity.getCheckinTargetMax()).toString()));
                    view = CouponsListFragment.getNextCheckinTime(couponentity, getContext());
                    if (view != null)
                    {
                        viewholder.clockView.setText(view);
                        return view1;
                    }
                }
            }
        }
        return view1;
    }
}
