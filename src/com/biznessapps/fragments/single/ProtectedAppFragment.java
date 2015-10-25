// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.layout.MainController;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import java.util.Map;

public class ProtectedAppFragment extends CommonFragment
{

    private Button confirmButton;
    private boolean isCorrectData;
    private EditText passwordView;
    private EditText usernameView;

    public ProtectedAppFragment()
    {
    }

    private void confirm()
    {
        String s = usernameView.getText().toString();
        String s1 = passwordView.getText().toString();
        if (StringUtils.isNotEmpty(s) && StringUtils.isNotEmpty(s1))
        {
            Map map = AppHttpUtils.getEmptyParams();
            map.put("user", s);
            map.put("pass", s1);
            loadPostData(map);
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fill_required_fields_message));
            return;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("app_protect.php?app_code=%s", new Object[] {
            cacher().getAppCode()
        });
    }

    protected boolean hasTitleBar()
    {
        return false;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        usernameView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.username_edittext);
        passwordView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.password_edittext);
        confirmButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.confirm_button);
        confirmButton.setOnClickListener(new android.view.View.OnClickListener() {

            final ProtectedAppFragment this$0;

            public void onClick(View view)
            {
                confirm();
            }

            
            {
                this$0 = ProtectedAppFragment.this;
                super();
            }
        });
        usernameView.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final ProtectedAppFragment this$0;

            public void run()
            {
                confirmButton.performClick();
            }

            
            {
                this$0 = ProtectedAppFragment.this;
                super();
            }
        }));
        usernameView.setHint(com.biznessapps.layout.R.string.username);
        passwordView.setHint(com.biznessapps.layout.R.string.password);
        confirmButton.setText(com.biznessapps.layout.R.string.confirm);
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (StringUtils.isNotEmpty(appsettings.getProtectedHeaderColor()))
        {
            int i = ViewUtils.getColor(appsettings.getProtectedHeaderColor());
            usernameView.setTextColor(i);
            usernameView.setHintTextColor(i);
            passwordView.setTextColor(i);
            passwordView.setHintTextColor(i);
        }
        com.biznessapps.api.UiSettings uisettings = AppCore.getInstance().getAppUiSettings();
        if (StringUtils.isNotEmpty(appsettings.getSplashImage()))
        {
            AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadBgImage(appsettings.getSplashImage(), viewgroup, uisettings);
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.protected_layout, null);
        initSettingsData();
        initViews(root);
        return root;
    }

    protected boolean showMailingPropmt()
    {
        return false;
    }

    protected boolean tryParseData(String s)
    {
        boolean flag;
        if (!JsonParser.hasDataError(s))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        isCorrectData = flag;
        return true;
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (isCorrectData)
        {
            Intent intent = (new Intent()).setClass(activity.getApplicationContext(), com/biznessapps/layout/MainController);
            intent.putExtra("IS_LOGED_WITH_PROTECTION", true);
            intent.putExtra("APPCODE", AppCore.getInstance().getCachingManager().getAppCode());
            if (!activity.getIntent().getBooleanExtra("IS_LOGED_WITH_PROTECTION", false))
            {
                activity.startActivity(intent);
                activity.setIntent(intent);
                activity.finish();
            }
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.wrong_credentials));
            return;
        }
    }


}
