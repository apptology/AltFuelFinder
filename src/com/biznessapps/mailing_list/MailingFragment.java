// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.mailing_list;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.api.UnModalAsyncTask;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.components.WheelDelegate;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.mailing_list:
//            MailingListEntity

public class MailingFragment extends CommonFragment
{
    public static class CategoriesAdapter extends AbstractAdapter
    {

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            final MailingListEntity.Category item = (MailingListEntity.Category)getItem(i);
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new ViewHolder();
                viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.simple_text_view);
                viewgroup.turnButton = (ImageView)view.findViewById(com.biznessapps.layout.R.id.turn_function_button);
                viewgroup.circleView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.turn_circle_view);
                ImageView imageview = ((ViewHolder) (viewgroup)).turnButton;
                final ImageView circleView = ((ViewHolder) (viewgroup)).circleView;
                imageview.setOnClickListener(imageview. new android.view.View.OnClickListener() {

                    final CategoriesAdapter this$0;
                    final ImageView val$circleView;
                    final MailingListEntity.Category val$item;
                    final ImageView val$turnButton;

                    public void onClick(View view)
                    {
                        view = item;
                        boolean flag;
                        if (!item.isSelected())
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        view.setSelected(flag);
                        ViewUtils.updateTurnOnOffViewState(item.isSelected(), circleView, turnButton, CategoriesAdapter.this.<init>);
                    }

            
            {
                this$0 = final_categoriesadapter;
                item = category;
                circleView = imageview;
                turnButton = ImageView.this;
                super();
            }
                });
                ViewUtils.updateTurnOnOffViewState(item.isSelected(), circleView, imageview, settings);
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (ViewHolder)view.getTag();
            }
            if (item != null)
            {
                ((ViewHolder) (viewgroup)).nameView.setText(Html.fromHtml(item.getName()));
                view.setBackgroundColor(item.getItemColor());
                ((ViewHolder) (viewgroup)).nameView.setTextColor(item.getItemTextColor());
            }
            return view;
        }


        public CategoriesAdapter(Context context, List list, UiSettings uisettings)
        {
            super(context, list, com.biznessapps.layout.R.layout.mailing_list_item_layout, uisettings);
        }
    }

    private static class CategoriesAdapter.ViewHolder
    {

        ImageView circleView;
        TextView nameView;
        ImageView turnButton;

        private CategoriesAdapter.ViewHolder()
        {
        }

    }


    private List categories;
    private RefreshableListView categoriesListView;
    private WheelDelegate countriesDelegate;
    private WheelDelegate dateDelegate;
    private Button joinButton;
    private ImageView logoIcon;
    private MailingListEntity mailingListInfo;
    private String tabId;
    private TextView userBirthdayText;
    private EditText userCommentsText;
    private TextView userCountryText;
    private TextView userDescription;
    private EditText userEmailText;
    private EditText userNameText;
    private EditText userZipText;

    public MailingFragment()
    {
    }

    private void calculate()
    {
        String s = userNameText.getText().toString();
        String s1 = userEmailText.getText().toString();
        String s2 = userBirthdayText.getText().toString();
        String s3 = userZipText.getText().toString();
        String s4 = userCountryText.getText().toString();
        String s5 = userCommentsText.getText().toString();
        if (StringUtils.isNotEmpty(s) && StringUtils.isNotEmpty(s1))
        {
            if (StringUtils.isCorrectEmail(s1))
            {
                String s6 = getIntent().getStringExtra("TAB_SPECIAL_ID");
                ArrayList arraylist = new ArrayList();
                arraylist.add(new WeakReference(joinButton));
                (new UnModalAsyncTask(s4, s5) {

                    final MailingFragment this$0;
                    final String val$tabParam;
                    final String val$userBirthday;
                    final String val$userComments;
                    final String val$userCountry;
                    final String val$userEmail;
                    final String val$userName;
                    final String val$userZip;

                    protected transient Boolean doInBackground(Void avoid[])
                    {
                        boolean flag;
                        if (!JsonParser.hasDataError(AppHttpUtils.addToMailingList(userName, userEmail, cacher().getAppCode(), tabParam, getSelectedCategories(categories), userBirthday, userZip, userCountry, userComments)))
                        {
                            flag = true;
                        } else
                        {
                            flag = false;
                        }
                        return Boolean.valueOf(flag);
                    }

                    protected volatile Object doInBackground(Object aobj[])
                    {
                        return doInBackground((Void[])aobj);
                    }

                    protected void onPostExecute(Boolean boolean1)
                    {
                        super.onPostExecute(boolean1);
                        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
                        if (commonfragmentactivity != null)
                        {
                            ((CommonFragmentActivity)commonfragmentactivity).getProgressBarContainer().removeAllViews();
                            int i;
                            if (boolean1.booleanValue())
                            {
                                i = com.biznessapps.layout.R.string.mailing_list_add_success;
                            } else
                            {
                                i = com.biznessapps.layout.R.string.error_occured;
                            }
                            ViewUtils.showCustomToast(getApplicationContext(), getString(i));
                            if (boolean1.booleanValue())
                            {
                                commonfragmentactivity.finish();
                            }
                        }
                    }

                    protected volatile void onPostExecute(Object obj)
                    {
                        onPostExecute((Boolean)obj);
                    }

                    protected void placeProgressBar()
                    {
                        ((CommonFragmentActivity)activity).getProgressBarContainer().addView(progressBar);
                    }

            
            {
                this$0 = MailingFragment.this;
                userName = s;
                userEmail = s1;
                tabParam = s2;
                userBirthday = s3;
                userZip = s4;
                userCountry = s5;
                userComments = s6;
                super(final_activity, final_list);
            }
                }).execute(new Void[0]);
                return;
            } else
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.email_is_not_correct));
                return;
            }
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fill_required_fields_message));
            return;
        }
    }

    private List getListOfCountries()
    {
        Locale alocale[] = Locale.getAvailableLocales();
        ArrayList arraylist = new ArrayList();
        int j = alocale.length;
        for (int i = 0; i < j; i++)
        {
            String s = alocale[i].getDisplayCountry();
            if (s.trim().length() > 0 && !arraylist.contains(s))
            {
                arraylist.add(s);
            }
        }

        Collections.sort(arraylist);
        return arraylist;
    }

    private String getSelectedCategories(List list)
    {
        Object obj = null;
        Object obj1 = null;
        if (list != null)
        {
            Iterator iterator = list.iterator();
            list = obj1;
            do
            {
                obj = list;
                if (!iterator.hasNext())
                {
                    break;
                }
                obj = (MailingListEntity.Category)iterator.next();
                if (((MailingListEntity.Category) (obj)).isSelected())
                {
                    list = (new StringBuilder()).append(list).append(((MailingListEntity.Category) (obj)).getId()).append(",").toString();
                }
            } while (true);
        }
        return ((String) (obj));
    }

    private void initListeners()
    {
        joinButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MailingFragment this$0;

            public void onClick(View view)
            {
                calculate();
            }

            
            {
                this$0 = MailingFragment.this;
                super();
            }
        });
        userBirthdayText.setOnClickListener(new android.view.View.OnClickListener() {

            final MailingFragment this$0;

            public void onClick(View view)
            {
                dateDelegate.show();
            }

            
            {
                this$0 = MailingFragment.this;
                super();
            }
        });
        userCountryText.setOnClickListener(new android.view.View.OnClickListener() {

            final MailingFragment this$0;

            public void onClick(View view)
            {
                countriesDelegate.show();
            }

            
            {
                this$0 = MailingFragment.this;
                super();
            }
        });
    }

    private void initViews()
    {
        userNameText = (EditText)root.findViewById(com.biznessapps.layout.R.id.user_name_text);
        userEmailText = (EditText)root.findViewById(com.biznessapps.layout.R.id.user_email_text);
        userBirthdayText = (TextView)root.findViewById(com.biznessapps.layout.R.id.user_birthday_text);
        userZipText = (EditText)root.findViewById(com.biznessapps.layout.R.id.user_zip_text);
        userCountryText = (TextView)root.findViewById(com.biznessapps.layout.R.id.user_country_text);
        userCommentsText = (EditText)root.findViewById(com.biznessapps.layout.R.id.user_comments_text);
        userDescription = (TextView)root.findViewById(com.biznessapps.layout.R.id.mailing_list_description);
        joinButton = (Button)root.findViewById(com.biznessapps.layout.R.id.join_button);
        userNameText.setHint(com.biznessapps.layout.R.string.mailing_list_user_name_hint);
        userEmailText.setHint(com.biznessapps.layout.R.string.mailing_list_user_email_hint);
        userBirthdayText.setHint(com.biznessapps.layout.R.string.mailing_list_user_birthday_hint);
        userZipText.setHint(com.biznessapps.layout.R.string.zip);
        userCountryText.setHint(com.biznessapps.layout.R.string.mailing_list_user_country_hint);
        userCommentsText.setHint(com.biznessapps.layout.R.string.comments);
        joinButton.setText(com.biznessapps.layout.R.string.join);
        Object obj = (ImageView)root.findViewById(com.biznessapps.layout.R.id.mailing_list_icon_border);
        logoIcon = (ImageView)root.findViewById(com.biznessapps.layout.R.id.mailing_list_logo_icon);
        Object obj1 = (TextView)root.findViewById(com.biznessapps.layout.R.id.mailing_list_description);
        categoriesListView = (RefreshableListView)root.findViewById(com.biznessapps.layout.R.id.list_view);
        joinButton.setTextColor(settings.getButtonTextColor());
        ((TextView) (obj1)).setTextColor(settings.getFeatureTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), joinButton.getBackground());
        CommonUtils.overrideImageColor(settings.getFeatureTextColor(), ((ImageView) (obj)).getBackground());
        obj = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.top_container);
        obj1 = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.user_name_container);
        ViewGroup viewgroup = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.email_container);
        ViewGroup viewgroup1 = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.birthday_container);
        ViewGroup viewgroup2 = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.zip_container);
        ViewGroup viewgroup3 = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.country_container);
        ViewGroup viewgroup4 = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.comments_container);
        ViewUtils.setRootBgColor(root, settings);
        ViewUtils.setGlobalBgColor(((View) (obj)), settings);
        userNameText.getBackground().setAlpha(50);
        userEmailText.getBackground().setAlpha(50);
        userBirthdayText.getBackground().setAlpha(50);
        userZipText.getBackground().setAlpha(50);
        userCountryText.getBackground().setAlpha(50);
        userCommentsText.getBackground().setAlpha(50);
        ((ViewGroup) (obj)).getBackground().setAlpha(120);
        ((ViewGroup) (obj1)).setBackgroundColor(settings.getOddRowColorTransparent());
        viewgroup.setBackgroundColor(settings.getEvenRowColorTransparent());
        viewgroup1.setBackgroundColor(settings.getOddRowColorTransparent());
        viewgroup2.setBackgroundColor(settings.getEvenRowColorTransparent());
        viewgroup3.setBackgroundColor(settings.getOddRowColorTransparent());
        viewgroup4.setBackgroundColor(settings.getEvenRowColorTransparent());
        obj = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.wheel_container);
        dateDelegate = new WheelDelegate();
        dateDelegate.init(((ViewGroup) (obj)), getApplicationContext(), null, true, userBirthdayText);
        obj = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.wheel_container2);
        countriesDelegate = new WheelDelegate();
        countriesDelegate.init(((ViewGroup) (obj)), getApplicationContext(), getListOfCountries(), false, userCountryText);
    }

    protected boolean canUseCachedData()
    {
        mailingListInfo = (MailingListEntity)cacher().getData((new StringBuilder()).append("MAILING_INFO_PROPERTY").append(tabId).toString());
        return mailingListInfo != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (mailingListInfo != null)
        {
            return mailingListInfo.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("mailing_list.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.mailing_list_layout, null);
        initSettingsData();
        initViews();
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        mailingListInfo = JsonParser.parseMailingList(s);
        return cacher().saveData((new StringBuilder()).append("MAILING_INFO_PROPERTY").append(tabId).toString(), mailingListInfo);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (mailingListInfo != null)
        {
            if (StringUtils.isNotEmpty(mailingListInfo.getDescription()))
            {
                userDescription.setText(mailingListInfo.getDescription());
                userDescription.setVisibility(0);
            }
            categories = mailingListInfo.getCategories();
            if (categories != null)
            {
                ArrayList arraylist = new ArrayList();
                for (Iterator iterator = categories.iterator(); iterator.hasNext(); arraylist.add(ViewUtils.getWrappedItem((MailingListEntity.Category)iterator.next(), arraylist, settings))) { }
                activity = new CategoriesAdapter(activity.getApplicationContext(), arraylist, settings);
                categoriesListView.setAdapter(activity);
                categoriesListView.setExpandOn(true);
            }
            activity = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setUrl(mailingListInfo.getLogoImage());
            imageloadparams.setView(logoIcon);
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageFormType(1);
            imageloadparams.setImageType(2);
            activity.loadImage(imageloadparams);
        }
    }





}
