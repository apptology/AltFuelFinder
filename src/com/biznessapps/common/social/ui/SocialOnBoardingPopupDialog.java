// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialStatusChangeListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.common.social.googleplus.GooglePlusSocialNetworkHandler;
import com.biznessapps.common.social.twitter.TwitterSocialNetworkHandler;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import junit.framework.Assert;

public class SocialOnBoardingPopupDialog extends Dialog
{

    private Button facebookConnectButton;
    private Button googleConnectButton;
    private CommonFragmentActivity mActivity;
    private UiSettings mUiSettings;
    private Button skipButton;
    private Button twitterConnectButton;

    public SocialOnBoardingPopupDialog(CommonFragmentActivity commonfragmentactivity, UiSettings uisettings)
    {
        super(commonfragmentactivity);
        requestWindowFeature(1);
        mActivity = commonfragmentactivity;
        mUiSettings = uisettings;
        initUI();
        registerListener();
    }

    private void applySocialStatus(CommonSocialNetworkHandler commonsocialnetworkhandler, Button button)
    {
        boolean flag;
        if (commonsocialnetworkhandler != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (commonsocialnetworkhandler.isLoggedIn())
        {
            button.setText(getContext().getResources().getString(com.biznessapps.layout.R.string.logout));
            return;
        } else
        {
            button.setText(getContext().getResources().getString(com.biznessapps.layout.R.string.connect));
            return;
        }
    }

    private void handleConnectionButtonClick(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        boolean flag;
        if (commonsocialnetworkhandler != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (!commonsocialnetworkhandler.isLoggedIn())
        {
            commonsocialnetworkhandler.login(new OnCommonSocialLoginListener(mActivity) {

                final SocialOnBoardingPopupDialog this$0;

                public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler1)
                {
                    ViewUtils.showCustomToast(mActivity.getApplicationContext(), mActivity.getString(com.biznessapps.layout.R.string.login_completed));
                }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super(context);
            }
            });
            return;
        } else
        {
            commonsocialnetworkhandler.logout(null);
            return;
        }
    }

    private void initUI()
    {
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(mActivity, com.biznessapps.layout.R.layout.social_onboarding_layout);
        TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.title_text);
        ViewGroup viewgroup1 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.social_facebook_container);
        ViewGroup viewgroup2 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.social_twitter_container);
        ViewGroup viewgroup3 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.social_google_container);
        TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.description_text);
        TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.facebook_text_view);
        TextView textview3 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.twitter_text_view);
        TextView textview4 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.google_text_view);
        skipButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.skip_button);
        facebookConnectButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.facebook_connect);
        twitterConnectButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.twitter_connect);
        googleConnectButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.google_connect);
        skipButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.skip_button);
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (appsettings != null && appsettings.isSocialOnBoard())
        {
            textview.setTextColor(mUiSettings.getFeatureTextColor());
            textview1.setTextColor(mUiSettings.getFeatureTextColor());
            textview2.setTextColor(mUiSettings.getOddRowTextColor());
            textview3.setTextColor(mUiSettings.getEvenRowTextColor());
            textview4.setTextColor(mUiSettings.getOddRowTextColor());
            viewgroup1.setBackgroundColor(mUiSettings.getOddRowColorTransparent());
            viewgroup2.setBackgroundColor(mUiSettings.getEvenRowColorTransparent());
            viewgroup3.setBackgroundColor(mUiSettings.getOddRowColorTransparent());
            skipButton.setTextColor(mUiSettings.getButtonTextColor());
            skipButton.setBackgroundColor(mUiSettings.getButtonBgColor());
            twitterConnectButton.setTextColor(mUiSettings.getButtonTextColor());
            facebookConnectButton.setTextColor(mUiSettings.getButtonTextColor());
            googleConnectButton.setTextColor(mUiSettings.getButtonTextColor());
            CommonUtils.overrideImageColor(mUiSettings.getButtonBgColor(), twitterConnectButton.getBackground());
            CommonUtils.overrideImageColor(mUiSettings.getButtonBgColor(), facebookConnectButton.getBackground());
            CommonUtils.overrideImageColor(mUiSettings.getButtonBgColor(), googleConnectButton.getBackground());
            ViewUtils.setRootBgColor(viewgroup, mUiSettings);
        }
        textview.setText(com.biznessapps.layout.R.string.social_connect);
        textview1.setText(com.biznessapps.layout.R.string.social_networks_label);
        textview2.setText(com.biznessapps.layout.R.string.facebook);
        facebookConnectButton.setText(com.biznessapps.layout.R.string.connect);
        textview3.setText(com.biznessapps.layout.R.string.twitter);
        twitterConnectButton.setText(com.biznessapps.layout.R.string.connect);
        textview4.setText(com.biznessapps.layout.R.string.google_plus);
        googleConnectButton.setText(com.biznessapps.layout.R.string.connect);
        skipButton.setText(com.biznessapps.layout.R.string.skip);
        facebookConnectButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialOnBoardingPopupDialog this$0;

            public void onClick(View view)
            {
                handleConnectionButtonClick(FacebookSocialNetworkHandler.getInstance(mActivity));
            }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super();
            }
        });
        twitterConnectButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialOnBoardingPopupDialog this$0;

            public void onClick(View view)
            {
                handleConnectionButtonClick(TwitterSocialNetworkHandler.getInstance(mActivity));
            }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super();
            }
        });
        googleConnectButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialOnBoardingPopupDialog this$0;

            public void onClick(View view)
            {
                handleConnectionButtonClick(GooglePlusSocialNetworkHandler.getInstance(mActivity));
            }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super();
            }
        });
        skipButton.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialOnBoardingPopupDialog this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super();
            }
        });
        setContentView(viewgroup);
        updateUI();
    }

    private void registerListener()
    {
        SocialNetworkManager.getInstance(getContext()).setOnSocialStatusChangeListener(new OnSocialStatusChangeListener() {

            final SocialOnBoardingPopupDialog this$0;

            public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
            {
                updateUI();
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                updateUI();
            }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super();
            }
        });
        setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

            final SocialOnBoardingPopupDialog this$0;

            public void onDismiss(DialogInterface dialoginterface)
            {
                unregisterListener();
            }

            
            {
                this$0 = SocialOnBoardingPopupDialog.this;
                super();
            }
        });
    }

    private void unregisterListener()
    {
        SocialNetworkManager.getInstance(mActivity).setOnSocialStatusChangeListener(null);
    }

    private void updateUI()
    {
        applySocialStatus(FacebookSocialNetworkHandler.getInstance(mActivity), facebookConnectButton);
        applySocialStatus(TwitterSocialNetworkHandler.getInstance(mActivity), twitterConnectButton);
        if (SocialNetworkManager.getInstance(getContext()).getLoggedInSocialHandler() != null)
        {
            skipButton.setText(getContext().getResources().getText(com.biznessapps.layout.R.string.next));
            return;
        } else
        {
            skipButton.setText(getContext().getResources().getText(com.biznessapps.layout.R.string.skip));
            return;
        }
    }




}
