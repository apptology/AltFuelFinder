// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fragments.single;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ParseStateEntity;
import com.biznessapps.api.UrlWrapper;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.layout.MainController;
import com.biznessapps.localization.StringsSource;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.lang.ref.WeakReference;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class PreviewAppFragment extends CommonFragment
{

    private String appCode;
    private Button clearTextButton;
    private EditText demoCodeView;
    private android.view.ViewTreeObserver.OnGlobalLayoutListener keyboardLayoutListener;
    private Button loadDemoButton;
    private com.biznessapps.localization.StringsSource.LocalizationListener localizationListener;
    private EditText passwordEditView;
    private Button productionButton;
    private String resellerId;
    private Button sandboxButton;
    private Button stagingButton;

    public PreviewAppFragment()
    {
        localizationListener = new com.biznessapps.localization.StringsSource.LocalizationListener() ;
        keyboardLayoutListener = new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final PreviewAppFragment this$0;

            public void onGlobalLayout()
            {
                if (
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        };
    }

    private void checkData(String s, String s1)
    {
        Map map = AppHttpUtils.getEmptyParams();
        map.put("user", s);
        map.put("password", s1);
        loadPostData(map);
    }

    private void clearText()
    {
        demoCodeView.setText("");
        passwordEditView.setText("");
    }

    private void loadAppCode(String s)
    {
        Intent intent = (new Intent()).setClass(getApplicationContext(), com/biznessapps/layout/MainController);
        intent.putExtra("APPCODE", URLEncoder.encode(s));
        intent.putExtra("OPEN_MESSAGE_TAB_PROPERTY", getIntent().getBooleanExtra("OPEN_MESSAGE_TAB_PROPERTY", false));
        startActivity(intent);
        getActivity().finish();
    }

    private void loadDemo()
    {
        String s = demoCodeView.getText().toString();
        String s1 = passwordEditView.getText().toString();
        if (s == null || s.trim().length() == 0)
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fill_app_code));
            return;
        }
        if (StringUtils.isNotEmpty(s1))
        {
            checkData(s, s1);
            return;
        } else
        {
            loadAppCode(s);
            return;
        }
    }

    private void setRootBg(boolean flag)
    {
        if (flag)
        {
            root.setBackgroundColor(getResources().getColor(com.biznessapps.layout.R.color.biz_apps_color));
            return;
        } else
        {
            root.setBackgroundResource(com.biznessapps.layout.R.drawable.splash_bg);
            ((LinearLayout)root.findViewById(com.biznessapps.layout.R.id.preview_container)).setGravity(80);
            return;
        }
    }

    private void updateButtonsState(Button button)
    {
        sandboxButton.setSelected(false);
        stagingButton.setSelected(false);
        productionButton.setSelected(false);
        button.setSelected(true);
    }

    protected String getRequestUrl()
    {
        return "checkapp.php";
    }

    public View getViewForBg()
    {
        return null;
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(demoCodeView));
        arraylist.add(new WeakReference(passwordEditView));
        arraylist.add(new WeakReference(loadDemoButton));
        arraylist.add(new WeakReference(clearTextButton));
        return arraylist;
    }

    protected void handleNoDataEvent(Activity activity)
    {
        ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.wrong_email_or_password));
    }

    protected boolean hasTitleBar()
    {
        return false;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        demoCodeView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.demo_code_edittext);
        passwordEditView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.password_edittext);
        loadDemoButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.load_demo_button);
        clearTextButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.reset_demo_button);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.demo_title_textview)).setText(com.biznessapps.layout.R.string.demo_title);
        loadDemoButton.setText(com.biznessapps.layout.R.string.load_demo);
        clearTextButton.setText(com.biznessapps.layout.R.string.reset);
        passwordEditView.setHint(com.biznessapps.layout.R.string.password);
        String s = StringsSource.getInstance().getCurrentLanguage();
        if (s != null && (s.equals("he") || s.equals("iw") || s.equals("ar")))
        {
            passwordEditView.setGravity(5);
        }
        demoCodeView.setHint(com.biznessapps.layout.R.string.email);
        sandboxButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.sandbox_button);
        stagingButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.staging_button);
        productionButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.production_button);
        loadDemoButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PreviewAppFragment this$0;

            public void onClick(View view)
            {
                loadDemo();
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        });
        clearTextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PreviewAppFragment this$0;

            public void onClick(View view)
            {
                clearText();
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        });
        demoCodeView.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final PreviewAppFragment this$0;

            public void run()
            {
                passwordEditView.performClick();
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        }));
        passwordEditView.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final PreviewAppFragment this$0;

            public void run()
            {
                loadDemoButton.performClick();
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        }));
        sandboxButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PreviewAppFragment this$0;

            public void onClick(View view)
            {
                UrlWrapper.getInstance().useSandbox();
                updateButtonsState(sandboxButton);
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        });
        stagingButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PreviewAppFragment this$0;

            public void onClick(View view)
            {
                UrlWrapper.getInstance().useStaging();
                updateButtonsState(stagingButton);
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        });
        productionButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PreviewAppFragment this$0;

            public void onClick(View view)
            {
                UrlWrapper.getInstance().clearState();
                updateButtonsState(productionButton);
            }

            
            {
                this$0 = PreviewAppFragment.this;
                super();
            }
        });
        viewgroup = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.app_version_textview);
        try
        {
            Context context = getApplicationContext();
            viewgroup.setText(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            viewgroup.printStackTrace();
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.preview_changer_layout, null);
        getActivity().getWindow().setSoftInputMode(19);
        if ("com.biznessapps.layout".equalsIgnoreCase(getApplicationContext().getPackageName()))
        {
            root.getViewTreeObserver().addOnGlobalLayoutListener(keyboardLayoutListener);
            setRootBg(false);
        }
        initSettingsData();
        initViews(root);
        productionButton.performClick();
        StringsSource.getInstance().addListener(localizationListener);
        return root;
    }

    protected boolean tryParseData(String s, ParseStateEntity parsestateentity)
    {
        if (StringUtils.isNotEmpty(s))
        {
            int i = s.indexOf("_");
            if (s.contains("reseller") && i > 0 && i + 1 < s.length())
            {
                resellerId = s.substring(i + 1);
                resellerId = resellerId.replace("\n", "");
            } else
            {
                appCode = s;
            }
            parsestateentity.setCorrectState(true);
        }
        return parsestateentity.isCorrectState();
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (StringUtils.isNotEmpty(resellerId))
        {
            cacher().saveInSharedPreferences(getApplicationContext(), resellerId, "RESELLER_ID_KEY");
            loadAppCode(demoCodeView.getText().toString());
        } else
        if (StringUtils.isNotEmpty(appCode))
        {
            loadAppCode(appCode);
            return;
        }
    }













}
