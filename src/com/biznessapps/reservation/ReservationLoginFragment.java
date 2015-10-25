// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDataKeeper

public class ReservationLoginFragment extends CommonFragment
{

    private TextView createAccountView;
    private boolean isCorrectData;
    private Button loginButton;
    private TextView recoveryTextView;
    private EditText userEmailText;
    private EditText userPasswordText;

    public ReservationLoginFragment()
    {
    }

    private void initListeners()
    {
        loginButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationLoginFragment this$0;

            public void onClick(View view)
            {
                loadData();
            }

            
            {
                this$0 = ReservationLoginFragment.this;
                super();
            }
        });
        createAccountView.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationLoginFragment this$0;

            public void onClick(View view)
            {
                openRegisterWindow();
            }

            
            {
                this$0 = ReservationLoginFragment.this;
                super();
            }
        });
        recoveryTextView.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationLoginFragment this$0;

            public void onClick(View view)
            {
                openRecoveryWindow();
            }

            
            {
                this$0 = ReservationLoginFragment.this;
                super();
            }
        });
    }

    private void openRecoveryWindow()
    {
        String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationAccountRecoveryFragment"));
        intent.putExtra("TAB_SPECIAL_ID", s);
        intent.putExtra("TAB_FRAGMENT", "ReservationAccountRecoveryFragment");
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.forgot));
        startActivityForResult(intent, 0);
    }

    private void openRegisterWindow()
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("ReservationRegisterFragment"));
        intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
        intent.putExtra("TAB_FRAGMENT", "ReservationRegisterFragment");
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.reservation_register_account_title));
        startActivityForResult(intent, 0);
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_login_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("appuser_action.php?app_code=%s&action=2&u=%s&p=%s", new Object[] {
            cacher().getAppCode(), userEmailText.getText(), userPasswordText.getText()
        });
    }

    protected void initViews(ViewGroup viewgroup)
    {
        userEmailText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_email_text);
        userPasswordText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_password_text);
        loginButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.reservation_login_button);
        recoveryTextView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.recovery_textview);
        createAccountView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.create_account_textview);
        userPasswordText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final ReservationLoginFragment this$0;

            public void run()
            {
                loginButton.performClick();
            }

            
            {
                this$0 = ReservationLoginFragment.this;
                super();
            }
        }));
        ViewUtils.setRootBgColor(viewgroup, settings);
        String s = cacher().getReservSystemCacher(tabId).getBackgroundUrl();
        if (StringUtils.isNotEmpty(s))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(s, viewgroup, settings);
        }
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.login_container)).getBackground().setAlpha(180);
        loginButton.setTextColor(settings.getButtonTextColor());
        recoveryTextView.setTextColor(settings.getButtonBgColor());
        createAccountView.setTextColor(settings.getButtonBgColor());
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), loginButton.getBackground());
        createAccountView.setText(com.biznessapps.layout.R.string.create_account);
        userEmailText.setHint(com.biznessapps.layout.R.string.email);
        userPasswordText.setHint(com.biznessapps.layout.R.string.password);
        loginButton.setText(com.biznessapps.layout.R.string.login);
        recoveryTextView.setText(com.biznessapps.layout.R.string.forgot_your_password);
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 13)
        {
            intent = getHoldActivity();
            if (intent != null)
            {
                intent.setResult(8);
                intent.finish();
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        initListeners();
        bgUrl = cacher().getReservSystemCacher(tabId).getBackgroundUrl();
        return root;
    }

    protected boolean tryParseData(String s)
    {
        s = JsonParser.parseSessionToken(s);
        isCorrectData = StringUtils.isNotEmpty(s.getSessionToken());
        if (isCorrectData)
        {
            ReservationDataKeeper reservationdatakeeper = cacher().getReservSystemCacher(tabId);
            reservationdatakeeper.setLoggedIn(true);
            reservationdatakeeper.setSessionToken(s.getSessionToken());
            reservationdatakeeper.setUserEmail(s.getUserEmail());
            reservationdatakeeper.setUserFirstName(s.getUserFirstName());
            reservationdatakeeper.setUserLastName(s.getUserLastName());
            reservationdatakeeper.setUserPhone(s.getUserPhone());
        }
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
label0:
        {
            if (activity != null)
            {
                if (!isCorrectData)
                {
                    break label0;
                }
                activity.setResult(8);
                activity.finish();
            }
            return;
        }
        ViewUtils.showShortToast(activity, com.biznessapps.layout.R.string.wrong_email_or_password);
    }




}
