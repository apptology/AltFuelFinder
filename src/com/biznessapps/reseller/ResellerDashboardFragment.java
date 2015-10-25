// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.reseller;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.view.PagerAdapter;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.layout.MainController;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.ExtendedViewPager;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.reseller:
//            ResellerInfo, AppGridAdapter

public class ResellerDashboardFragment extends CommonFragment
{
    private class AppsContainer
    {

        private static final int APPS_NUMBER_LIMIT = 20;
        private List apps;
        private int count;
        final ResellerDashboardFragment this$0;

        public int getCount()
        {
            return count;
        }

        public List getList(int i)
        {
            int k = i * 20 + 20;
            int j = k;
            if (k > apps.size())
            {
                j = apps.size();
            }
            return apps.subList(i * 20, j);
        }

        public AppsContainer(List list)
        {
            this$0 = ResellerDashboardFragment.this;
            super();
            apps = list;
            count = list.size() / 20;
            if (list.size() % 20 != 0)
            {
                count = count + 1;
            }
        }
    }

    private class CustomArrayAdapter extends ArrayAdapter
    {

        final ResellerDashboardFragment this$0;

        public View getDropDownView(int i, View view, ViewGroup viewgroup)
        {
            view = (TextView)super.getDropDownView(i, view, viewgroup);
            if (type == i)
            {
                view.setTextColor(info.getHeaderBgColor());
                return view;
            } else
            {
                view.setTextColor(0xff000000);
                return view;
            }
        }

        public CustomArrayAdapter(Context context, int i, CharSequence acharsequence[])
        {
            this$0 = ResellerDashboardFragment.this;
            super(context, i, acharsequence);
        }
    }

    private class ViewPagerAdapter extends PagerAdapter
    {

        private AppsContainer appsContainer;
        final ResellerDashboardFragment this$0;

        private void addCircles(ViewGroup viewgroup, int i)
        {
            boolean flag = false;
            viewgroup.removeAllViews();
            int j = 0;
            while (j < i) 
            {
                ImageView imageview = (ImageView)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.circle_image);
                imageview.setPadding(4, 0, 4, 0);
                if (j == 0)
                {
                    imageview.setImageResource(com.biznessapps.layout.R.drawable.selected_circle);
                } else
                {
                    imageview.setImageResource(com.biznessapps.layout.R.drawable.unselected_circle);
                }
                viewgroup.addView(imageview);
                j++;
            }
            if (i > 1)
            {
                i = ((flag) ? 1 : 0);
            } else
            {
                i = 8;
            }
            viewgroup.setVisibility(i);
        }

        private void setAppsToView(List list, GridView gridview)
        {
            gridview.setAdapter(new AppGridAdapter(getApplicationContext(), list, 
// JavaClassFileOutputException: get_constant: invalid tag

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)obj);
        }

        public int getCount()
        {
            return appsContainer.getCount();
        }

        public View instantiateItem(ViewGroup viewgroup, int i)
        {
            List list = appsContainer.getList(i);
            GridView gridview = (GridView)ViewUtils.loadLayout(getApplicationContext(), com.biznessapps.layout.R.layout.reseller_gridview_layout);
            setAppsToView(list, gridview);
            viewgroup.addView(gridview, -1, -1);
            return gridview;
        }

        public volatile Object instantiateItem(ViewGroup viewgroup, int i)
        {
            return instantiateItem(viewgroup, i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }

        public ViewPagerAdapter(List list)
        {
            this$0 = ResellerDashboardFragment.this;
            super();
            TextView textview = messageView;
            int i;
            if (list.isEmpty())
            {
                i = 0;
            } else
            {
                i = 8;
            }
            textview.setVisibility(i);
            appsContainer = new AppsContainer(list);
            addCircles(circlesContainer, appsContainer.getCount());
        }
    }


    private static final int ALL_TYPE = 0;
    private static final int DEFAULT_INDEX = 0;
    private static final int DEMO_TYPE = 2;
    private static final int LIVE_TYPE = 1;
    private ViewGroup circlesContainer;
    private ImageView clearSearchView;
    private int currentPageIndex;
    private ImageView exitIcon;
    private ResellerInfo info;
    private TextView messageView;
    private EditText searchEditText;
    private String searchText;
    private int type;
    private TextView typeChooserView;
    private ExtendedViewPager viewPager;

    public ResellerDashboardFragment()
    {
        type = 0;
        currentPageIndex = 0;
    }

    private void customizeWithColors()
    {
        int i = info.getHeaderBgColor();
        root.findViewById(com.biznessapps.layout.R.id.search_container).setBackgroundColor(i);
        root.findViewById(com.biznessapps.layout.R.id.tab_title_container).setBackgroundColor(i);
        String s;
        if (ViewUtils.getColorBrightness(i) >= 0.5F)
        {
            i = 0xff000000;
        } else
        {
            i = -1;
        }
        if (StringUtils.isNotEmpty(info.getPartnerName()))
        {
            s = info.getPartnerName();
        } else
        {
            s = getString(com.biznessapps.layout.R.string.dashboard);
        }
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.tab_title_text)).setText(s);
        ((TextView)root.findViewById(com.biznessapps.layout.R.id.tab_title_text)).setTextColor(i);
        CommonUtils.overrideImageColor(i, exitIcon.getDrawable());
        CommonUtils.overrideImageColor(i, clearSearchView.getDrawable());
        CommonUtils.overrideImageColor(i, searchEditText.getCompoundDrawables()[0]);
        CommonUtils.overrideImageColor(i, typeChooserView.getCompoundDrawables()[2]);
        typeChooserView.setTextColor(i);
        searchEditText.setHintTextColor(i);
        searchEditText.setTextColor(i);
    }

    private List getFilteredApps(List list, String s, int i)
    {
        ArrayList arraylist = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            ResellerInfo.AppInfo appinfo = (ResellerInfo.AppInfo)list.next();
            if (s == null)
            {
                if (i == 0)
                {
                    if (!appinfo.isDemo())
                    {
                        arraylist.add(appinfo);
                    }
                } else
                if (i == 1)
                {
                    if (!appinfo.isDemo() && appinfo.isLive())
                    {
                        arraylist.add(appinfo);
                    }
                } else
                if (i == 2 && appinfo.isDemo())
                {
                    arraylist.add(appinfo);
                }
            } else
            {
                String s1 = appinfo.getName();
                String s2 = appinfo.getAppCode();
                boolean flag;
                boolean flag1;
                if (s1 != null && s1.toLowerCase().contains(s.toLowerCase()))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (s2 != null && s2.toLowerCase().contains(s.toLowerCase()))
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (flag || flag1)
                {
                    if (i == 0)
                    {
                        if (!appinfo.isDemo())
                        {
                            arraylist.add(appinfo);
                        }
                    } else
                    if (i == 1)
                    {
                        if (!appinfo.isDemo() && appinfo.isLive())
                        {
                            arraylist.add(appinfo);
                        }
                    } else
                    if (i == 2 && appinfo.isDemo())
                    {
                        arraylist.add(appinfo);
                    }
                }
            }
        } while (true);
        return arraylist;
    }

    public View getViewForBg()
    {
        return null;
    }

    protected boolean hasTitleBar()
    {
        return false;
    }

    public View onCreateView(final LayoutInflater typeSpinner, final ViewGroup names, Bundle bundle)
    {
        getActivity().getWindow().setSoftInputMode(32);
        root = (ViewGroup)typeSpinner.inflate(com.biznessapps.layout.R.layout.reseller_dashboard_layout, null);
        initSettingsData();
        info = (ResellerInfo)getIntent().getSerializableExtra("RESELLER_DATA");
        typeSpinner = new ArrayList(info.getApps());
        messageView = (TextView)root.findViewById(com.biznessapps.layout.R.id.message_view);
        messageView.setText(com.biznessapps.layout.R.string.reseller_no_app_message);
        viewPager = (ExtendedViewPager)root.findViewById(com.biznessapps.layout.R.id.view_pager);
        circlesContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.tabs_navigation_container);
        typeSpinner = new ViewPagerAdapter(typeSpinner);
        viewPager.setAdapter(typeSpinner);
        viewPager.setOnPageChangeListener(new android.support.v4.view.ViewPager.OnPageChangeListener() {

            final ResellerDashboardFragment this$0;

            public void onPageScrollStateChanged(int i)
            {
            }

            public void onPageScrolled(int i, float f, int j)
            {
            }

            public void onPageSelected(int i)
            {
                currentPageIndex = i;
                if (circlesContainer != null)
                {
                    int k = circlesContainer.getChildCount();
                    int j = 0;
                    while (j < k) 
                    {
                        ImageView imageview = (ImageView)circlesContainer.getChildAt(j);
                        if (j == i)
                        {
                            imageview.setImageResource(com.biznessapps.layout.R.drawable.selected_circle);
                        } else
                        {
                            imageview.setImageResource(com.biznessapps.layout.R.drawable.unselected_circle);
                        }
                        j++;
                    }
                }
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
        });
        viewPager.setOnTouchListener(new android.view.View.OnTouchListener() {

            final ResellerDashboardFragment this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), searchEditText);
                return false;
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
        });
        searchEditText = (EditText)root.findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        searchEditText.addTextChangedListener(new TextWatcher() {

            final ResellerDashboardFragment this$0;

            public void afterTextChanged(Editable editable)
            {
                searchText = editable.toString();
                currentPageIndex = 0;
                editable = new ViewPagerAdapter(getFilteredApps(info.getApps(), searchText, type));
                viewPager.setAdapter(editable);
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
        });
        clearSearchView = (ImageView)root.findViewById(com.biznessapps.layout.R.id.clear_search_icon);
        clearSearchView.setOnClickListener(new android.view.View.OnClickListener() {

            final ResellerDashboardFragment this$0;

            public void onClick(View view)
            {
                searchText = "";
                currentPageIndex = 0;
                searchEditText.setText(searchText);
                ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), searchEditText);
                view = new ViewPagerAdapter(getFilteredApps(info.getApps(), null, type));
                viewPager.setAdapter(view);
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
        });
        typeSpinner = (Spinner)root.findViewById(com.biznessapps.layout.R.id.spinner_view);
        typeChooserView = (TextView)root.findViewById(com.biznessapps.layout.R.id.type_chooser_view);
        typeChooserView.setOnClickListener(new android.view.View.OnClickListener() {

            final ResellerDashboardFragment this$0;
            final Spinner val$typeSpinner;

            public void onClick(View view)
            {
                typeSpinner.performClick();
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                typeSpinner = spinner;
                super();
            }
        });
        ((ViewGroup)root.findViewById(com.biznessapps.layout.R.id.tab_title_container)).setOnClickListener(new android.view.View.OnClickListener() {

            final ResellerDashboardFragment this$0;

            public void onClick(View view)
            {
                ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), searchEditText);
                view = new ViewPagerAdapter(getFilteredApps(info.getApps(), searchText, type));
                viewPager.setAdapter(view);
                viewPager.setCurrentItem(currentPageIndex);
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
        });
        bundle = getString(com.biznessapps.layout.R.string.all);
        typeChooserView.setText(bundle);
        names = new String[3];
        names[0] = bundle;
        names[1] = getString(com.biznessapps.layout.R.string.live);
        names[2] = getString(com.biznessapps.layout.R.string.demo);
        bundle = new CustomArrayAdapter(getApplicationContext(), com.biznessapps.layout.R.layout.reseller_spinner_layout, names);
        bundle.setDropDownViewResource(com.biznessapps.layout.R.layout.reseller_spinner_layout);
        typeSpinner.setAdapter(bundle);
        typeSpinner.setOnItemSelectedListener(new android.widget.AdapterView.OnItemSelectedListener() {

            final ResellerDashboardFragment this$0;
            final String val$names[];

            public void onItemSelected(AdapterView adapterview, View view, int i, long l)
            {
                type = i;
                typeChooserView.setText(names[i]);
                currentPageIndex = 0;
                ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), searchEditText);
                adapterview = new ViewPagerAdapter(getFilteredApps(info.getApps(), searchText, type));
                viewPager.setAdapter(adapterview);
            }

            public void onNothingSelected(AdapterView adapterview)
            {
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                names = as;
                super();
            }
        });
        exitIcon = (ImageView)root.findViewById(com.biznessapps.layout.R.id.exit_icon);
        exitIcon.setOnClickListener(new android.view.View.OnClickListener() {

            final ResellerDashboardFragment this$0;

            public void onClick(View view)
            {
                ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), searchEditText);
                ViewUtils.showDialog(getHoldActivity(), getString(com.biznessapps.layout.R.string.reseller_dashboard_logout), new Runnable() {

                    final _cls8 this$1;

                    public void run()
                    {
                        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("contentchangerviewcontroller"));
                        intent.putExtra("TAB_FRAGMENT", "contentchangerviewcontroller");
                        startActivity(intent);
                        cacher().saveInSharedPreferences(getApplicationContext(), null, "RESELLER_ID_KEY");
                        getHoldActivity().finish();
                    }

            
            {
                this$1 = _cls8.this;
                super();
            }
                });
            }

            
            {
                this$0 = ResellerDashboardFragment.this;
                super();
            }
        });
        customizeWithColors();
        if (!info.isActive())
        {
            root.findViewById(com.biznessapps.layout.R.id.search_container).setVisibility(8);
            typeSpinner.setVisibility(8);
            typeChooserView.setVisibility(8);
            viewPager.setVisibility(8);
            circlesContainer.setVisibility(8);
            messageView.setVisibility(0);
            messageView.setText(com.biznessapps.layout.R.string.reseller_not_active_account);
        }
        return root;
    }



/*
    static int access$002(ResellerDashboardFragment resellerdashboardfragment, int i)
    {
        resellerdashboardfragment.currentPageIndex = i;
        return i;
    }

*/






/*
    static String access$302(ResellerDashboardFragment resellerdashboardfragment, String s)
    {
        resellerdashboardfragment.searchText = s;
        return s;
    }

*/




/*
    static int access$502(ResellerDashboardFragment resellerdashboardfragment, int i)
    {
        resellerdashboardfragment.type = i;
        return i;
    }

*/





    // Unreferenced inner class com/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$1

/* anonymous class */
    class ViewPagerAdapter._cls1
        implements android.widget.AdapterView.OnItemClickListener
    {

        final ViewPagerAdapter this$1;

        public void onItemClick(AdapterView adapterview, View view, int i, long l)
        {
            adapterview = (ResellerInfo.AppInfo)adapterview.getAdapter().getItem(i);
            view = String.format("%s %s", new Object[] {
                getString(com.biznessapps.layout.R.string.reseller_dashboard_login), adapterview.getAppCode()
            });
            ViewUtils.showDialog(getHoldActivity(), null, view, adapterview. new Runnable() {

                final ViewPagerAdapter._cls1 this$2;
                final ResellerInfo.AppInfo val$item;

                public void run()
                {
                    Intent intent = (new Intent()).setClass(getApplicationContext(), com/biznessapps/layout/MainController);
                    intent.putExtra("APPCODE", URLEncoder.encode(item.getAppCode()));
                    intent.putExtra("IS_FROM_RESELLER", true);
                    startActivity(intent);
                }

            
            {
                this$2 = final__pcls1;
                item = ResellerInfo.AppInfo.this;
                super();
            }
            }, true);
        }

            
            {
                this$1 = ViewPagerAdapter.this;
                super();
            }
    }


    // Unreferenced inner class com/biznessapps/reseller/ResellerDashboardFragment$ViewPagerAdapter$2

/* anonymous class */
    class ViewPagerAdapter._cls2
        implements android.view.View.OnTouchListener
    {

        final ViewPagerAdapter this$1;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            ViewUtils.closeKeyboardAndClearFocus(getApplicationContext(), searchEditText);
            return false;
        }

            
            {
                this$1 = ViewPagerAdapter.this;
                super();
            }
    }

}
