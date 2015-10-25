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
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
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
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.common.style.BZImageViewStyle;
import com.biznessapps.common.style.BZTextViewStyle;
import com.biznessapps.coupons.ActivitiesAdapter;
import com.biznessapps.coupons.ActivityEntity;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HeaderUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.LoaderImageView;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import junit.framework.Assert;
import org.json.JSONObject;

// Referenced classes of package com.biznessapps.loyalty:
//            LoyaltyV2Entity, LoyaltyV2Perk, LoyaltyV2PerkListItemView, LoyaltyV2GaugeView, 
//            OnPerkItemRedeemClickListener

public class LoyaltyV2DetailFragment extends CommonListFragmentNew
{

    private static final int GAUGE_VIEW_PERCENT_OF_WIDTH = 90;
    private RefreshableListView mActivityListView;
    private Button mBTStamp;
    private LoyaltyV2GaugeView mGaugeView;
    private ImageView mIVHeaderImageView;
    private ImageView mIVInfo;
    private ImageView mIVInfoInfo;
    private LoaderImageView mIVProfileImage;
    private ImageView mIVShare;
    private android.view.View.OnClickListener mInfoClickListener;
    private boolean mInfoPageDisplayed;
    private LoyaltyV2Entity mLoyaltyEntity;
    private OnPerkItemRedeemClickListener mRedeemClickListener;
    private android.view.View.OnClickListener mShareClickListener;
    private android.view.View.OnClickListener mStampClickListener;
    private TextView mTVInstruction;
    private TextView mTVPoint;
    private TextView mTVProfileName;
    private ViewGroup mVGActivities;
    private ViewGroup mVGGaugeView;
    private ViewGroup mVGInfo;
    private ViewGroup mVGInfoRoot;
    private ViewGroup mVGLoyalty;
    private ViewGroup mVGPerks;
    private ViewGroup mVGProfile;
    private ViewGroup mVGThumbnail;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    AsyncCallback postActivityCallback;

    public LoyaltyV2DetailFragment()
    {
        mInfoPageDisplayed = false;
        mShareClickListener = new android.view.View.OnClickListener() {

            final LoyaltyV2DetailFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        };
        mStampClickListener = new android.view.View.OnClickListener() {

            final LoyaltyV2DetailFragment this$0;

            public void onClick(View view)
            {
                if (mBTStamp.getText().equals(getString(com.biznessapps.layout.R.string.stamp)))
                {
                    stamp();
                    return;
                } else
                {
                    login();
                    return;
                }
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        };
        mRedeemClickListener = new OnPerkItemRedeemClickListener() {

            final LoyaltyV2DetailFragment this$0;

            public void onRedeemClickListener(final LoyaltyV2Perk perk)
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
                ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_dialog);
                ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_title_view)).setText(getString(com.biznessapps.layout.R.string.loyalty_redeem_dialog_message));
                EditText edittext = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_secret_edittext);
                builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

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
                builder.setPositiveButton(com.biznessapps.layout.R.string.redeem, edittext. new android.content.DialogInterface.OnClickListener() {

                    final _cls7 this$1;
                    final LoyaltyV2Perk val$perk;
                    final EditText val$secretEditText;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        i = mLoyaltyEntity.getAwardedValue();
                        int j = perk.totalPoints;
                        dialoginterface = secretEditText.getText().toString();
                        checkLoyality(false, dialoginterface, i - j, perk.getId(), new Runnable() {

                            final _cls2 this$2;

                            public void run()
                            {
                                postActivityForRedeem(perk);
                                updateUI();
                            }

            
            {
                this$2 = _cls2.this;
                super();
            }
                        }, new Runnable() {

                            final _cls2 this$2;

                            public void run()
                            {
                                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                            }

            
            {
                this$2 = _cls2.this;
                super();
            }
                        });
                    }

            
            {
                this$1 = final__pcls7;
                perk = loyaltyv2perk;
                secretEditText = EditText.this;
                super();
            }
                });
                builder.setView(viewgroup);
                builder.setTitle(getHoldActivity().getString(com.biznessapps.layout.R.string.loyalty_dialog_title));
                builder.show();
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        };
        mInfoClickListener = new android.view.View.OnClickListener() {

            final LoyaltyV2DetailFragment this$0;

            public void onClick(View view)
            {
                mInfoPageDisplayed = true;
                updateUI();
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        };
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final LoyaltyV2DetailFragment this$0;

            public boolean onBackPressed()
            {
                if (mVGInfo.isShown())
                {
                    mInfoPageDisplayed = false;
                    updateUI();
                } else
                {
                    getActivity().finish();
                }
                return true;
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        };
        postActivityCallback = new AsyncCallback() {

            final LoyaltyV2DetailFragment this$0;

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
label0:
                {
                    if (getHoldActivity() != null)
                    {
                        if (!JsonParser.hasDataError(s))
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
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        };
    }

    private void applyStyle()
    {
        if (defineBgUrl(getIntent()) != null)
        {
            mVGThumbnail.setBackgroundColor(settings.getGlobalBgColor() & 0x7fffffff);
        }
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getFeatureTextColor()), mVGThumbnail);
        BZButtonStyle.getInstance(getActivity()).apply(settings, mVGThumbnail);
        BZImageViewStyle.getInstance(getActivity()).apply(settings.getButtonBgColor(), mIVInfo);
        if (defineBgUrl(getIntent()) != null)
        {
            mVGInfoRoot.setBackgroundColor(settings.getGlobalBgColor() & 0x7fffffff);
        }
        BZImageViewStyle.getInstance(getActivity()).apply(settings.getButtonBgColor(), mIVInfoInfo);
        BZTextViewStyle.getInstance(getActivity()).apply(Integer.valueOf(settings.getFeatureTextColor()), mVGInfoRoot);
    }

    private void checkLoyality(boolean flag, final String progressDialog, int i, final String perkId, final Runnable successRunnable, final Runnable errorRunable)
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("loyalty_id", mLoyaltyEntity.getId());
        linkedhashmap.put("code", progressDialog);
        linkedhashmap.put("num_stamped", String.valueOf(i));
        if (flag)
        {
            linkedhashmap.put("action", "stamp");
        } else
        {
            linkedhashmap.put("action", "redeem");
        }
        linkedhashmap.put("platform", "android");
        linkedhashmap.put("version", "1");
        linkedhashmap.put("is_advanced", "1");
        if (!flag)
        {
            linkedhashmap.put("perk_id", perkId);
        }
        progressDialog = ViewUtils.getProgressDialog(getActivity());
        progressDialog.show();
        AppHttpUtils.executePostRequest("loyalty_check.php", linkedhashmap, new AsyncCallback() {

            final LoyaltyV2DetailFragment this$0;
            final Runnable val$errorRunable;
            final String val$perkId;
            final ProgressDialog val$progressDialog;
            final Runnable val$successRunnable;

            public void onError(String s, Throwable throwable)
            {
                super.onError(s, throwable);
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.server_connection_failure));
                progressDialog.dismiss();
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                s = new JSONObject(s);
                if (s.getInt("success") != 1)
                {
                    break MISSING_BLOCK_LABEL_163;
                }
                int j = s.getInt("new_count");
                mLoyaltyEntity.setAwardedValue(j);
                s = JsonParser.getJSONValue(s, "user_loyalty_perk");
                if (s == null) goto _L2; else goto _L1
_L1:
                Iterator iterator = s.keys();
                if (s == null || iterator == null) goto _L2; else goto _L3
_L3:
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    String s1 = (String)iterator.next();
                    if (JsonParser.getIntValue(s, s1) == -1 && s1.equals(perkId))
                    {
                        mLoyaltyEntity.markAsConsumed(perkId);
                    }
                } while (true);
                  goto _L2
_L4:
                progressDialog.dismiss();
                return;
_L2:
                try
                {
                    getActivity().runOnUiThread(successRunnable);
                }
                // Misplaced declaration of an exception variable
                catch (String s)
                {
                    s.printStackTrace();
                    getActivity().runOnUiThread(errorRunable);
                }
                  goto _L4
                getActivity().runOnUiThread(errorRunable);
                  goto _L4
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                perkId = s;
                successRunnable = runnable;
                errorRunable = runnable1;
                progressDialog = progressdialog;
                super();
            }
        }, true);
    }

    private void login()
    {
        (new SocialLoginPopupView(getActivity(), root, true, new OnCommonSocialLoginListener(getActivity()) {

            final LoyaltyV2DetailFragment this$0;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.email_is_not_correct));
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super(context);
            }
        })).openLoginDialog();
    }

    private void plugListView(Activity activity)
    {
        if (items != null && !items.isEmpty())
        {
            LinkedList linkedlist = new LinkedList();
            for (Iterator iterator = items.iterator(); iterator.hasNext(); linkedlist.add(ViewUtils.getWrappedItem((ActivityEntity)iterator.next(), linkedlist, settings))) { }
            activity = new ActivitiesAdapter(activity.getApplicationContext(), linkedlist, settings);
            activity.setType(2);
            activity.setLoyaltyV2UnitType(mLoyaltyEntity.perkUnitType);
            listView.setAdapter(activity);
            listView.setExpandOn(true);
        }
    }

    private void postActivityForRedeem(LoyaltyV2Perk loyaltyv2perk)
    {
        Assert.assertTrue(SocialNetworkManager.getInstance(getActivity()).checkLogin(true));
        CommonSocialNetworkHandler commonsocialnetworkhandler = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler(true);
        String s;
        String s1;
        LinkedHashMap linkedhashmap;
        boolean flag;
        if (commonsocialnetworkhandler != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        s = commonsocialnetworkhandler.getUserName();
        s1 = commonsocialnetworkhandler.getUserProfileURL();
        linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("user_type", String.valueOf(commonsocialnetworkhandler.getSocialType()));
        linkedhashmap.put("user_id", commonsocialnetworkhandler.getUserID());
        linkedhashmap.put("points", String.valueOf(mLoyaltyEntity.getAwardedValue()));
        linkedhashmap.put("perk", loyaltyv2perk.getTitle());
        AppHttpUtils.postActivity(postActivityCallback, s, 1, cacher().getAppCode(), tabId, s1, mLoyaltyEntity.getId(), 0, linkedhashmap, "post_loyalty_activity.php");
    }

    private void postActivityForStamp()
    {
        boolean flag = true;
        Assert.assertTrue(SocialNetworkManager.getInstance(getActivity()).checkLogin(true));
        CommonSocialNetworkHandler commonsocialnetworkhandler = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler(true);
        String s;
        String s1;
        LinkedHashMap linkedhashmap;
        if (commonsocialnetworkhandler == null)
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        s = commonsocialnetworkhandler.getUserName();
        s1 = commonsocialnetworkhandler.getUserProfileURL();
        linkedhashmap = new LinkedHashMap();
        linkedhashmap.put("user_type", String.valueOf(commonsocialnetworkhandler.getSocialType()));
        linkedhashmap.put("user_id", commonsocialnetworkhandler.getUserID());
        linkedhashmap.put("points", String.valueOf(mLoyaltyEntity.getAwardedValue()));
        AppHttpUtils.postActivity(postActivityCallback, s, 0, cacher().getAppCode(), tabId, s1, mLoyaltyEntity.getId(), 0, linkedhashmap, "post_loyalty_activity.php");
    }

    private void rebuildPerkListView()
    {
        mVGLoyalty.setVisibility(0);
        mVGPerks.removeAllViews();
        LoyaltyV2PerkListItemView loyaltyv2perklistitemview;
        for (Iterator iterator = mLoyaltyEntity.getDefinedLoyaltyPerks().iterator(); iterator.hasNext(); mVGPerks.addView(loyaltyv2perklistitemview))
        {
            LoyaltyV2Perk loyaltyv2perk = (LoyaltyV2Perk)iterator.next();
            loyaltyv2perklistitemview = new LoyaltyV2PerkListItemView(getActivity());
            android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
            layoutparams.topMargin = getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.common_padding_medium);
            loyaltyv2perklistitemview.setLayoutParams(layoutparams);
            loyaltyv2perklistitemview.setPerk(mLoyaltyEntity, loyaltyv2perk, settings);
            loyaltyv2perklistitemview.setOnRedeemClickListener(mRedeemClickListener);
        }

    }

    private void stamp()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(getHoldActivity());
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.loyalty_dialog);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_title_view)).setText(getString(com.biznessapps.layout.R.string.loyalty_stamp_dialog_message));
        final EditText secretEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_secret_edittext);
        builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV2DetailFragment this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                dialoginterface.dismiss();
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
        });
        builder.setPositiveButton(com.biznessapps.layout.R.string.stamp, new android.content.DialogInterface.OnClickListener() {

            final LoyaltyV2DetailFragment this$0;
            final EditText val$secretEditText;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s = secretEditText.getText().toString();
                i = mLoyaltyEntity.getAwardedValue();
                checkLoyality(true, s, i, null, dialoginterface. new Runnable() {

                    final _cls5 this$1;
                    final DialogInterface val$dialog;

                    public void run()
                    {
                        postActivityForStamp();
                        updateUI();
                        dialog.dismiss();
                    }

            
            {
                this$1 = final__pcls5;
                dialog = DialogInterface.this;
                super();
            }
                }, dialoginterface. new Runnable() {

                    final _cls5 this$1;
                    final DialogInterface val$dialog;

                    public void run()
                    {
                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.loyalty_wrong_code_message));
                        dialog.dismiss();
                    }

            
            {
                this$1 = final__pcls5;
                dialog = DialogInterface.this;
                super();
            }
                });
            }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                secretEditText = edittext;
                super();
            }
        });
        builder.setView(viewgroup);
        builder.setTitle(getHoldActivity().getString(com.biznessapps.layout.R.string.loyalty_dialog_title));
        builder.show();
    }

    private void updateUI()
    {
        if (mInfoPageDisplayed)
        {
            mVGLoyalty.setVisibility(8);
            mVGInfo.setVisibility(0);
            return;
        }
        mVGLoyalty.setVisibility(0);
        mVGInfo.setVisibility(8);
        Object obj = SocialNetworkManager.getInstance(getActivity()).getLatestLoggedInSocialHandler(true);
        int i;
        if (obj != null && ((CommonSocialNetworkHandler) (obj)).getSocialType() != 0)
        {
            mTVProfileName.setText(((CommonSocialNetworkHandler) (obj)).getUserName());
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(mIVProfileImage);
            imageloadparams.setTint(null);
            imageloadparams.setUrl(((CommonSocialNetworkHandler) (obj)).getUserProfileURL());
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageFormType(1);
            imageloadparams.setImageType(1);
            mVGProfile.setVisibility(0);
            mIVProfileImage.setImageDrawable(((CommonSocialNetworkHandler) (obj)).getUserProfileURL(), imageloadparams);
        } else
        {
            mVGProfile.setVisibility(8);
            mTVProfileName.setText(com.biznessapps.layout.R.string.anonymous_user);
        }
        if (SocialNetworkManager.getInstance(getActivity()).checkLogin(true))
        {
            mBTStamp.setText(com.biznessapps.layout.R.string.stamp);
        } else
        {
            mBTStamp.setText(com.biznessapps.layout.R.string.login);
        }
        mTVPoint.setText(String.format("%d %s", new Object[] {
            Integer.valueOf(mLoyaltyEntity.getAwardedValue()), mLoyaltyEntity.unitShortHand
        }));
        i = (int)(((float)Math.min(AppCore.getInstance().getDeviceWidth(), AppCore.getInstance().getDeviceHeight()) / 100F) * 90F);
        obj = mGaugeView.getLayoutParams();
        obj.width = i;
        obj.height = i;
        mGaugeView.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        mGaugeView.relayoutGauge();
        rebuildPerkListView();
    }

    protected String defineBgUrl(Intent intent)
    {
        return intent.getStringExtra("BG_URL_EXTRA");
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        analyticentity.setTabId(getIntent().getStringExtra("TAB_SPECIAL_ID"));
        if (mLoyaltyEntity != null)
        {
            analyticentity.setItemId(mLoyaltyEntity.getId());
        }
        return analyticentity;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.loyalty_v2_detail;
    }

    protected String getRequestUrl()
    {
        return String.format("loyalty_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1", new Object[] {
            cacher().getAppCode(), mLoyaltyEntity.getId(), tabId
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

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        mIVShare = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.share_button);
        mIVShare.setOnClickListener(mShareClickListener);
        mVGLoyalty = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgLoyalty);
        mVGLoyalty.setVisibility(0);
        mVGThumbnail = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgThumbnail);
        mIVHeaderImageView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.loyalty_header_image);
        mIVInfo = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivInfo);
        mIVInfo.setOnClickListener(mInfoClickListener);
        mVGProfile = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgProfile);
        mIVProfileImage = (LoaderImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.ivProfileImage);
        mTVProfileName = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvProfileName);
        mVGGaugeView = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgGauge);
        mGaugeView = (LoyaltyV2GaugeView)viewgroup.findViewById(com.biznessapps.layout.R.id.gaugeView);
        mGaugeView.setLoyaltyEntity(mLoyaltyEntity);
        mGaugeView.setUiSettings(settings);
        mTVPoint = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvPoint);
        mBTStamp = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.btStamp);
        mBTStamp.setOnClickListener(mStampClickListener);
        mVGPerks = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgPerks);
        mVGActivities = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgActivities);
        mActivityListView = (RefreshableListView)mVGActivities.findViewById(com.biznessapps.layout.R.id.list_view);
        mActivityListView.setExpandOn(true);
        com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        imageloadparams.setView(mIVHeaderImageView);
        imageloadparams.setUrl(mLoyaltyEntity.getHeaderImage());
        imageloadparams.setImageSrc(true);
        imageloadparams.setImageType(2);
        getImageFetcher().loadImage(imageloadparams);
        rebuildPerkListView();
        int i = settings.getOddRowColorTransparent();
        HeaderUtils.customizeContainer(mVGActivities, i, settings);
        HeaderUtils.imageContainerCustomization(mVGActivities, settings);
        ((TextView)mVGActivities.findViewById(com.biznessapps.layout.R.id.header_container).findViewById(com.biznessapps.layout.R.id.header)).setText(com.biznessapps.layout.R.string.activity);
        mVGInfo = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgInfo);
        mVGInfo.setVisibility(8);
        mVGInfoRoot = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.vgInfoRoot);
        mIVInfoInfo = (ImageView)mVGInfoRoot.findViewById(com.biznessapps.layout.R.id.ivInfoInfo);
        mTVInstruction = (TextView)mVGInfo.findViewById(com.biznessapps.layout.R.id.tvInstruction);
        mTVInstruction.setText(mLoyaltyEntity.instruction);
        applyStyle();
        updateUI();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        mLoyaltyEntity = (LoyaltyV2Entity)getIntent().getSerializableExtra("ITEM_EXTRA");
        super.onCreateView(layoutinflater, viewgroup, bundle);
        items = new ArrayList();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        getHoldActivity().addBackPressedListener(onBackPressedListener);
        if (!SocialNetworkManager.getInstance(getActivity()).checkLogin(true))
        {
            layoutinflater = new android.app.AlertDialog.Builder(getHoldActivity());
            layoutinflater.setMessage(getString(com.biznessapps.layout.R.string.loyalty_login_notice));
            layoutinflater.setPositiveButton(com.biznessapps.layout.R.string.okay_i_got_it, new android.content.DialogInterface.OnClickListener() {

                final LoyaltyV2DetailFragment this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

            
            {
                this$0 = LoyaltyV2DetailFragment.this;
                super();
            }
            });
            layoutinflater.show();
        }
        return root;
    }

    public void onPause()
    {
        super.onPause();
    }

    public void onResume()
    {
        super.onResume();
        updateUI();
    }

    protected void preDataLoading(Activity activity)
    {
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
    static boolean access$802(LoyaltyV2DetailFragment loyaltyv2detailfragment, boolean flag)
    {
        loyaltyv2detailfragment.mInfoPageDisplayed = flag;
        return flag;
    }

*/

}
