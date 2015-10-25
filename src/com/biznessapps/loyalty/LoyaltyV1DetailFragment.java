// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.loyalty;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.SeekBar;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.fragments.CommonListFragmentNew;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.coupons.ActivitiesAdapter;
import com.biznessapps.coupons.ActivityEntity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.ArcSeekBar;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV1Entity

public class LoyaltyV1DetailFragment extends CommonListFragmentNew
{

    private static final int COLUMN_NUMBER = 5;
    private static final int MAX_PERCENT_VALUE = 100;
    private static final int MIN_PERCENT_VALUE = 0;
    private static final float SEEKBAAR_WIDTH_FACTOR = 0.8F;
    private static final int TEXT_WIDTH_OFFSET = 4;
    private int actionType;
    private int appliedCoupons;
    private TextView arcCurValueView;
    private TextView arcMaxValueView;
    private ArcSeekBar arcSeekBar;
    private TextView arcZeroValueView;
    private boolean areItemsApproved;
    private ViewGroup cardContainer;
    private ImageView headerView;
    private TextView infoView;
    private boolean isNextCardFound;
    private LoyaltyV1Entity item;
    private ImageView nextCardView;
    private ImageView postActivityButton;
    private ImageView postActivityCircleView;
    private int seekBarWidth;
    private SeekBar seekbar;
    private TextView seekbarCurrentValueView;
    private ImageView shareButton;
    private SocialLoginPopupView socialPopupView;
    private Button stampCardButton;

    public LoyaltyV1DetailFragment()
    {
        actionType = 0;
    }

    private void addRow(ViewGroup viewgroup, int i, List list)
    {
        ViewGroup viewgroup1 = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_card_layout);
        int j = i * 5;
        if (j + 5 > list.size())
        {
            i = list.size();
        } else
        {
            i = j + 5;
        }
        for (; j < i; j++)
        {
            ViewGroup viewgroup2 = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_card_item_layout);
            viewgroup2.setPadding(0, 10, 0, 10);
            final ImageView columnImage = (ImageView)viewgroup2.findViewById(com.biznessapps.layout.R.id.loyalty_coupon_image);
            final LoyaltyV1Entity.LoyaltyCardItem card = (LoyaltyV1Entity.LoyaltyCardItem)list.get(j);
            if (!card.isApproved() && !isNextCardFound)
            {
                if (card.isLocked())
                {
                    card.setLocked(false);
                }
                nextCardView = columnImage;
                isNextCardFound = true;
            }
            if (card.isApproved())
            {
                columnImage.setBackgroundResource(com.biznessapps.layout.R.drawable.loyalty_coupon_icon_active);
                CommonUtils.overrideImageColor(settings.getButtonBgColor(), columnImage.getBackground());
            }
            columnImage.setOnClickListener(new android.view.View.OnClickListener() {

                final LoyaltyV1DetailFragment this$0;
                final LoyaltyV1Entity.LoyaltyCardItem val$card;
                final ImageView val$columnImage;

                public void onClick(View view)
                {
                    if (!card.isLocked() && card.isApproved() && card.isLast())
                    {
                        areItemsApproved = true;
                        tryToRedeem();
                    } else
                    if (!card.isLocked() && !card.isApproved())
                    {
                        view = new android.app.AlertDialog.Builder(getHoldActivity());
                        ViewGroup viewgroup3 = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_dialog);
                        ((TextView)viewgroup3.findViewById(com.biznessapps.layout.R.id.loyalty_title_view)).setText(getString(com.biznessapps.layout.R.string.loyalty_stamp_dialog_message));
                        EditText edittext = (EditText)viewgroup3.findViewById(com.biznessapps.layout.R.id.loyalty_secret_edittext);
                        view.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

                            final _cls7 this$1;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                dialoginterface.dismiss();
                            }

            
            {
                this$1 = _cls7.this;
                super();
            }
                        });
                        view.setPositiveButton(com.biznessapps.layout.R.string.loyalty_dialog_yes_title, edittext. new android.content.DialogInterface.OnClickListener() {

                            final _cls7 this$1;
                            final EditText val$secretEditText;

                            public void onClick(DialogInterface dialoginterface, int i)
                            {
                                String s = secretEditText.getText().toString();
                                i = item.getApprovedCount();
                                checkLoyality(true, s, i, "stamp", dialoginterface. new Runnable() , dialoginterface. new Runnable() {

                                    final _cls2 this$2;
                                    final DialogInterface val$dialog;

                                    public void run()
                                    {
                                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                                        dialog.dismiss();
                                    }

            
            {
                this$2 = final__pcls2;
                dialog = DialogInterface.this;
                super();
            }
                                });
                            }

            
            {
                this$1 = final__pcls7;
                secretEditText = EditText.this;
                super();
            }
                        });
                        view.setView(viewgroup3);
                        view.setTitle(getHoldActivity().getString(com.biznessapps.layout.R.string.loyalty_dialog_title));
                        view.show();
                        return;
                    }
                }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                card = loyaltycarditem;
                columnImage = imageview;
                super();
            }
            });
            viewgroup1.addView(viewgroup2);
        }

        viewgroup.addView(viewgroup1);
    }

    private void changeDisplayProgress(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = appliedCoupons + 1;
        }
        appliedCoupons = i;
        i = Math.round((appliedCoupons * 100) / item.getCoupons().size());
        if (item.useGaugeOption())
        {
            TextView textview = arcCurValueView;
            String s;
            if (item.showAsPercents())
            {
                s = (new StringBuilder()).append(i).append("%").toString();
            } else
            {
                s = String.format("%d", new Object[] {
                    Integer.valueOf(appliedCoupons)
                });
            }
            textview.setText(s);
            arcSeekBar.setCurrentProgress(appliedCoupons);
        }
    }

    private void checkLoyality(boolean flag, final String progressDialog, int i, String s, final Runnable successRunnable, final Runnable errorRunable)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("loyalty_id", item.getId());
        if (flag)
        {
            linkedhashmap.put("code", progressDialog);
        }
        linkedhashmap.put("num_stamped", String.valueOf(i));
        linkedhashmap.put("action", s);
        linkedhashmap.put("platform", "android");
        linkedhashmap.put("version", "1");
        progressDialog = ViewUtils.getProgressDialog(getActivity());
        progressDialog.show();
        AppHttpUtils.executePostRequest("loyalty_check.php", linkedhashmap, new AsyncCallback() {

            final LoyaltyV1DetailFragment this$0;
            final Runnable val$errorRunable;
            final ProgressDialog val$progressDialog;
            final Runnable val$successRunnable;

            public void onError(String s1, Throwable throwable)
            {
                super.onError(s1, throwable);
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.server_connection_failure));
                progressDialog.dismiss();
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s1)
            {
                s1 = new JSONObject(s1);
                if (s1.getInt("success") != 1) goto _L2; else goto _L1
_L1:
                int j = s1.getInt("new_count");
                item.setApprovedCount(j);
                StorageKeeper.instance().saveLoyaltyItem(item);
                if (!item.stampCompleted()) goto _L4; else goto _L3
_L3:
                actionType = 2;
_L5:
                getActivity().runOnUiThread(successRunnable);
_L6:
                progressDialog.dismiss();
                return;
_L4:
                actionType = 0;
                  goto _L5
                s1;
                s1.printStackTrace();
                if (errorRunable != null)
                {
                    getActivity().runOnUiThread(errorRunable);
                }
                  goto _L6
_L2:
                if (errorRunable == null) goto _L6; else goto _L7
_L7:
                getActivity().runOnUiThread(errorRunable);
                  goto _L6
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                successRunnable = runnable;
                errorRunable = runnable1;
                progressDialog = progressdialog;
                super();
            }
        }, true);
    }

    private void doActionPosting()
    {
label0:
        {
            if (item.isSelected())
            {
                if (!SocialNetworkManager.getInstance(getActivity()).checkLogin())
                {
                    break label0;
                }
                CommonSocialNetworkHandler commonsocialnetworkhandler = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler();
                String s = commonsocialnetworkhandler.getUserProfileURL();
                String s1 = commonsocialnetworkhandler.getUserName();
                AsyncCallback asynccallback = new AsyncCallback() {

                    final LoyaltyV1DetailFragment this$0;

                    public volatile void onResult(Object obj)
                    {
                        onResult((String)obj);
                    }

                    public void onResult(String s2)
                    {
label0:
                        {
                            if (getHoldActivity() != null)
                            {
                                if (!JsonParser.hasDataError(s2))
                                {
                                    break label0;
                                }
                                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.error_occured));
                            }
                            return;
                        }
                        loadData();
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.successfully_posted));
                    }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                super();
            }
                };
                int i = appliedCoupons;
                LinkedHashMap linkedhashmap = new LinkedHashMap();
                linkedhashmap.put("user_type", String.valueOf(commonsocialnetworkhandler.getSocialType()));
                linkedhashmap.put("user_id", commonsocialnetworkhandler.getUserID());
                AppHttpUtils.postActivity(asynccallback, s1, actionType, cacher().getAppCode(), tabId, s, item.getId(), i + 1, linkedhashmap, "post_loyalty_activity.php");
            }
            return;
        }
        socialPopupView.openLoginDialog();
    }

    private void initActivities()
    {
        ViewGroup viewgroup = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.activities_container);
        HeaderUtils.customizeContainer(viewgroup, settings.getOddRowColorTransparent(), settings);
        HeaderUtils.imageContainerCustomization(viewgroup, settings);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.activity);
        socialPopupView = new SocialLoginPopupView(getActivity(), root, new OnCommonSocialLoginListener(getActivity()) {

            final LoyaltyV1DetailFragment this$0;

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                doActionPosting();
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                super(context);
            }
        });
        postActivityButton.setOnClickListener(new android.view.View.OnClickListener() );
    }

    private void initDisplayProgressViews()
    {
        if (item.useGaugeOption())
        {
            root.findViewById(com.biznessapps.layout.R.id.arc_container).setVisibility(0);
            Object obj = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.arc_values_container);
            ((ViewGroup) (obj)).setVisibility(0);
            arcSeekBar = (ArcSeekBar)root.findViewById(com.biznessapps.layout.R.id.arc_seekbar);
            Object obj1 = (android.widget.FrameLayout.LayoutParams)arcSeekBar.getLayoutParams();
            int i = (int)((float)getAppCore().getDeviceWidth() / 1.3F);
            int j = i / 2;
            obj1.width = i;
            obj1.height = j;
            arcSeekBar.setMaxProgress(item.getCoupons().size());
            arcSeekBar.setTrackColor(getResources().getColor(com.biznessapps.layout.R.color.gray));
            arcSeekBar.setProgressColor(settings.getButtonBgColor());
            ((android.widget.LinearLayout.LayoutParams)((ViewGroup) (obj)).getLayoutParams()).width = i;
            arcCurValueView = (TextView)root.findViewById(com.biznessapps.layout.R.id.arc_current_value_view);
            arcZeroValueView = (TextView)root.findViewById(com.biznessapps.layout.R.id.arc_zero_value_view);
            arcMaxValueView = (TextView)root.findViewById(com.biznessapps.layout.R.id.arc_max_value_view);
            arcCurValueView.setTextColor(settings.getFeatureTextColor());
            arcZeroValueView.setTextColor(settings.getFeatureTextColor());
            arcMaxValueView.setTextColor(settings.getFeatureTextColor());
            i = Math.round((appliedCoupons * 100) / item.getCoupons().size());
            obj1 = arcCurValueView;
            if (item.showAsPercents())
            {
                obj = (new StringBuilder()).append(i).append("%").toString();
            } else
            {
                obj = String.format("%d", new Object[] {
                    Integer.valueOf(appliedCoupons)
                });
            }
            ((TextView) (obj1)).setText(((CharSequence) (obj)));
            if (item.showAsPercents())
            {
                arcMaxValueView.setText(String.valueOf(100));
            } else
            {
                arcMaxValueView.setText(String.valueOf(item.getCoupons().size()));
            }
        } else
        {
            cardContainer.setVisibility(0);
        }
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), stampCardButton.getBackground());
    }

    private void initViews()
    {
        listView = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        listView.setExpandOn(true);
        headerView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.loyalty_header_image);
        cardContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.loyalty_grid_container);
        stampCardButton = (Button)root.findViewById(com.biznessapps.layout.R.id.stamp_card_button);
        postActivityButton = (ImageView)root.findViewById(com.biznessapps.layout.R.id.turn_function_button);
        postActivityCircleView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.turn_circle_view);
        Object obj = (TextView)root.findViewById(com.biznessapps.layout.R.id.post_activity_label);
        ((TextView) (obj)).setTextColor(settings.getFeatureTextColor());
        infoView = (TextView)root.findViewById(com.biznessapps.layout.R.id.loyalty_info_view);
        stampCardButton.setText(com.biznessapps.layout.R.string.stamp_card);
        ((TextView) (obj)).setText(com.biznessapps.layout.R.string.post_activity);
        item.setSelected(true);
        ViewUtils.updateTurnOnOffViewState(item.isSelected(), postActivityCircleView, postActivityButton, settings);
        obj = (TextView)root.findViewById(com.biznessapps.layout.R.id.loyalty_title_label);
        stampCardButton.setTextColor(settings.getButtonTextColor());
        stampCardButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LoyaltyV1DetailFragment this$0;

            public void onClick(View view)
            {
                if (nextCardView != null)
                {
                    nextCardView.performClick();
                } else
                if (areItemsApproved)
                {
                    tryToRedeem();
                    return;
                }
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                super();
            }
        });
        infoView.setTextColor(settings.getFeatureTextColor());
        bgUrl = getIntent().getStringExtra("BG_URL_EXTRA");
        if (StringUtils.isNotEmpty(bgUrl))
        {
            ViewUtils.setGlobalBackgroundColor(((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.loyalty_container)).getBackground(), settings);
        }
        ((TextView) (obj)).setText(item.getTitle());
        obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(headerView);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(item.getHeaderImage());
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(2);
        getImageFetcher().loadImage(((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
        shareButton = (ImageView)root.findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), shareButton.getDrawable());
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final LoyaltyV1DetailFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                super();
            }
        });
        initActivities();
        initDisplayProgressViews();
    }

    private void loadCouponsData()
    {
        if (item.getCoupons() != null && !item.getCoupons().isEmpty())
        {
            cardContainer.removeAllViews();
            int k = item.getCoupons().size();
            int i;
            int j;
            if (k % 5 == 0)
            {
                i = k / 5;
            } else
            {
                i = k / 5 + 1;
            }
            for (j = 0; j < i; j++)
            {
                addRow(cardContainer, j, item.getCoupons());
            }

            appliedCoupons = 0;
            Object obj = item.getCoupons().iterator();
            do
            {
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                if (((LoyaltyV1Entity.LoyaltyCardItem)((Iterator) (obj)).next()).isApproved())
                {
                    changeDisplayProgress(false);
                }
            } while (true);
            if (!isNextCardFound)
            {
                obj = (LoyaltyV1Entity.LoyaltyCardItem)item.getCoupons().get(k - 1);
                if (obj != null && ((LoyaltyV1Entity.LoyaltyCardItem) (obj)).isApproved())
                {
                    areItemsApproved = true;
                    if (!((LoyaltyV1Entity.LoyaltyCardItem) (obj)).isAlreadyUnLocked())
                    {
                        ((LoyaltyV1Entity.LoyaltyCardItem) (obj)).setAlreadyUnLocked(true);
                        StorageKeeper.instance().saveLoyaltyItem(item);
                        UserStatsProfile.getInstance(getActivity()).updateNumberOfRewards();
                        showSuccessDialog();
                    }
                }
            }
            if (areItemsApproved)
            {
                obj = getString(com.biznessapps.layout.R.string.redeem_loyalty_card);
            } else
            {
                obj = String.format(getString(com.biznessapps.layout.R.string.collect_stamps_for_coupon), new Object[] {
                    Integer.valueOf(item.getCoupons().size() - appliedCoupons)
                });
            }
            infoView.setText(((CharSequence) (obj)));
            obj = stampCardButton;
            if (areItemsApproved)
            {
                i = com.biznessapps.layout.R.string.redeem;
            } else
            {
                i = com.biznessapps.layout.R.string.stamp_card;
            }
            ((Button) (obj)).setText(i);
        }
    }

    private void plugListView(Activity activity)
    {
        if (items != null && !items.isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((ActivityEntity)iterator.next(), linkedlist, settings))) { }
            activity = new ActivitiesAdapter(activity.getApplicationContext(), linkedlist, settings);
            activity.setType(2);
            listView.setAdapter(activity);
            listView.setExpandOn(true);
        }
    }

    private void setInitialStateForCoupon()
    {
        nextCardView = null;
        changeDisplayProgress(true);
        if (item.getCoupons() != null)
        {
            for (Iterator iterator = item.getCoupons().iterator(); iterator.hasNext();)
            {
                LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem = (LoyaltyV1Entity.LoyaltyCardItem)iterator.next();
                loyaltycarditem.setLocked(true);
                loyaltycarditem.setAlreadyUnLocked(false);
                loyaltycarditem.setApproved(false);
                isNextCardFound = false;
                areItemsApproved = false;
            }

            loadCouponsData();
        }
    }

    private void showRedeemDialog()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_dialog);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_title_view)).setText(getString(com.biznessapps.layout.R.string.loyalty_redeem_dialog_message));
        final EditText secretEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_secret_edittext);
        builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV1DetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                super();
            }
        });
        builder.setPositiveButton(com.biznessapps.layout.R.string.redeem, new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV1DetailFragment this$0;
            final EditText val$secretEditText;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                i = item.getApprovedCount();
                String s = secretEditText.getText().toString();
                checkLoyality(false, s, i, "redeem", dialoginterface. new Runnable() {

                    final _cls9 this$1;
                    final DialogInterface val$dialog;

                    public void run()
                    {
                        actionType = 1;
                        doActionPosting();
                        setInitialStateForCoupon();
                        dialog.dismiss();
                    }

            
            {
                this$1 = final__pcls9;
                dialog = DialogInterface.this;
                super();
            }
                }, dialoginterface. new Runnable() {

                    final _cls9 this$1;
                    final DialogInterface val$dialog;

                    public void run()
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                        dialog.dismiss();
                    }

            
            {
                this$1 = final__pcls9;
                dialog = DialogInterface.this;
                super();
            }
                });
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                secretEditText = edittext;
                super();
            }
        });
        builder.setView(viewgroup);
        builder.setTitle(getHoldActivity().getString(com.biznessapps.layout.R.string.loyalty_dialog_title));
        builder.show();
    }

    private void showSuccessDialog()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
        builder.setPositiveButton(com.biznessapps.layout.R.string.yes, new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV1DetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
                actionType = 2;
                doActionPosting();
            }

            
            {
                this$0 = LoyaltyV1DetailFragment.this;
                super();
            }
        });
        builder.setTitle(String.format("%s %s", new Object[] {
            getString(com.biznessapps.layout.R.string.loyalty_congrats_message), item.getTitle()
        }));
        builder.show();
    }

    private void synchronizeData(LoyaltyV1Entity loyaltyv1entity, LoyaltyV1Entity loyaltyv1entity1)
    {
        if (loyaltyv1entity1 != null && loyaltyv1entity != null)
        {
            loyaltyv1entity1 = loyaltyv1entity1.getCoupons();
            loyaltyv1entity = loyaltyv1entity.getCoupons();
            if (loyaltyv1entity != null && !loyaltyv1entity.isEmpty() && loyaltyv1entity1 != null && !loyaltyv1entity1.isEmpty())
            {
                for (loyaltyv1entity1 = loyaltyv1entity1.iterator(); loyaltyv1entity1.hasNext();)
                {
                    LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem = (LoyaltyV1Entity.LoyaltyCardItem)loyaltyv1entity1.next();
                    Iterator iterator = loyaltyv1entity.iterator();
                    while (iterator.hasNext()) 
                    {
                        LoyaltyV1Entity.LoyaltyCardItem loyaltycarditem1 = (LoyaltyV1Entity.LoyaltyCardItem)iterator.next();
                        if (loyaltycarditem.getCouponId().equalsIgnoreCase(loyaltycarditem1.getCouponId()))
                        {
                            loyaltycarditem.setApproved(loyaltycarditem1.isApproved());
                            loyaltycarditem.setLocked(loyaltycarditem1.isLocked());
                            loyaltycarditem.setAlreadyUnLocked(loyaltycarditem1.isAlreadyUnLocked());
                        }
                    }
                }

            }
        }
    }

    private void tryToRedeem()
    {
        if (areItemsApproved)
        {
            showRedeemDialog();
        }
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setTabId(getIntent().getStringExtra("TAB_SPECIAL_ID"));
        if (item != null)
        {
            analyticentity.setItemId(item.getId());
        }
        return analyticentity;
    }

    protected String getRequestUrl()
    {
        return String.format("loyalty_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1", new Object[] {
            cacher().getAppCode(), item.getId(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        getActivity().getWindow().setSoftInputMode(32);
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.loyalty_v1_detail, (ViewGroup)null);
        initSettingsData();
        item = (LoyaltyV1Entity)getIntent().getSerializableExtra("ITEM_EXTRA");
        items = new ArrayList();
        if (item != null)
        {
            layoutinflater = StorageKeeper.instance().getLoyaltyItem(item.getId());
            if (layoutinflater != null)
            {
                synchronizeData(layoutinflater, item);
            }
            initViews();
            loadData();
            loadCouponsData();
        }
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        ViewUtils.setRootBgColor(root, settings);
        return root;
    }

    public void onPause()
    {
        super.onPause();
        if (item != null)
        {
            StorageKeeper.instance().saveLoyaltyItem(item);
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
    static boolean access$102(LoyaltyV1DetailFragment loyaltyv1detailfragment, boolean flag)
    {
        loyaltyv1detailfragment.areItemsApproved = flag;
        return flag;
    }

*/


/*
    static boolean access$1102(LoyaltyV1DetailFragment loyaltyv1detailfragment, boolean flag)
    {
        loyaltyv1detailfragment.isNextCardFound = flag;
        return flag;
    }

*/












/*
    static int access$902(LoyaltyV1DetailFragment loyaltyv1detailfragment, int i)
    {
        loyaltyv1detailfragment.actionType = i;
        return i;
    }

*/
}
