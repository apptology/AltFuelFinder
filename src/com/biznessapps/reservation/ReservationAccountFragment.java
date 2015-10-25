// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Map;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDataKeeper, ReservationUtils

public class ReservationAccountFragment extends CommonFragment
{

    private ReservationDataKeeper dataKeeper;
    private Button logoutButton;
    private Button registerButton;
    private String token;
    private EditText userEmailView;
    private EditText userFirstNameView;
    private EditText userLastNameView;
    private EditText userPasswordConfirmView;
    private EditText userPasswordView;
    private EditText userPhoneView;

    public ReservationAccountFragment()
    {
    }

    private void initValues()
    {
        token = dataKeeper.getSessionToken();
        userEmailView.setText(dataKeeper.getUserEmail());
        userFirstNameView.setText(dataKeeper.getUserFirstName());
        userLastNameView.setText(dataKeeper.getUserLastName());
        userPhoneView.setText(dataKeeper.getUserPhone());
        bgUrl = dataKeeper.getBackgroundUrl();
    }

    private void logout()
    {
        dataKeeper.setLoggedIn(false);
        getHoldActivity().finish();
    }

    private void updateProfile()
    {
        String s = userPasswordView.getText().toString();
        String s1 = userPasswordConfirmView.getText().toString();
        if (StringUtils.isNotEmpty(s) && StringUtils.isNotEmpty(s1) && s.equalsIgnoreCase(s1))
        {
            Map map = AppHttpUtils.getEmptyParams();
            map.put("u", userEmailView.getText().toString());
            map.put("f", userFirstNameView.getText().toString());
            map.put("l", userLastNameView.getText().toString());
            map.put("c", userPhoneView.getText().toString());
            if (StringUtils.isNotEmpty(s))
            {
                map.put("p", s);
            }
            loadPostData(map);
            return;
        } else
        {
            ViewUtils.showShortToast(getHoldActivity(), com.biznessapps.layout.R.string.password_does_not_match);
            return;
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_account_register_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("appuser_action.php?app_code=%s&action=8&tk=%s", new Object[] {
            cacher().getAppCode(), token
        });
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        userEmailView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_email_text);
        userFirstNameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_first_name_text);
        userLastNameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_last_name_text);
        userPhoneView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_phone_text);
        userPasswordView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_password_text);
        userPasswordConfirmView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.user_password_confirm_text);
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.account_container)).getBackground().setAlpha(120);
        registerButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.reservation_register_button);
        registerButton.setText(com.biznessapps.layout.R.string.update);
        logoutButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.log_out_button);
        registerButton.setTextColor(settings.getButtonTextColor());
        logoutButton.setTextColor(settings.getButtonTextColor());
        registerButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationAccountFragment this$0;

            public void onClick(View view)
            {
                updateProfile();
            }

            
            {
                this$0 = ReservationAccountFragment.this;
                super();
            }
        });
        logoutButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationAccountFragment this$0;

            public void onClick(View view)
            {
                logout();
            }

            
            {
                this$0 = ReservationAccountFragment.this;
                super();
            }
        });
        initValues();
        ViewUtils.setRootBgColor(viewgroup, settings);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        dataKeeper = cacher().getReservSystemCacher(tabId);
        initViews(root);
        return root;
    }

    protected boolean tryParseData(String s)
    {
        hasResultError = JsonParser.hasDataError(s);
        if (JsonParser.hasInvalidTokenError(s))
        {
            ReservationUtils.showInvalidTokenDialog(getHoldActivity(), AppHandlers.getUiHandler());
        }
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        if (hasResultError)
        {
            ViewUtils.showShortToast(activity, com.biznessapps.layout.R.string.reservation_update_profile_failed);
            return;
        } else
        {
            dataKeeper.setUserEmail(userEmailView.getText().toString());
            dataKeeper.setUserFirstName(userFirstNameView.getText().toString());
            dataKeeper.setUserLastName(userLastNameView.getText().toString());
            dataKeeper.setUserPhone(userPhoneView.getText().toString());
            activity.finish();
            return;
        }
    }


}
