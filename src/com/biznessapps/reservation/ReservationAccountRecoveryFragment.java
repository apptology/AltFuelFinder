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

public class ReservationAccountRecoveryFragment extends CommonFragment
{

    private EditText userEmailView;

    public ReservationAccountRecoveryFragment()
    {
    }

    private void recoverPassword()
    {
        if (StringUtils.isNotEmpty(userEmailView.getText().toString()))
        {
            Map map = AppHttpUtils.getEmptyParams();
            map.put("email", userEmailView.getText().toString());
            loadPostData(map);
        }
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.reservation_account_recovery_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("appuser_action.php?app_code=%s&action=4", new Object[] {
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
        userEmailView.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final ReservationAccountRecoveryFragment this$0;

            public void run()
            {
                recoverPassword();
            }

            
            {
                this$0 = ReservationAccountRecoveryFragment.this;
                super();
            }
        }));
        Button button = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.recovery_button);
        button.setOnClickListener(new android.view.View.OnClickListener() {

            final ReservationAccountRecoveryFragment this$0;

            public void onClick(View view)
            {
                recoverPassword();
            }

            
            {
                this$0 = ReservationAccountRecoveryFragment.this;
                super();
            }
        });
        ((ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.account_container)).getBackground().setAlpha(120);
        button.setTextColor(settings.getButtonTextColor());
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), button.getBackground());
        bgUrl = cacher().getReservSystemCacher(tabId).getBackgroundUrl();
        button.setText(com.biznessapps.layout.R.string.recover_password);
        userEmailView.setHint(com.biznessapps.layout.R.string.email);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.recovery_label)).setText(com.biznessapps.layout.R.string.provide_email);
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
        hasResultError = JsonParser.hasDataError(s);
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (hasResultError)
        {
            ViewUtils.showShortToast(activity, com.biznessapps.layout.R.string.reservation_recover_failed);
            return;
        } else
        {
            activity.finish();
            return;
        }
    }

}
