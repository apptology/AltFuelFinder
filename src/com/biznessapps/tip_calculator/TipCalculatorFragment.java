// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.tip_calculator;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.components.LocalizationDecimalEditText;
import com.biznessapps.common.entities.CommonEntity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.animation.RelResizeAnimation;
import com.biznessapps.widgets.animation.ResizeAnimation;

public class TipCalculatorFragment extends CommonFragment
{

    private static final float CONTAINER_HEIGHT_KOEF = 0.4F;
    private static final float DEFAULT_TIP_VALUE = 0F;
    private static final String NUMBER_FORMAT = "%.2f";
    private LocalizationDecimalEditText amountEditText;
    private TextView amountLabel;
    private Button calculateButton;
    private TextView eachPersonLabel;
    private TextView eachPersonText;
    private TextView numberOfPeopleLabel;
    private int originalHeight;
    private EditText peopleNumberEditText;
    private EditText percentEditText;
    private Button resetButton;
    private String tabId;
    private TextView tipAmountLabel;
    private TextView tipAmountText;
    private TextView tipEachPersonLabel;
    private TextView tipEachPersonText;
    private CommonEntity tipInfo;
    private ViewGroup tipLayout;
    private TextView tipPersentLabel;
    private TextView totalTipLabel;
    private TextView totalTipText;

    public TipCalculatorFragment()
    {
    }

    private void calculate()
    {
        String s;
        String s1;
        String s2;
        s = amountEditText.getText().toString();
        s1 = percentEditText.getText().toString();
        s2 = peopleNumberEditText.getText().toString();
        if (!StringUtils.isNotEmpty(s))
        {
            break MISSING_BLOCK_LABEL_414;
        }
        ViewUtils.closeKeyboard(getApplicationContext(), amountEditText);
        ViewUtils.closeKeyboard(getApplicationContext(), percentEditText);
        ViewUtils.closeKeyboard(getApplicationContext(), peopleNumberEditText);
        double d;
        double d1;
        int i;
        d = amountEditText.getDecimalValue();
        d1 = Double.parseDouble(s1);
        i = Integer.parseInt(s2);
        if (!checkFieldsCorrectness(d) || d1 > 100D || i > 10)
        {
            double d2;
            double d3;
            String s3;
            try
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.number_incorrect_format_message));
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.number_incorrect_format_message));
            }
            break MISSING_BLOCK_LABEL_414;
        }
        d1 = (d / 100D) * d1;
        d2 = d1 / (double)i;
        d3 = d / (double)i;
        s3 = CommonUtils.getCurrencySymbol();
        totalTipText.setText((new StringBuilder()).append(s3).append(String.format("%.2f", new Object[] {
            Double.valueOf(d1)
        })).toString());
        tipAmountText.setText((new StringBuilder()).append(s3).append(String.format("%.2f", new Object[] {
            Double.valueOf(d + d1)
        })).toString());
        eachPersonText.setText((new StringBuilder()).append(s3).append(String.format("%.2f", new Object[] {
            Double.valueOf(d3 + d2)
        })).toString());
        tipEachPersonText.setText((new StringBuilder()).append(s3).append(String.format("%.2f", new Object[] {
            Double.valueOf(d2)
        })).toString());
        percentEditText.setText((new StringBuilder()).append(s1).append("%").toString());
        amountEditText.setText((new StringBuilder()).append(s3).append(s).toString());
        defineControlsBehavior(false);
        hideBottomContainer();
        return;
    }

    private boolean checkFieldsCorrectness(double d)
    {
        while (d == 0.0D || d < 1.0D || d > 99999999D) 
        {
            return false;
        }
        return true;
    }

    private void defineControlsBehavior(boolean flag)
    {
        byte byte0 = 8;
        Button button = calculateButton;
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        button.setVisibility(i);
        button = resetButton;
        if (flag)
        {
            i = byte0;
        } else
        {
            i = 0;
        }
        button.setVisibility(i);
        amountEditText.setEnabled(flag);
        percentEditText.setEnabled(flag);
        peopleNumberEditText.setEnabled(flag);
    }

    private void hideBottomContainer()
    {
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top);
        framelayout.setBackgroundResource(com.biznessapps.layout.R.drawable.tip_container_bottom_bg);
        framelayout.getBackground().setAlpha(120);
        updateContainerColor(framelayout);
        originalHeight = getResources().getDisplayMetrics().heightPixels;
        ResizeAnimation resizeanimation = new ResizeAnimation(framelayout, (int)((float)originalHeight * 0.4F));
        resizeanimation.setDuration(300L);
        framelayout.startAnimation(resizeanimation);
        resizeanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TipCalculatorFragment this$0;

            public void onAnimationEnd(Animation animation)
            {
                animation = (ImageView)
// JavaClassFileOutputException: get_constant: invalid tag

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = TipCalculatorFragment.this;
                super();
            }
        });
    }

    private void initListeners()
    {
        calculateButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TipCalculatorFragment this$0;

            public void onClick(View view)
            {
                calculate();
            }

            
            {
                this$0 = TipCalculatorFragment.this;
                super();
            }
        });
        resetButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TipCalculatorFragment this$0;

            public void onClick(View view)
            {
                reset();
            }

            
            {
                this$0 = TipCalculatorFragment.this;
                super();
            }
        });
        amountEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final TipCalculatorFragment this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 5)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (i != 0)
                {
                    percentEditText.requestFocus();
                }
                return true;
            }

            
            {
                this$0 = TipCalculatorFragment.this;
                super();
            }
        });
        percentEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final TipCalculatorFragment this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 5)
                {
                    i = 1;
                } else
                {
                    i = 0;
                }
                if (i != 0)
                {
                    peopleNumberEditText.requestFocus();
                }
                return true;
            }

            
            {
                this$0 = TipCalculatorFragment.this;
                super();
            }
        });
        peopleNumberEditText.setOnEditorActionListener(ViewUtils.getOnEditorListener(calculateButton));
    }

    private void reset()
    {
        amountEditText.setText("");
        percentEditText.setText("");
        peopleNumberEditText.setText("");
        String s = CommonUtils.getCurrencySymbol();
        totalTipText.setText((new StringBuilder()).append(s).append(String.format("%.2f", new Object[] {
            Float.valueOf(0.0F)
        })).toString());
        tipAmountText.setText((new StringBuilder()).append(s).append(String.format("%.2f", new Object[] {
            Float.valueOf(0.0F)
        })).toString());
        eachPersonText.setText((new StringBuilder()).append(s).append(String.format("%.2f", new Object[] {
            Float.valueOf(0.0F)
        })).toString());
        tipEachPersonText.setText((new StringBuilder()).append(s).append(String.format("%.2f", new Object[] {
            Float.valueOf(0.0F)
        })).toString());
        defineControlsBehavior(true);
        show();
    }

    private void setLinesBgColor()
    {
        ImageView imageview = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image1);
        ImageView imageview1 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image2);
        ImageView imageview2 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image3);
        ImageView imageview3 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image4);
        ImageView imageview4 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image5);
        ImageView imageview5 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image6);
        ImageView imageview6 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image7);
        imageview.setBackgroundColor(settings.getFeatureTextColor());
        imageview1.setBackgroundColor(settings.getFeatureTextColor());
        imageview2.setBackgroundColor(settings.getFeatureTextColor());
        imageview3.setBackgroundColor(settings.getFeatureTextColor());
        imageview4.setBackgroundColor(settings.getFeatureTextColor());
        imageview5.setBackgroundColor(settings.getFeatureTextColor());
        imageview6.setBackgroundColor(settings.getFeatureTextColor());
    }

    private void show()
    {
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top);
        framelayout.setBackgroundResource(com.biznessapps.layout.R.drawable.tip_container_bg);
        framelayout.getBackground().setAlpha(120);
        updateContainerColor(framelayout);
        ((ImageView)root.findViewById(com.biznessapps.layout.R.id.tip_indicator)).setVisibility(8);
        ((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.top_data_container)).setVisibility(8);
        RelResizeAnimation relresizeanimation = new RelResizeAnimation(framelayout, 1.0F, ((FrameLayout)root.findViewById(com.biznessapps.layout.R.id.tip_layout_container)).getHeight());
        relresizeanimation.setDuration(300L);
        framelayout.startAnimation(relresizeanimation);
    }

    private void updateContainerColor(View view)
    {
        if (StringUtils.isNotEmpty(tipInfo.getImageUrl()))
        {
            ViewUtils.setGlobalBackgroundColor(view.getBackground(), settings);
        }
    }

    protected boolean canUseCachedData()
    {
        tipInfo = (CommonEntity)cacher().getData((new StringBuilder()).append("TIP_INFO_PROPERTY").append(tabId).toString());
        return tipInfo != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (tipInfo != null)
        {
            return tipInfo.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("tip.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return tipLayout;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        amountEditText = (LocalizationDecimalEditText)viewgroup.findViewById(com.biznessapps.layout.R.id.amount_text);
        amountEditText.setHint(CommonUtils.getCurrencySymbol());
        percentEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_percent_text);
        peopleNumberEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.people_text);
        amountLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.amount_label);
        numberOfPeopleLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.people_label);
        tipPersentLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_percent_label);
        totalTipLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.total_tip_label);
        tipAmountLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.total_amount_label);
        tipEachPersonLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_each_person_label);
        eachPersonLabel = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.each_person_label);
        totalTipText = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.total_tip_text);
        tipAmountText = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.total_amount_text);
        tipEachPersonText = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_each_person_text);
        eachPersonText = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.each_person_text);
        calculateButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.calculate_button);
        resetButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.reset_button);
        totalTipLabel.setText(com.biznessapps.layout.R.string.total_tip);
        tipAmountLabel.setText(com.biznessapps.layout.R.string.total_amount);
        tipEachPersonLabel.setText(com.biznessapps.layout.R.string.tip_pay_label);
        eachPersonLabel.setText(com.biznessapps.layout.R.string.tip_each_person_pay);
        amountLabel.setText(com.biznessapps.layout.R.string.amount_label);
        tipPersentLabel.setText(com.biznessapps.layout.R.string.tip_percent_label);
        numberOfPeopleLabel.setText(com.biznessapps.layout.R.string.people_label);
        calculateButton.setText(com.biznessapps.layout.R.string.calculate);
        resetButton.setText(com.biznessapps.layout.R.string.reset);
        tipLayout = (LinearLayout)viewgroup.findViewById(com.biznessapps.layout.R.id.tip_layout);
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), calculateButton.getBackground());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), resetButton.getBackground());
        amountLabel.setTextColor(settings.getFeatureTextColor());
        numberOfPeopleLabel.setTextColor(settings.getFeatureTextColor());
        tipPersentLabel.setTextColor(settings.getFeatureTextColor());
        totalTipLabel.setTextColor(settings.getFeatureTextColor());
        tipAmountLabel.setTextColor(settings.getFeatureTextColor());
        tipEachPersonLabel.setTextColor(settings.getFeatureTextColor());
        eachPersonLabel.setTextColor(settings.getFeatureTextColor());
        totalTipText.setTextColor(settings.getFeatureTextColor());
        tipAmountText.setTextColor(settings.getFeatureTextColor());
        tipEachPersonText.setTextColor(settings.getFeatureTextColor());
        eachPersonText.setTextColor(settings.getFeatureTextColor());
        calculateButton.setTextColor(settings.getButtonTextColor());
        resetButton.setTextColor(settings.getButtonTextColor());
        ViewUtils.setRootBgColor(tipLayout, settings);
        setLinesBgColor();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.tip_calculator_layout_new, null);
        initSettingsData();
        ViewUtils.setRootBgColor(root, settings);
        initViews(root);
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        ((FrameLayout)root.findViewById(com.biznessapps.layout.R.id.tip_layout_container)).getBackground().setAlpha(120);
        ((FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top)).getBackground().setAlpha(120);
        openCustomDialogs();
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        tipInfo = JsonParser.parseTip(s);
        return cacher().saveData((new StringBuilder()).append("TIP_INFO_PROPERTY").append(tabId).toString(), tipInfo);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        activity = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.tip_layout_container);
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top);
        updateContainerColor(activity);
        updateContainerColor(framelayout);
    }








}
