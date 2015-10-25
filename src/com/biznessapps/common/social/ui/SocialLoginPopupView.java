// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.email.EmailSocialNetworkHandler;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.common.social.googleplus.GooglePlusSocialNetworkHandler;
import com.biznessapps.common.social.twitter.TwitterSocialNetworkHandler;

public class SocialLoginPopupView
{

    private Context mActivity;
    private ImageButton mBTChooseAccounts;
    private OnSocialLoginListener mLoginListener;
    private ViewGroup mSVAccountsContent;

    public SocialLoginPopupView(Activity activity, ViewGroup viewgroup, OnSocialLoginListener onsocialloginlistener)
    {
        this(activity, viewgroup, false, onsocialloginlistener);
    }

    public SocialLoginPopupView(Activity activity, ViewGroup viewgroup, boolean flag, OnSocialLoginListener onsocialloginlistener)
    {
        mActivity = activity;
        mLoginListener = onsocialloginlistener;
        mSVAccountsContent = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.choose_accounts_content);
        activity = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.add_via_facebook_button);
        onsocialloginlistener = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.add_via_twitter_button);
        Button button = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.add_via_google_plus_button);
        Button button1 = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.add_via_email_button);
        Button button2 = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.cancel_button);
        mBTChooseAccounts = (ImageButton)viewgroup.findViewById(com.biznessapps.layout.R.id.choose_login_account);
        if (flag)
        {
            button1.setVisibility(0);
        } else
        {
            button1.setVisibility(8);
        }
        if (mBTChooseAccounts != null)
        {
            mBTChooseAccounts.setOnClickListener(new android.view.View.OnClickListener() {

                final SocialLoginPopupView this$0;

                public void onClick(View view)
                {
                    openLoginDialog();
                }

            
            {
                this$0 = SocialLoginPopupView.this;
                super();
            }
            });
        }
        button2.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialLoginPopupView this$0;

            public void onClick(View view)
            {
                closeLoginAccountsDialog(mSVAccountsContent);
            }

            
            {
                this$0 = SocialLoginPopupView.this;
                super();
            }
        });
        activity.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialLoginPopupView this$0;

            public void onClick(View view)
            {
                FacebookSocialNetworkHandler.getInstance(mActivity).login(mLoginListener);
                closeLoginAccountsDialog(mSVAccountsContent);
            }

            
            {
                this$0 = SocialLoginPopupView.this;
                super();
            }
        });
        onsocialloginlistener.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialLoginPopupView this$0;

            public void onClick(View view)
            {
                TwitterSocialNetworkHandler.getInstance(mActivity).login(mLoginListener);
                closeLoginAccountsDialog(mSVAccountsContent);
            }

            
            {
                this$0 = SocialLoginPopupView.this;
                super();
            }
        });
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialLoginPopupView this$0;

            public void onClick(View view)
            {
                GooglePlusSocialNetworkHandler.getInstance(mActivity).login(mLoginListener);
                closeLoginAccountsDialog(mSVAccountsContent);
            }

            
            {
                this$0 = SocialLoginPopupView.this;
                super();
            }
        });
        button1.setOnClickListener(new android.view.View.OnClickListener() {

            final SocialLoginPopupView this$0;

            public void onClick(View view)
            {
                EmailSocialNetworkHandler.getInstance(mActivity).login(mLoginListener);
                closeLoginAccountsDialog(mSVAccountsContent);
            }

            
            {
                this$0 = SocialLoginPopupView.this;
                super();
            }
        });
        activity.setText(com.biznessapps.layout.R.string.facebook);
        onsocialloginlistener.setText(com.biznessapps.layout.R.string.twitter);
        button.setText(com.biznessapps.layout.R.string.google_plus);
        button1.setText(com.biznessapps.layout.R.string.email);
        button2.setText(com.biznessapps.layout.R.string.cancel);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.choose_account_view)).setText(com.biznessapps.layout.R.string.choose_login_account);
    }

    private void closeLoginAccountsDialog(ViewGroup viewgroup)
    {
        Animation animation = AnimationUtils.loadAnimation(mActivity, com.biznessapps.layout.R.anim.hide_tell_friends_dialog);
        viewgroup.startAnimation(animation);
        animation.setAnimationListener(new com.biznessapps.utils.ViewUtils.HideAnimationListener(viewgroup));
    }

    private void openLoginAccountsDialog(ViewGroup viewgroup)
    {
        if (viewgroup.getVisibility() == 8)
        {
            viewgroup.setVisibility(0);
            viewgroup.startAnimation(AnimationUtils.loadAnimation(mActivity, com.biznessapps.layout.R.anim.show_tell_friends_dialog));
        }
    }

    public void openLoginDialog()
    {
        openLoginAccountsDialog(mSVAccountsContent);
    }




}
