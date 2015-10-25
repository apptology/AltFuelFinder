// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reservation;

import android.app.Activity;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.method.PasswordTransformationMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.Map;

// Referenced classes of package com.biznessapps.reservation:
//            ReservationDataKeeper

public class ReservationAccountRegisterFragment extends CommonFragment
{

    private boolean isCorrectData;
    private EditText userEmailView;
    private EditText userFirstNameView;
    private EditText userLastNameView;
    private EditText userPasswordConfirmView;
    private EditText userPasswordView;
    private EditText userPhoneView;

    public ReservationAccountRegisterFragment()
    {
    }

    private void registerAccount()
    {
        String s = userPasswordView.getText().toString();
        String s5 = userPasswordConfirmView.getText().toString();
        String s1 = userEmailView.getText().toString();
        String s2 = userFirstNameView.getText().toString();
        String s3 = userLastNameView.getText().toString();
        String s4 = userPhoneView.getText().toString();
        if (StringUtils.isNotEmpty(s1) && StringUtils.isNotEmpty(s2) && StringUtils.isNotEmpty(s3) && StringUtils.isNotEmpty(s4))
        {
            if (StringUtils.isCorrectEmail(s1))
            {
                if (StringUtils.isNotEmpty(s) && StringUtils.isNotEmpty(s5) && s.equalsIgnoreCase(s5))
                {
                    Map map = AppHttpUtils.getEmptyParams();
                    map.put("u", s1);
                    map.put("f", s2);
                    map.put("l", s3);
                    map.put("c", s4);
                    map.put("p", s);
                    loadPostData(map);
                    return;
                } else
                {
                    ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.password_does_not_match);
                    return;
                }
            } else
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.email_is_not_correct));
                return;
            }
        } else
        {
            ViewUtils.showDialog(getHoldActivity(), com.biznessapps.layout.R.string.fill_required_fields_message);
            return;
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_account_register_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("appuser_action.php?app_code=%s&action=7", new Object[] {
            cacher().getAppCode()
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
        Button button = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.reservation_register_button);
        userEmailView.setHint(com.biznessapps.layout.R.string.required);
        userFirstNameView.setHint(com.biznessapps.layout.R.string.required);
        userLastNameView.setHint(com.biznessapps.layout.R.string.required);
        userPhoneView.setHint(com.biznessapps.layout.R.string.required);
        userPasswordView.setHint(com.biznessapps.layout.R.string.required);
        userPasswordConfirmView.setHint(com.biznessapps.layout.R.string.required);
        ViewUtils.changeDefaultCursorColor(userEmailView);
        ViewUtils.changeDefaultCursorColor(userFirstNameView);
        ViewUtils.changeDefaultCursorColor(userLastNameView);
        ViewUtils.changeDefaultCursorColor(userPhoneView);
        ViewUtils.changeDefaultCursorColor(userPasswordView);
        ViewUtils.changeDefaultCursorColor(userPasswordConfirmView);
        userPasswordView.setTypeface(Typeface.DEFAULT);
        userPasswordView.setTransformationMethod(new PasswordTransformationMethod());
        userPasswordConfirmView.setTypeface(Typeface.DEFAULT);
        userPasswordConfirmView.setTransformationMethod(new PasswordTransformationMethod());
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationAccountRegisterFragment this$0;

            public void onClick(View view)
            {
                registerAccount();
            }

            
            {
                this$0 = ReservationAccountRegisterFragment.this;
                super();
            }
        });
        Button button1 = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.log_out_button);
        button1.setVisibility(8);
        button.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), button.getBackground());
        bgUrl = cacher().getReservSystemCacher(tabId).getBackgroundUrl();
        button.setText(com.biznessapps.layout.R.string.register);
        button1.setText(com.biznessapps.layout.R.string.logout);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.email_label_view)).setText(com.biznessapps.layout.R.string.email);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.first_name_label_view)).setText(com.biznessapps.layout.R.string.first_name);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.last_name_label_view)).setText(com.biznessapps.layout.R.string.last_name);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.phone_label_view)).setText(com.biznessapps.layout.R.string.phone);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.password_label_view)).setText(com.biznessapps.layout.R.string.password);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.confirm_password_label_view)).setText(com.biznessapps.layout.R.string.confirm);
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        initViews(root);
        ViewUtils.setRootBgColor(root, settings);
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
        super.updateControlsWithData(activity);
        if (isCorrectData)
        {
            activity.setResult(13);
            activity.finish();
            return;
        } else
        {
            ViewUtils.showShortToast(activity, com.biznessapps.layout.R.string.error_occured);
            return;
        }
    }

}
