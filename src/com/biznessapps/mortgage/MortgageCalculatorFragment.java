// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mortgage;

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
import android.widget.TextView;
import android.widget.Toast;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.animation.RelResizeAnimation;
import com.biznessapps.widgets.animation.ResizeAnimation;

// Referenced classes of package com.biznessapps.mortgage:
//            MortgageEntity

public class MortgageCalculatorFragment extends CommonFragment
{

    private static final float CONTAINER_HEIGHT_KOEF = 0.52F;
    private static final String NUMBER_FORMAT = "%.2f";
    private EditText amountEditText;
    private Button calculateButton;
    private ViewGroup layout;
    private TextView monthRepaymentTextView;
    private MortgageEntity mortgageInfo;
    private EditText rateEditText;
    private Button resetButton;
    private String tabId;
    private EditText termEditText;

    public MortgageCalculatorFragment()
    {
    }

    private void calculate()
    {
        double d;
        double d1;
        double d2;
        Object obj;
        String s;
        obj = amountEditText.getText().toString();
        String s1 = termEditText.getText().toString();
        s = rateEditText.getText().toString();
        if (StringUtils.checkTextFieldsOnEmpty(new String[] {
    obj, s1, s
}))
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fill_required_fields_message));
            return;
        }
        try
        {
            d = Double.parseDouble(((String) (obj)));
            d1 = Double.parseDouble(s1);
            d2 = Double.parseDouble(s);
            if (!checkOnCorrectness(d, d1, d2))
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.number_incorrect_format_message));
                return;
            }
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            Toast.makeText(getApplicationContext(), com.biznessapps.layout.R.string.number_incorrect_format_message, 1).show();
            return;
        }
        ViewUtils.closeKeyboard(getApplicationContext(), amountEditText);
        ViewUtils.closeKeyboard(getApplicationContext(), termEditText);
        ViewUtils.closeKeyboard(getApplicationContext(), rateEditText);
        d2 /= 1200D;
        d1 = d2 / (Math.pow(1.0D + d2, 12D * d1) - 1.0D);
        String s2 = CommonUtils.getCurrencySymbol();
        monthRepaymentTextView.setText((new StringBuilder()).append(s2).append(String.format("%.2f", new Object[] {
            Double.valueOf((d1 + d2) * d)
        })).toString());
        amountEditText.setText((new StringBuilder()).append(s2).append(((String) (obj))).toString());
        rateEditText.setText((new StringBuilder()).append(s).append("%").toString());
        defineControlsBehavior(false);
        hideBottomContainer();
        return;
    }

    private boolean checkOnCorrectness(double d, double d1, double d2)
    {
        while (d == 0.0D || d2 == 0.0D || d1 == 0.0D || d < 1.0D || d > 99999999D || d2 < 0.001D || d2 > 1000D || d1 < 1.0D || d1 > 50D) 
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
        termEditText.setEnabled(flag);
        if (mortgageInfo.isReadOnly())
        {
            rateEditText.setEnabled(false);
            return;
        } else
        {
            rateEditText.setEnabled(flag);
            return;
        }
    }

    private void hideBottomContainer()
    {
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top);
        framelayout.setBackgroundResource(com.biznessapps.layout.R.drawable.tip_container_bottom_bg);
        framelayout.getBackground().setAlpha(120);
        updateContainerColor(framelayout);
        final int originalHeight = getResources().getDisplayMetrics().heightPixels;
        ResizeAnimation resizeanimation = new ResizeAnimation(framelayout, (int)((float)originalHeight * 0.52F));
        resizeanimation.setDuration(300L);
        framelayout.startAnimation(resizeanimation);
        resizeanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final MortgageCalculatorFragment this$0;
            final int val$originalHeight;

            public void onAnimationEnd(Animation animation)
            {
                animation = (ImageView)setMargins.findViewById(com.biznessapps.layout.R.id.tip_indicator);
                animation.getBackground().setAlpha(120);
                animation.setVisibility(0);
                updateContainerColor(animation);
                ((android.widget.FrameLayout.LayoutParams)animation.getLayoutParams()).setMargins(0, 0, 0, (int)((float)originalHeight * 0.52F));
                ((ViewGroup)setMargins.findViewById(com.biznessapps.layout.R.id.top_data_container)).setVisibility(0);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = MortgageCalculatorFragment.this;
                originalHeight = i;
                super();
            }
        });
    }

    private void initListeners()
    {
        calculateButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MortgageCalculatorFragment this$0;

            public void onClick(View view)
            {
                calculate();
            }

            
            {
                this$0 = MortgageCalculatorFragment.this;
                super();
            }
        });
        resetButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MortgageCalculatorFragment this$0;

            public void onClick(View view)
            {
                reset();
            }

            
            {
                this$0 = MortgageCalculatorFragment.this;
                super();
            }
        });
        rateEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final MortgageCalculatorFragment this$0;

            public void run()
            {
                calculateButton.performClick();
            }

            
            {
                this$0 = MortgageCalculatorFragment.this;
                super();
            }
        }));
    }

    private void initViews()
    {
        amountEditText = (EditText)root.findViewById(com.biznessapps.layout.R.id.amount_text);
        amountEditText.setHint(CommonUtils.getCurrencySymbol());
        termEditText = (EditText)root.findViewById(com.biznessapps.layout.R.id.term_text);
        rateEditText = (EditText)root.findViewById(com.biznessapps.layout.R.id.rate_text);
        monthRepaymentTextView = (TextView)root.findViewById(com.biznessapps.layout.R.id.each_month_text);
        TextView textview = (TextView)root.findViewById(com.biznessapps.layout.R.id.amount_label);
        TextView textview1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.term_label);
        TextView textview2 = (TextView)root.findViewById(com.biznessapps.layout.R.id.rate_label);
        TextView textview3 = (TextView)root.findViewById(com.biznessapps.layout.R.id.each_month_label);
        TextView textview4 = (TextView)root.findViewById(com.biznessapps.layout.R.id.disclaimer_label);
        calculateButton = (Button)root.findViewById(com.biznessapps.layout.R.id.calculate_button);
        resetButton = (Button)root.findViewById(com.biznessapps.layout.R.id.reset_button);
        calculateButton.setText(com.biznessapps.layout.R.string.calculate);
        resetButton.setText(com.biznessapps.layout.R.string.reset);
        textview3.setText(com.biznessapps.layout.R.string.each_month_payment);
        textview.setText(com.biznessapps.layout.R.string.loan_amount);
        textview1.setText(com.biznessapps.layout.R.string.loan_term);
        termEditText.setHint((new StringBuilder()).append("< 50 ").append(getString(com.biznessapps.layout.R.string.loan_term_input_hint)).toString());
        textview2.setText(com.biznessapps.layout.R.string.interest_rate);
        textview4.setText(com.biznessapps.layout.R.string.disclaimer_label);
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), calculateButton.getBackground());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), resetButton.getBackground());
        calculateButton.setTextColor(settings.getButtonTextColor());
        resetButton.setTextColor(settings.getButtonTextColor());
        textview.setTextColor(settings.getFeatureTextColor());
        textview1.setTextColor(settings.getFeatureTextColor());
        textview2.setTextColor(settings.getFeatureTextColor());
        textview3.setTextColor(settings.getFeatureTextColor());
        monthRepaymentTextView.setTextColor(settings.getFeatureTextColor());
        textview4.setTextColor(settings.getFeatureTextColor());
        ViewUtils.setRootBgColor(layout, settings);
        amountEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final MortgageCalculatorFragment this$0;

            public boolean onEditorAction(TextView textview5, int i, KeyEvent keyevent)
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
                    if (!StringUtils.isNotEmpty(amountEditText.getText().toString()));
                    termEditText.requestFocus();
                }
                return true;
            }

            
            {
                this$0 = MortgageCalculatorFragment.this;
                super();
            }
        });
        termEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final MortgageCalculatorFragment this$0;

            public boolean onEditorAction(TextView textview5, int i, KeyEvent keyevent)
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
                    rateEditText.requestFocus();
                }
                return true;
            }

            
            {
                this$0 = MortgageCalculatorFragment.this;
                super();
            }
        });
        rateEditText.setOnEditorActionListener(ViewUtils.getOnEditorListener(calculateButton));
        setLinesBgColor();
    }

    private void reset()
    {
        amountEditText.setText("");
        termEditText.setText("");
        if (StringUtils.isNotEmpty(mortgageInfo.getInterest()))
        {
            rateEditText.setText(mortgageInfo.getInterest());
        } else
        {
            rateEditText.setText("");
        }
        monthRepaymentTextView.setText("");
        defineControlsBehavior(true);
        show();
    }

    private void setLinesBgColor()
    {
        ImageView imageview = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image1);
        ImageView imageview1 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image2);
        ImageView imageview2 = (ImageView)root.findViewById(com.biznessapps.layout.R.id.line_image3);
        imageview.setBackgroundColor(settings.getFeatureTextColor());
        imageview1.setBackgroundColor(settings.getFeatureTextColor());
        imageview2.setBackgroundColor(settings.getFeatureTextColor());
    }

    private void show()
    {
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top);
        framelayout.setBackgroundResource(com.biznessapps.layout.R.drawable.tip_container_bg);
        framelayout.getBackground().setAlpha(120);
        updateContainerColor(framelayout);
        ((ImageView)root.findViewById(com.biznessapps.layout.R.id.tip_indicator)).setVisibility(8);
        ((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.top_data_container)).setVisibility(8);
        RelResizeAnimation relresizeanimation = new RelResizeAnimation(framelayout, 1.0F, ((FrameLayout)root.findViewById(com.biznessapps.layout.R.id.mortgage_layout_container)).getHeight());
        relresizeanimation.setDuration(300L);
        framelayout.startAnimation(relresizeanimation);
    }

    private void updateContainerColor(View view)
    {
        if (StringUtils.isNotEmpty(mortgageInfo.getImageUrl()))
        {
            ViewUtils.setGlobalBackgroundColor(view.getBackground(), settings);
        }
    }

    protected boolean canUseCachedData()
    {
        mortgageInfo = (MortgageEntity)cacher().getData((new StringBuilder()).append("MORTGAGE_INFO_PROPERTY").append(tabId).toString());
        return mortgageInfo != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (mortgageInfo != null)
        {
            return mortgageInfo.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("loan.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return layout;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.mortgage_calculator_layout_new, null);
        initSettingsData();
        layout = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.mortgage_layout);
        initViews();
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        ((FrameLayout)root.findViewById(com.biznessapps.layout.R.id.mortgage_layout_container)).getBackground().setAlpha(120);
        ((FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top)).getBackground().setAlpha(120);
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        mortgageInfo = JsonParser.parseMortgage(s);
        return cacher().saveData((new StringBuilder()).append("MORTGAGE_INFO_PROPERTY").append(tabId).toString(), mortgageInfo);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        activity = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.mortgage_layout_container);
        FrameLayout framelayout = (FrameLayout)root.findViewById(com.biznessapps.layout.R.id.top);
        updateContainerColor(activity);
        updateContainerColor(framelayout);
        if (StringUtils.isNotEmpty(mortgageInfo.getInterest()))
        {
            rateEditText.setText(mortgageInfo.getInterest());
        }
        activity = rateEditText;
        boolean flag;
        if (!mortgageInfo.isReadOnly())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        activity.setEnabled(flag);
    }









}
