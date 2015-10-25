// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.flexible_counter;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.flexible_counter:
//            StatFieldsEntity

public class FlexibleCounterFragment extends CommonFragment
{

    private static final String LINE_END = "\n";
    private static final String STATS_SPACE = "        ";
    private ImageButton clearButton;
    private StatFieldsEntity data;
    private Button emailButton;
    private ViewGroup fieldsContainer;
    private List fieldsCounters;
    private ViewGroup layout;
    private String tabId;

    public FlexibleCounterFragment()
    {
    }

    private List convertStringToArrayList(String s)
    {
        Object obj = Arrays.asList(s.replaceAll("\\[", "").replaceAll("\\]", "").split(","));
        s = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            String s1 = (String)((Iterator) (obj)).next();
            if (StringUtils.isNotEmpty(s1))
            {
                s.add(Integer.valueOf(Integer.parseInt(s1.trim())));
            }
        } while (true);
        return s;
    }

    private void initFieldsCounters(Activity activity)
    {
        Object obj = data.getFields();
        if (obj != null && !((List) (obj)).isEmpty())
        {
            fieldsContainer.removeAllViews();
            final int currentPos = 0;
            obj = ((List) (obj)).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                String s = (String)((Iterator) (obj)).next();
                if (fieldsCounters.size() == currentPos)
                {
                    fieldsCounters.add(Integer.valueOf(0));
                }
                ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.flexible_counter_item);
                TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.counter_text_name);
                textview.setText(s);
                final TextView counterView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.counter_text);
                counterView.setText((new StringBuilder()).append("").append(fieldsCounters.get(currentPos)).toString());
                Button button = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.counter_decrease_button);
                textview.setText(s);
                Button button1 = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.counter_increase_button);
                textview.setText(s);
                button1.setOnClickListener(new android.view.View.OnClickListener() {

                    final FlexibleCounterFragment this$0;
                    final TextView val$counterView;
                    final int val$currentPos;

                    public void onClick(View view)
                    {
                        int i = ((Integer)fieldsCounters.get(currentPos)).intValue();
                        fieldsCounters.set(currentPos, Integer.valueOf(i + 1));
                        counterView.setText((new StringBuilder()).append("").append(fieldsCounters.get(currentPos)).toString());
                    }

            
            {
                this$0 = FlexibleCounterFragment.this;
                currentPos = i;
                counterView = textview;
                super();
            }
                });
                button.setOnClickListener(new android.view.View.OnClickListener() {

                    final FlexibleCounterFragment this$0;
                    final TextView val$counterView;
                    final int val$currentPos;

                    public void onClick(View view)
                    {
                        int i = ((Integer)fieldsCounters.get(currentPos)).intValue();
                        fieldsCounters.set(currentPos, Integer.valueOf(i - 1));
                        counterView.setText((new StringBuilder()).append("").append(fieldsCounters.get(currentPos)).toString());
                    }

            
            {
                this$0 = FlexibleCounterFragment.this;
                currentPos = i;
                counterView = textview;
                super();
            }
                });
                button.setTextColor(settings.getButtonTextColor());
                button1.setTextColor(settings.getButtonTextColor());
                button.setBackgroundColor(settings.getButtonBgColor());
                button1.setBackgroundColor(settings.getButtonBgColor());
                textview.setTextColor(settings.getFeatureTextColor());
                counterView.setTextColor(settings.getFeatureTextColor());
                fieldsContainer.addView(viewgroup);
                currentPos++;
            }
        }
    }

    private void initListeners()
    {
        emailButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FlexibleCounterFragment this$0;

            public void onClick(View view)
            {
                Object obj = new StringBuilder();
                if (data.getMessage() == null)
                {
                    view = " ";
                } else
                {
                    view = data.getMessage();
                }
                ((StringBuilder) (obj)).append(view).append("\n").append("\n");
                view = data.getFields();
                if (view != null && view.size() > 0)
                {
                    for (int i = 0; i < view.size(); i++)
                    {
                        ((StringBuilder) (obj)).append((String)view.get(i)).append("        ").append(fieldsCounters.get(i)).append("\n");
                    }

                }
                ((StringBuilder) (obj)).append("\n");
                view = getHoldActivity();
                String s = data.getEmail();
                obj = ((StringBuilder) (obj)).toString();
                ViewUtils.email(view, new String[] {
                    s
                }, ((String) (obj)));
            }

            
            {
                this$0 = FlexibleCounterFragment.this;
                super();
            }
        });
        clearButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FlexibleCounterFragment this$0;

            public void onClick(View view)
            {
                view = new android.app.AlertDialog.Builder(getHoldActivity());
                view.setMessage(com.biznessapps.layout.R.string.sport_stats_clear_text).setNegativeButton(com.biznessapps.layout.R.string.no, new android.content.DialogInterface.OnClickListener() {

                    final _cls2 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.cancel();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                }).setPositiveButton(com.biznessapps.layout.R.string.ok, new android.content.DialogInterface.OnClickListener() {

                    final _cls2 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.cancel();
                        if (fieldsCounters != null && !fieldsCounters.isEmpty())
                        {
                            for (i = 0; i < fieldsCounters.size(); i++)
                            {
                                fieldsCounters.set(i, Integer.valueOf(0));
                            }

                        }
                        initFieldsCounters(getActivity());
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
                view.create().show();
            }

            
            {
                this$0 = FlexibleCounterFragment.this;
                super();
            }
        });
    }

    private void initViews()
    {
        fieldsContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.stat_fields_container);
        emailButton = (Button)root.findViewById(com.biznessapps.layout.R.id.email_counter);
        clearButton = (ImageButton)root.findViewById(com.biznessapps.layout.R.id.clear_icon);
        emailButton.setTextColor(settings.getButtonTextColor());
        emailButton.setText(com.biznessapps.layout.R.string.email_results);
        CommonUtils.overrideMediumButtonColor(settings.getButtonBgColor(), emailButton.getBackground());
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), clearButton.getBackground());
        ViewUtils.setRootBgColor(layout, settings);
    }

    protected boolean canUseCachedData()
    {
        data = (StatFieldsEntity)cacher().getData((new StringBuilder()).append("FLEXIBLE_COUNTER_PROPERTY").append(tabId).toString());
        String s = cacher().getFromSharedPreferences(getApplicationContext(), (new StringBuilder()).append("flexible_counter_key").append(tabId).toString());
        if (s != null)
        {
            fieldsCounters = convertStringToArrayList(s);
        } else
        {
            fieldsCounters = new ArrayList();
        }
        return data != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (data != null)
        {
            return data.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("stat_fields.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return layout;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.flexible_counter_layout, null);
        initSettingsData();
        layout = (LinearLayout)root.findViewById(com.biznessapps.layout.R.id.counter_root_layout);
        initViews();
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    public void onPause()
    {
        super.onPause();
        cacher().saveInSharedPreferences(getApplicationContext(), fieldsCounters.toString(), (new StringBuilder()).append("flexible_counter_key").append(tabId).toString());
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = getIntent().getExtras().getString("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        data = JsonParser.parseStatFields(s);
        return cacher().saveData((new StringBuilder()).append("FLEXIBLE_COUNTER_PROPERTY").append(tabId).toString(), data);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        initFieldsCounters(activity);
    }



}
