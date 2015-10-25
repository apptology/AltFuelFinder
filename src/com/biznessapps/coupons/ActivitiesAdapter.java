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
import com.biznessapps.localization.StringsSource;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;
import java.util.Locale;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.coupons:
//            ActivityEntity

public class ActivitiesAdapter extends AbstractAdapter
{

    public static final int GPS_TYPE = 0;
    public static final int LOYALTY_TYPE = 2;
    public static final int QR_TYPE = 1;
    private boolean isAdvancedLoyalty;
    private String loyaltyV2UnitType;
    private int type;

    public ActivitiesAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.activities_item, uisettings);
        isAdvancedLoyalty = false;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1;
        ActivityEntity activityentity;
        if (view == null)
        {
            view1 = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.CommonItem();
            viewgroup.setTextViewTitle((TextView)view1.findViewById(com.biznessapps.layout.R.id.name_text_view));
            viewgroup.setBottomTextView((TextView)view1.findViewById(com.biznessapps.layout.R.id.content_text_view));
            viewgroup.setImageView((ImageView)view1.findViewById(com.biznessapps.layout.R.id.row_icon));
            view1.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.CommonItem)view.getTag();
            view1 = view;
        }
        activityentity = (ActivityEntity)getItem(i);
        if (activityentity != null)
        {
            view = activityentity.getName();
            Object obj = view;
            if (view.contains("Anonymous"))
            {
                obj = StringsSource.getInstance().getValue(getContext(), activityentity.getName());
            }
            i = activityentity.getAction();
            if (type == 2)
            {
                if (i == 0)
                {
                    if (!isAdvancedLoyalty)
                    {
                        view = getContext().getString(com.biznessapps.layout.R.string.completed_stamp);
                        i = activityentity.getSequence();
                        Object obj1 = getContext();
                        if (i == 1)
                        {
                            i = com.biznessapps.layout.R.string.coupon_state_1st;
                        } else
                        if (i == 2)
                        {
                            i = com.biznessapps.layout.R.string.coupon_state_2nd;
                        } else
                        if (i == 3)
                        {
                            i = com.biznessapps.layout.R.string.coupon_state_3rd;
                        } else
                        {
                            i = com.biznessapps.layout.R.string.coupon_state_4th;
                        }
                        obj1 = ((Context) (obj1)).getString(i);
                        view = String.format(view, new Object[] {
                            obj, Integer.valueOf(activityentity.getSequence()), obj1
                        });
                    } else
                    {
                        boolean flag;
                        if (loyaltyV2UnitType != null)
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        Assert.assertTrue(flag);
                        view = String.format(Locale.getDefault(), getContext().getString(com.biznessapps.layout.R.string.completed_v2_stamp), new Object[] {
                            obj, Integer.valueOf(activityentity.getPoints()), loyaltyV2UnitType
                        });
                    }
                } else
                if (i == 1)
                {
                    if (!isAdvancedLoyalty)
                    {
                        view = String.format(getContext().getString(com.biznessapps.layout.R.string.redeemed_loyalty), new Object[] {
                            obj
                        });
                    } else
                    {
                        boolean flag1;
                        if (loyaltyV2UnitType != null)
                        {
                            flag1 = true;
                        } else
                        {
                            flag1 = false;
                        }
                        Assert.assertTrue(flag1);
                        view = String.format(Locale.getDefault(), getContext().getString(com.biznessapps.layout.R.string.redeemed_perk), new Object[] {
                            obj, activityentity.getPerk(), Integer.valueOf(activityentity.getPoints()), loyaltyV2UnitType
                        });
                    }
                } else
                {
                    view = String.format(getContext().getString(com.biznessapps.layout.R.string.reward_loyalty), new Object[] {
                        obj
                    });
                }
            } else
            if (i == 0)
            {
                view = getContext();
                Object obj2;
                if (type == 0)
                {
                    i = com.biznessapps.layout.R.string.completed_checkin;
                } else
                {
                    i = com.biznessapps.layout.R.string.completed_scans;
                }
                view = view.getString(i);
                i = activityentity.getSequence();
                obj2 = getContext();
                if (i == 1)
                {
                    i = com.biznessapps.layout.R.string.coupon_state_1st;
                } else
                if (i == 2)
                {
                    i = com.biznessapps.layout.R.string.coupon_state_2nd;
                } else
                if (i == 3)
                {
                    i = com.biznessapps.layout.R.string.coupon_state_3rd;
                } else
                {
                    i = com.biznessapps.layout.R.string.coupon_state_4th;
                }
                obj2 = ((Context) (obj2)).getString(i);
                view = String.format(view, new Object[] {
                    obj, Integer.valueOf(activityentity.getSequence()), obj2
                });
            } else
            if (i == 1)
            {
                view = String.format(getContext().getString(com.biznessapps.layout.R.string.unlocked_coupon), new Object[] {
                    obj
                });
            } else
            {
                view = String.format(getContext().getString(com.biznessapps.layout.R.string.redeemed_coupon), new Object[] {
                    obj
                });
            }
            viewgroup.getTextViewTitle().setText(Html.fromHtml(((String) (obj))));
            viewgroup.getBottomTextView().setText(view);
            view = (TextView)view1.findViewById(com.biznessapps.layout.R.id.time_text_view);
            if (activityentity.getDate() != null)
            {
                view.setText(DateUtils.getStringInterval(getContext(), activityentity.getDate()));
            }
            if (StringUtils.isNotEmpty(activityentity.getAvatarUrl()))
            {
                imageFetcher.loadCircledBackground(activityentity.getAvatarUrl(), viewgroup.getImageView());
            } else
            {
                viewgroup.getImageView().setBackgroundResource(com.biznessapps.layout.R.drawable.ic_anonymous_avatar);
            }
            if (activityentity.hasColor())
            {
                view1.setBackgroundDrawable(getListItemDrawable(activityentity.getItemColor()));
                setTextColorToView(activityentity.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewTitle(), viewgroup.getBottomTextView(), view
                });
            }
        }
        return view1;
    }

    public void setLoyaltyV2UnitType(String s)
    {
        loyaltyV2UnitType = s;
        isAdvancedLoyalty = true;
    }

    public void setType(int i)
    {
        type = i;
    }
}
