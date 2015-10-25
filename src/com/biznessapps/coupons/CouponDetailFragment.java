// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.coupons;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.camera.scanning.CaptureActivity;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.fragments.CommonListFragmentNew;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.location.LocationUtils;
import com.biznessapps.location.LocationView;
import com.biznessapps.location.entities.LocationEntity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.coupons:
//            CouponEntity, CouponsListFragment, ActivityEntity, ActivitiesAdapter

public class CouponDetailFragment extends CommonListFragmentNew
{

    private static final String CHECKIN_FORMAT = "%d/%d";
    private int checkinCount;
    private TextView checkinLabelView;
    private List checkinLocations;
    private CouponEntity coupon;
    private TextView couponCheckinView;
    private int couponState;
    private Location currentLocation;
    private TextView description;
    private ImageView headerView;
    private boolean isQrCoupon;
    private LocationListener locListener;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    private ImageView postActivityButton;
    private ImageView postActivityCircleView;
    private Button redeemButton;
    private TextView redeemTextView;
    private ImageView shareButton;
    private SocialLoginPopupView socialPopupView;
    private String tabId;

    public CouponDetailFragment()
    {
        checkinCount = 0;
        couponState = 0;
        checkinLocations = new ArrayList();
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final CouponDetailFragment this$0;

            public boolean onBackPressed()
            {
                CommonFragmentActivity commonfragmentactivity = getHoldActivity();
                if (commonfragmentactivity != null)
                {
                    Intent intent = new Intent();
                    intent.putExtra("COUPON_EXTRA", coupon);
                    commonfragmentactivity.setResult(1, intent);
                    commonfragmentactivity.finish();
                }
                return true;
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        };
    }

    private void checkCouponInitialState()
    {
        checkinCount = coupon.getCheckinTarget();
        if (checkinCount == 0)
        {
            couponState = 1;
        } else
        if (coupon.getLastRedeemedTime() != 0L)
        {
            couponState = 2;
        } else
        {
            couponState = 0;
        }
        updateControls();
    }

    private void doActionPosting()
    {
label0:
        {
            if (coupon.isSelected())
            {
                if (!SocialNetworkManager.getInstance(getActivity()).checkLogin())
                {
                    break label0;
                }
                CommonSocialNetworkHandler commonsocialnetworkhandler = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler();
                String s1 = commonsocialnetworkhandler.getUserProfileURL();
                String s2 = commonsocialnetworkhandler.getUserName();
                AsyncCallback asynccallback = new AsyncCallback() {

                    final CouponDetailFragment this$0;

                    public volatile void onResult(Object obj)
                    {
                        onResult((String)obj);
                    }

                    public void onResult(String s3)
                    {
                        if (getHoldActivity() != null)
                        {
                            int k;
                            if (JsonParser.hasDataError(s3))
                            {
                                k = com.biznessapps.layout.R.string.error_occured;
                            } else
                            {
                                loadData();
                                k = com.biznessapps.layout.R.string.successfully_posted;
                            }
                            ViewUtils.showCustomToast(getApplicationContext(), getString(k));
                        }
                    }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
                };
                String s;
                LinkedHashMap linkedhashmap;
                int i;
                int j;
                if (isQrCoupon)
                {
                    s = "post_qr_coupon_activity.php";
                } else
                {
                    s = "post_coupon_activity.php";
                }
                i = coupon.getCheckinTargetMax();
                j = coupon.getCheckinTarget();
                linkedhashmap = new LinkedHashMap();
                linkedhashmap.put("user_type", String.valueOf(commonsocialnetworkhandler.getSocialType()));
                linkedhashmap.put("user_id", commonsocialnetworkhandler.getUserID());
                AppHttpUtils.postActivity(asynccallback, s2, couponState, cacher().getAppCode(), tabId, s1, coupon.getId(), i - j, linkedhashmap, s);
            }
            return;
        }
        socialPopupView.openLoginDialog();
    }

    private void doGpsCheckin()
    {
        if (currentLocation == null)
        {
            ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.location_absent);
        } else
        {
            boolean flag;
            if (System.currentTimeMillis() - coupon.getLastCheckinTime() > (long)(coupon.getCheckinInterval() * 0x36ee80))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (flag)
            {
                updateCouponsState();
                if (couponState == 1)
                {
                    doActionPosting();
                    UserStatsProfile.getInstance(getActivity()).updateNumberOfRewards();
                    ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.have_unlocked_coupon);
                    updateControls();
                    return;
                }
                if (couponState == 0)
                {
                    doActionPosting();
                    String s = getString(com.biznessapps.layout.R.string.coupons_checkin_n_times);
                    ViewUtils.showDialog(getHoldActivity(), String.format(s, new Object[] {
                        Integer.valueOf(checkinCount)
                    }));
                    updateControls();
                    return;
                }
                if (couponState == -1)
                {
                    ViewUtils.showDialog(getHoldActivity(), getString(com.biznessapps.layout.R.string.checking_unsuccess), new Runnable() {

                        final CouponDetailFragment this$0;

                        public void run()
                        {
                            Intent intent = new Intent(getApplicationContext(), com/biznessapps/location/LocationView);
                            intent.putExtra("COUPON_EXTRA", coupon);
                            startActivity(intent);
                        }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
                    });
                    return;
                }
            } else
            {
                String s1 = getString(com.biznessapps.layout.R.string.checkin_interval);
                ViewUtils.showDialog(getHoldActivity(), String.format(s1, new Object[] {
                    Integer.valueOf(coupon.getCheckinInterval() * 1)
                }));
                return;
            }
        }
    }

    private void doQrScanning()
    {
        boolean flag;
        if (System.currentTimeMillis() - coupon.getLastCheckinTime() > (long)(coupon.getCheckinInterval() * 0x36ee80))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            startActivityForResult(new Intent(getApplicationContext(), com/biznessapps/camera/scanning/CaptureActivity), 1);
            return;
        } else
        {
            String s = getString(com.biznessapps.layout.R.string.checkin_interval);
            ViewUtils.showDialog(getHoldActivity(), String.format(s, new Object[] {
                Integer.valueOf(coupon.getCheckinInterval() * 1)
            }));
            return;
        }
    }

    private LocationListener getLocationListener()
    {
        if (locListener == null)
        {
            locListener = new LocationListener() {

                final CouponDetailFragment this$0;

                public void onLocationChanged(Location location)
                {
                    updateLocationData(location);
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
                this$0 = CouponDetailFragment.this;
                super();
            }
            };
        }
        return locListener;
    }

    private void initActivities()
    {
        ViewGroup viewgroup = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.activities_container);
        HeaderUtils.customizeContainer(viewgroup, settings.getOddRowColorTransparent(), settings);
        HeaderUtils.imageContainerCustomization(viewgroup, settings);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.activity);
        socialPopupView = new SocialLoginPopupView(getActivity(), root, new OnCommonSocialLoginListener(getActivity()) {

            final CouponDetailFragment this$0;

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                doActionPosting();
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super(context);
            }
        });
        postActivityButton.setOnClickListener(new android.view.View.OnClickListener() );
    }

    private void initCheckinLocations(CouponEntity couponentity)
    {
        couponentity = couponentity.getLocations();
        if (couponentity != null)
        {
            couponentity = couponentity.iterator();
            do
            {
                if (!couponentity.hasNext())
                {
                    break;
                }
                LocationEntity locationentity = (LocationEntity)couponentity.next();
                if (!StringUtils.checkTextFieldsOnEmpty(new String[] {
    locationentity.getLatitude(), locationentity.getLongitude()
}))
                {
                    checkinLocations.add(locationentity);
                }
            } while (true);
        }
    }

    private void initViews()
    {
        listView = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        listView.setExpandOn(true);
        TextView textview2 = (TextView)root.findViewById(com.biznessapps.layout.R.id.coupon_title_label);
        TextView textview3 = (TextView)root.findViewById(com.biznessapps.layout.R.id.date_text_view);
        description = (TextView)root.findViewById(com.biznessapps.layout.R.id.coupon_description_label);
        redeemTextView = (TextView)root.findViewById(com.biznessapps.layout.R.id.redeem_textview);
        couponCheckinView = (TextView)root.findViewById(com.biznessapps.layout.R.id.coupon_checkin_textview);
        checkinLabelView = (TextView)root.findViewById(com.biznessapps.layout.R.id.coupon_checkin_label_view);
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.direction_button);
        redeemButton = (Button)root.findViewById(com.biznessapps.layout.R.id.redeem_button);
        TextView textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.post_activity_label);
        textview.setText(com.biznessapps.layout.R.string.directions);
        Object obj = checkinLabelView;
        int i;
        if (isQrCoupon)
        {
            i = com.biznessapps.layout.R.string.scan;
        } else
        {
            i = com.biznessapps.layout.R.string.checkin;
        }
        ((TextView) (obj)).setText(i);
        redeemTextView.setText(com.biznessapps.layout.R.string.redeemed);
        redeemButton.setText(com.biznessapps.layout.R.string.stamp_card);
        textview1.setText(com.biznessapps.layout.R.string.post_activity);
        obj = CouponsListFragment.getNextCheckinTime(coupon, getApplicationContext());
        if (obj != null)
        {
            checkinLabelView.setText(((CharSequence) (obj)));
        }
        if (isQrCoupon)
        {
            i = 8;
        } else
        {
            i = 0;
        }
        textview.setVisibility(i);
        headerView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.header_image);
        textview2.setText(coupon.getTitle());
        setDate(textview3, coupon);
        if (StringUtils.isNotEmpty(coupon.getHeaderImage()))
        {
            ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new ImageLoadParams();
            imageloadparams.setView(headerView);
            imageloadparams.setUrl(coupon.getHeaderImage());
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(2);
            imagefetcher.loadImage(imageloadparams);
        }
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), redeemButton.getBackground());
        ViewUtils.setGlobalBackgroundColor(((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.coupons_container)).getBackground(), settings);
        postActivityButton = (ImageView)root.findViewById(com.biznessapps.layout.R.id.turn_function_button);
        postActivityCircleView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.turn_circle_view);
        coupon.setSelected(true);
        ViewUtils.updateTurnOnOffViewState(coupon.isSelected(), postActivityCircleView, postActivityButton, settings);
        redeemButton.setTextColor(settings.getButtonTextColor());
        description.setTextColor(settings.getFeatureTextColor());
        couponCheckinView.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getFeatureTextColor());
        textview.setTextColor(settings.getFeatureTextColor());
        checkinLabelView.setTextColor(settings.getFeatureTextColor());
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), couponCheckinView.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), checkinLabelView.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), textview.getCompoundDrawables()[0]);
        initActivities();
        redeemButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CouponDetailFragment this$0;

            public void onClick(View view)
            {
                if (couponState == 1)
                {
                    redeem();
                    return;
                }
                if (couponState == 2)
                {
                    tryToUseAgain();
                    return;
                }
                if (isQrCoupon)
                {
                    doQrScanning();
                    return;
                } else
                {
                    doGpsCheckin();
                    return;
                }
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        });
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final CouponDetailFragment this$0;

            public void onClick(View view)
            {
                showMultipleDialog(getHoldActivity(), com.biznessapps.layout.R.string.branch_directions_title, new android.widget.AdapterView.OnItemClickListener() {

                    final _cls3 this$1;

                    public void onItemClick(AdapterView adapterview, View view, int i, long l)
                    {
                        adapterview = (LocationEntity)adapterview.getAdapter().getItem(i);
                        ViewUtils.openGoogleMap(getApplicationContext(), adapterview.getLongitude(), adapterview.getLatitude());
                    }

            
            {
                this$1 = _cls3.this;
                super();
            }
                });
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        });
        shareButton = (ImageView)root.findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), shareButton.getDrawable());
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final CouponDetailFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        });
    }

    private void plugListView(Activity activity)
    {
        if (!items.isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((ActivityEntity)iterator.next(), linkedlist, settings))) { }
            activity = new ActivitiesAdapter(activity.getApplicationContext(), linkedlist, settings);
            int i;
            if (isQrCoupon)
            {
                i = 1;
            } else
            {
                i = 0;
            }
            activity.setType(i);
            listView.setAdapter(activity);
            listView.setExpandOn(true);
        }
    }

    private void redeem()
    {
        Object obj = new android.app.AlertDialog.Builder(getHoldActivity());
        ((android.app.AlertDialog.Builder) (obj)).setMessage(com.biznessapps.layout.R.string.redeem_coupon);
        obj = ((android.app.AlertDialog.Builder) (obj)).create();
        ((AlertDialog) (obj)).setButton(-1, getString(com.biznessapps.layout.R.string.yes), new android.content.DialogInterface.OnClickListener() {

            final CouponDetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                couponState = 2;
                doActionPosting();
                checkinCount = coupon.getCheckinTargetMax();
                coupon.setCheckinTarget(checkinCount);
                coupon.setLastRedeemedTime(System.currentTimeMillis());
                coupon.setLastCheckinTime(System.currentTimeMillis());
                storeCoupon(coupon);
                updateControls();
                ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.coupon_redeemed);
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        });
        ((AlertDialog) (obj)).setButton(-2, getString(com.biznessapps.layout.R.string.no), new android.content.DialogInterface.OnClickListener() {

            final CouponDetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        });
        ((AlertDialog) (obj)).show();
    }

    private void setDate(TextView textview, CouponEntity couponentity)
    {
        Object obj;
        Object obj1;
        if (couponentity.getStartDate() == null && couponentity.getEndDate() == null)
        {
            textview.setText(com.biznessapps.layout.R.string.ongoing);
            return;
        }
        obj = null;
        obj1 = null;
        if (couponentity.getStartDate() == null || couponentity.getEndDate() == null) goto _L2; else goto _L1
_L1:
        String s;
        String s1;
        s1 = DateUtils.getStandartShortDateFormat(couponentity.getStartDate());
        s = DateUtils.getStandartShortDateFormat(couponentity.getEndDate());
_L4:
        textview.setText(String.format("%s - %s", new Object[] {
            s1, s
        }));
        return;
_L2:
        if (couponentity.getStartDate() != null && couponentity.getEndDate() == null)
        {
            s1 = DateUtils.getStandartShortDateFormat(couponentity.getStartDate());
            s = getString(com.biznessapps.layout.R.string.ongoing);
        } else
        {
            s = obj1;
            s1 = obj;
            if (couponentity.getStartDate() == null)
            {
                s = obj1;
                s1 = obj;
                if (couponentity.getEndDate() != null)
                {
                    s1 = "";
                    s = DateUtils.getStandartShortDateFormat(couponentity.getEndDate());
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void showMultipleDialog(Activity activity, int i, android.widget.AdapterView.OnItemClickListener onitemclicklistener)
    {
        List list = coupon.getLocations();
        if (list != null && list.size() == 1)
        {
            onitemclicklistener = (LocationEntity)list.get(0);
            ViewUtils.openGoogleMap(activity.getApplicationContext(), onitemclicklistener.getLongitude(), onitemclicklistener.getLatitude());
            return;
        }
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.multiple_item_dialog);
        ListView listview = (ListView)viewgroup.findViewById(com.biznessapps.layout.R.id.list_view);
        listview.setItemsCanFocus(false);
        if (list != null && !list.isEmpty())
        {
            listview.setAdapter(new com.biznessapps.home_screen.HomeScreenHelper.MulitipleItemAdapter(activity.getApplicationContext(), list));
        }
        listview.setOnItemClickListener(onitemclicklistener);
        builder.setView(viewgroup);
        builder.setMessage(i);
        builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

            final CouponDetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                dialoginterface.cancel();
            }

            
            {
                this$0 = CouponDetailFragment.this;
                super();
            }
        });
        builder.show();
    }

    private void storeCoupon(CouponEntity couponentity)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(couponentity);
        StorageKeeper.instance().addCoupons(arraylist);
    }

    private void tryToUseAgain()
    {
        if (coupon.isReusable())
        {
            couponState = 0;
            checkinCount = coupon.getCheckinTargetMax();
            coupon.setCheckinTarget(checkinCount);
            coupon.setLastRedeemedTime(0L);
            coupon.setLastCheckinTime(0L);
            storeCoupon(coupon);
            updateControls();
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.coupon_cant_be_used));
            return;
        }
    }

    private void updateControls()
    {
        if (coupon.getCheckinTargetMax() == 0)
        {
            couponState = 1;
        }
        redeemTextView.setVisibility(4);
        if (couponState == 2)
        {
            redeemTextView.setVisibility(0);
            redeemButton.setText(com.biznessapps.layout.R.string.redeemed);
            couponCheckinView.setText(com.biznessapps.layout.R.string.redeemed);
            checkinLabelView.setText(" - ");
            description.setText(coupon.getDescription());
        } else
        {
            if (couponState == 1)
            {
                couponCheckinView.setText(com.biznessapps.layout.R.string.unlocked);
                checkinLabelView.setText(" - ");
                redeemButton.setText(com.biznessapps.layout.R.string.redeem);
                description.setText(coupon.getDescription());
                return;
            }
            if (couponState == 0 || couponState == -1)
            {
                Object obj;
                int i;
                if (isQrCoupon)
                {
                    redeemButton.setText(com.biznessapps.layout.R.string.scan_qr_title);
                } else
                {
                    redeemButton.setText(com.biznessapps.layout.R.string.checkin);
                }
                couponCheckinView.setText(String.format("%d/%d", new Object[] {
                    Integer.valueOf(coupon.getCheckinTargetMax() - checkinCount), Integer.valueOf(coupon.getCheckinTargetMax())
                }));
                if (isQrCoupon)
                {
                    i = com.biznessapps.layout.R.string.checkin_scan_message;
                } else
                {
                    i = com.biznessapps.layout.R.string.coupons_checkin_n_times;
                }
                obj = getString(i);
                description.setText(String.format(((String) (obj)), new Object[] {
                    Integer.valueOf(checkinCount)
                }));
                obj = CouponsListFragment.getNextCheckinTime(coupon, getApplicationContext());
                if (obj != null)
                {
                    checkinLabelView.setText(((CharSequence) (obj)));
                    return;
                }
                obj = checkinLabelView;
                if (isQrCoupon)
                {
                    i = com.biznessapps.layout.R.string.scan;
                } else
                {
                    i = com.biznessapps.layout.R.string.checkin;
                }
                ((TextView) (obj)).setText(i);
                return;
            }
        }
    }

    private void updateCouponsState()
    {
        Object obj = coupon.getLocations();
        if (obj == null) goto _L2; else goto _L1
_L1:
        obj = ((List) (obj)).iterator();
_L7:
        if (!((Iterator) (obj)).hasNext()) goto _L2; else goto _L3
_L3:
        LocationEntity locationentity = (LocationEntity)((Iterator) (obj)).next();
        if (StringUtils.checkTextFieldsOnEmpty(new String[] {
    locationentity.getLatitude(), locationentity.getLongitude()
}))
        {
            continue; /* Loop/switch isn't completed */
        }
        Location location = new Location("");
        try
        {
            location.setLatitude(Double.parseDouble(locationentity.getLatitude()));
            location.setLongitude(Double.parseDouble(locationentity.getLongitude()));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (currentLocation.distanceTo(location) >= LocationUtils.getDistanceValueInMeters(coupon.getRadius(), coupon.getDistanceType())) goto _L5; else goto _L4
_L4:
        if (checkinCount > 0)
        {
            checkinCount = checkinCount - 1;
            if (checkinCount == 0)
            {
                couponState = 1;
            } else
            {
                couponState = 0;
            }
            coupon.setCheckinTarget(checkinCount);
            coupon.setLastCheckinTime(System.currentTimeMillis());
            storeCoupon(coupon);
        }
_L2:
        return;
_L5:
        couponState = -1;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private void updateCouponsState(String s)
    {
        if (s.equalsIgnoreCase(coupon.getCode()))
        {
            if (checkinCount > 0)
            {
                checkinCount = checkinCount - 1;
                if (checkinCount == 0)
                {
                    couponState = 1;
                } else
                {
                    couponState = 0;
                }
                coupon.setCheckinTarget(checkinCount);
                coupon.setLastCheckinTime(System.currentTimeMillis());
                storeCoupon(coupon);
            }
            return;
        } else
        {
            couponState = -1;
            return;
        }
    }

    private void updateLocationData(Location location)
    {
        if (location != null)
        {
            currentLocation = location;
        }
        float f = 0.0F;
        Iterator iterator = checkinLocations.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            LocationEntity locationentity = (LocationEntity)iterator.next();
            Location location1 = new Location("");
            float f1;
            try
            {
                location1.setLatitude(Double.parseDouble(locationentity.getLatitude()));
                location1.setLongitude(Double.parseDouble(locationentity.getLongitude()));
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            f1 = location.distanceTo(location1);
            if (f1 < f || f == 0.0F)
            {
                f = f1;
            }
        } while (true);
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        if (coupon != null)
        {
            analyticentity.setItemId(coupon.getId());
        }
        return analyticentity;
    }

    protected String getRequestUrl()
    {
        String s;
        if (isQrCoupon)
        {
            s = "qr_coupon_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1";
        } else
        {
            s = "coupon_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1";
        }
        return String.format(s, new Object[] {
            cacher().getAppCode(), coupon.getId(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(redeemButton));
        return arraylist;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (intent != null && i == 1)
        {
            intent = intent.getStringExtra("SCAN_RESULT");
            if (StringUtils.isNotEmpty(intent))
            {
                updateCouponsState(intent);
                if (couponState == 1)
                {
                    UserStatsProfile.getInstance(getActivity()).updateNumberOfRewards();
                    ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.have_unlocked_coupon);
                    doActionPosting();
                    updateControls();
                } else
                {
                    if (couponState == 0)
                    {
                        doActionPosting();
                        intent = getString(com.biznessapps.layout.R.string.coupons_scan_n_times);
                        ViewUtils.showDialog(getHoldActivity(), String.format(intent, new Object[] {
                            Integer.valueOf(checkinCount)
                        }));
                        updateControls();
                        return;
                    }
                    if (couponState == -1)
                    {
                        ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.qr_unsuccess_scanning);
                        return;
                    }
                }
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.coupon_detail_layout, (ViewGroup)null);
        initSettingsData();
        isQrCoupon = getIntent().getBooleanExtra("QR_COUPON_TYPE", false);
        items = new ArrayList();
        if (!isQrCoupon)
        {
            currentLocation = AppCore.getInstance().getLocationFinder().getCurrentLocation();
            AppCore.getInstance().getLocationFinder().addLocationListener(getLocationListener());
            ViewUtils.checkGpsEnabling(getHoldActivity());
        }
        coupon = (CouponEntity)getIntent().getSerializableExtra("COUPON_EXTRA");
        bgUrl = getIntent().getStringExtra("BG_URL_EXTRA");
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        ViewUtils.setRootBgColor(root, settings);
        initCheckinLocations(coupon);
        initViews();
        checkCouponInitialState();
        loadData();
        openCustomDialogs();
        return root;
    }

    public void onDestroy()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            commonfragmentactivity.removeBackPressedListener(onBackPressedListener);
        }
        if (!isQrCoupon)
        {
            AppCore.getInstance().getLocationFinder().removeLocationListener(getLocationListener());
        }
        super.onDestroy();
    }

    public void onResume()
    {
        super.onResume();
        if (!isQrCoupon)
        {
            AppCore.getInstance().getLocationFinder().startSearching();
        }
        getHoldActivity().addBackPressedListener(onBackPressedListener);
    }

    public void onStop()
    {
        super.onStop();
        if (!isQrCoupon)
        {
            AppCore.getInstance().getLocationFinder().stopSearching();
        }
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseActivitiesList(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        plugListView(activity);
    }





/*
    static int access$102(CouponDetailFragment coupondetailfragment, int i)
    {
        coupondetailfragment.couponState = i;
        return i;
    }

*/
















/*
    static int access$902(CouponDetailFragment coupondetailfragment, int i)
    {
        coupondetailfragment.checkinCount = i;
        return i;
    }

*/
}
