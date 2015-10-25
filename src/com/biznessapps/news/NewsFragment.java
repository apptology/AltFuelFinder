// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.news:
//            SearchEntity, NewsSettings

public class NewsFragment extends CommonListFragment
{
    private class SearchAdapter extends AbstractAdapter
    {

        private int imageMargin;
        private LayoutInflater inflater;
        private List items;
        final NewsFragment this$0;

        private void setExtendedMode(TextView textview, ViewGroup viewgroup, boolean flag, String s)
        {
            if (flag)
            {
                ViewUtils.setSpannableExtendedText(textview, imageMargin, s);
            }
            textview.setLines(7);
            setMargin(textview, 0, flag);
            setMargin(viewgroup, 0, flag);
        }

        private void setMargin(View view, int i, boolean flag)
        {
            android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
            if (!flag)
            {
                i = 0;
            }
            layoutparams.setMargins(i, 0, 0, 0);
            view.setLayoutParams(layoutparams);
        }

        private void setUsualMode(TextView textview, ViewGroup viewgroup, boolean flag, String s)
        {
            textview.setLines(2);
            textview.setText(Html.fromHtml(s));
            setMargin(textview, imageMargin, flag);
            setMargin(viewgroup, imageMargin, flag);
        }

        public View getView(int i, final View arrowNavigationView, ViewGroup viewgroup)
        {
            viewgroup = arrowNavigationView;
            if (arrowNavigationView == null)
            {
                viewgroup = inflater.inflate(com.biznessapps.layout.R.layout.news_item_layout, null);
            }
            final SearchEntity item = (SearchEntity)items.get(i);
            if (item != null)
            {
                TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.title_text_view);
                final TextView descriptionView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.description_text_view);
                final ViewGroup nameDateContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.name_date_container);
                TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.date_text_view);
                TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.point_text_view);
                TextView textview3 = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.name_text_view);
                ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.row_icon);
                arrowNavigationView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.share_news_button);
                arrowNavigationView.setOnClickListener(new android.view.View.OnClickListener() {

                    final SearchAdapter this$1;

                    public void onClick(View view)
                    {
                        ShareComponent.showSharingOptionDialog(getHoldActivity());
                    }

            
            {
                this$1 = SearchAdapter.this;
                super();
            }
                });
                CommonUtils.overrideImageColor(item.getItemTextColor(), arrowNavigationView.getDrawable());
                String s;
                boolean flag;
                if (StringUtils.isNotEmpty(item.getTitle()))
                {
                    textview.setText(Html.fromHtml(item.getTitle()));
                    textview.setVisibility(0);
                } else
                {
                    textview.setVisibility(8);
                }
                if (StringUtils.isNotEmpty(item.getName()))
                {
                    textview3.setText(item.getName());
                }
                if (StringUtils.isNotEmpty(item.getText()))
                {
                    descriptionView.setText(Html.fromHtml(item.getText()));
                }
                if (item.getDate() != null)
                {
                    textview1.setText(DateUtils.getStringInterval(getApplicationContext(), item.getDate()));
                }
                s = item.getImageUrl();
                flag = StringUtils.isNotEmpty(s);
                if (flag)
                {
                    arrowNavigationView = s;
                    if (!s.contains("http://"))
                    {
                        arrowNavigationView = s;
                        if (!s.contains("https://"))
                        {
                            arrowNavigationView = (new StringBuilder()).append("http://").append(s).toString();
                        }
                    }
                    imageFetcher.loadRoundedImage(arrowNavigationView, imageview);
                    imageview.setVisibility(0);
                } else
                {
                    imageview.setVisibility(8);
                }
                setMargin(textview, imageMargin, flag);
                arrowNavigationView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.arrow_navigation);
                arrowNavigationView.setOnClickListener(flag. new android.view.View.OnClickListener() {

                    final SearchAdapter this$1;
                    final ImageView val$arrowNavigationView;
                    final TextView val$descriptionView;
                    final boolean val$isImageExist;
                    final SearchEntity val$item;
                    final ViewGroup val$nameDateContainer;

                    public void onClick(View view)
                    {
                        if (StringUtils.isNotEmpty(item.getText()))
                        {
                            boolean flag;
                            if (arrowNavigationView.getTag(item.hashCode()) == null)
                            {
                                flag = true;
                            } else
                            {
                                flag = false;
                            }
                            if (flag)
                            {
                                setExtendedMode(descriptionView, nameDateContainer, isImageExist, item.getText());
                                arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
                                arrowNavigationView.setTag(item.hashCode(), item);
                            } else
                            {
                                setUsualMode(descriptionView, nameDateContainer, isImageExist, item.getText());
                                arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
                                arrowNavigationView.setTag(item.hashCode(), null);
                            }
                            CommonUtils.overrideImageColor(item.getItemTextColor(), arrowNavigationView.getBackground());
                        }
                    }

            
            {
                this$1 = final_searchadapter;
                item = searchentity;
                arrowNavigationView = imageview;
                descriptionView = textview;
                nameDateContainer = viewgroup;
                isImageExist = Z.this;
                super();
            }
                });
                if (StringUtils.isNotEmpty(item.getText()))
                {
                    if (item.equals(arrowNavigationView.getTag(item.hashCode())))
                    {
                        setExtendedMode(descriptionView, nameDateContainer, flag, item.getText());
                        arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
                    } else
                    {
                        setUsualMode(descriptionView, nameDateContainer, flag, item.getText());
                        arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
                    }
                }
                CommonUtils.overrideImageColor(item.getItemTextColor(), arrowNavigationView.getBackground());
                if (item.hasColor())
                {
                    viewgroup.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
                    setTextColorToView(item.getItemTextColor(), new TextView[] {
                        textview, descriptionView, textview1, textview3, textview2
                    });
                }
            }
            return viewgroup;
        }

        public boolean isEnabled(int i)
        {
            return ((SearchEntity)items.get(i)).getNewsSource() == 1;
        }



        public SearchAdapter(Context context, List list, UiSettings uisettings)
        {
            this$0 = NewsFragment.this;
            super(context, list, com.biznessapps.layout.R.layout.news_item_layout, uisettings);
            items = list;
            inflater = (LayoutInflater)context.getSystemService("layout_inflater");
            imageMargin = context.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.thumbnail_size);
        }
    }


    public static final int GOOGLE_SEARCH_TYPE = 1;
    public static final int TWITTER_SEARCH_TYPE = 2;
    private int currentSearchType;
    private Button googleSearchButton;
    private List googleSearchList;
    private NewsSettings newsSettings;
    private Button twitterSearchButton;
    private List twitterSearchList;

    public NewsFragment()
    {
        currentSearchType = 1;
    }

    private List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (SearchEntity)iterator.next();
            String s = list.getText();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase().contains(searchQuery.toLowerCase()))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void initListeners()
    {
        googleSearchButton.setOnClickListener(new android.view.View.OnClickListener() {

            final NewsFragment this$0;

            public void onClick(View view)
            {
                currentSearchType = 1;
                search();
            }

            
            {
                this$0 = NewsFragment.this;
                super();
            }
        });
        twitterSearchButton.setOnClickListener(new android.view.View.OnClickListener() {

            final NewsFragment this$0;

            public void onClick(View view)
            {
                currentSearchType = 2;
                search();
            }

            
            {
                this$0 = NewsFragment.this;
                super();
            }
        });
        listView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final NewsFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = (SearchEntity)adapterview.getAdapter().getItem(i);
                if (StringUtils.isNotEmpty(adapterview.getLink()))
                {
                    view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
                    view.putExtra("URL", adapterview.getLink());
                    view.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
                    view.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
                    startActivity(view);
                }
            }

            
            {
                this$0 = NewsFragment.this;
                super();
            }
        });
    }

    private void search()
    {
        updateUI();
        if (currentSearchType == 1)
        {
            updateList(googleSearchList, getActivity());
            return;
        } else
        {
            updateList(twitterSearchList, getActivity());
            return;
        }
    }

    private void updateButtonSelection(Button button)
    {
        googleSearchButton.setSelected(false);
        twitterSearchButton.setSelected(false);
        button.setSelected(true);
    }

    private void updateList(List list, Activity activity)
    {
        items = getFilteredData(list);
        if (items != null && !items.isEmpty() && activity != null)
        {
            list = new ArrayList();
            Collections.sort(items, new Comparator() {

                final NewsFragment this$0;

                public int compare(SearchEntity searchentity, SearchEntity searchentity1)
                {
                    if (searchentity.getDateTime() != null && searchentity1.getDateTime() != null)
                    {
                        if (searchentity.getDateTime().getTime() < searchentity1.getDateTime().getTime())
                        {
                            return 1;
                        }
                        if (searchentity.getDateTime().getTime() != searchentity1.getDateTime().getTime())
                        {
                            return -1;
                        }
                    }
                    return 0;
                }

                public volatile int compare(Object obj, Object obj1)
                {
                    return compare((SearchEntity)obj, (SearchEntity)obj1);
                }

            
            {
                this$0 = NewsFragment.this;
                super();
            }
            });
            for (Iterator iterator = items.iterator(); iterator.hasNext(); list.add((SearchEntity)getWrappedItem((SearchEntity)iterator.next(), list))) { }
            list = new SearchAdapter(activity.getApplicationContext(), items, settings);
            listView.setAdapter(list);
        } else
        if (activity != null)
        {
            handleNoDataEvent(activity);
            return;
        }
    }

    private void updateUI()
    {
        if (currentSearchType != 1) goto _L2; else goto _L1
_L1:
        updateButtonSelection(googleSearchButton);
_L4:
        listView.setAdapter(null);
        return;
_L2:
        if (currentSearchType == 2)
        {
            updateButtonSelection(twitterSearchButton);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected boolean canUseCachedData()
    {
        boolean flag1 = false;
        newsSettings = (NewsSettings)cacher().getData((new StringBuilder()).append("NewsViewController").append(tabId).toString());
        boolean flag = flag1;
        if (newsSettings != null)
        {
            googleSearchList = newsSettings.getGoogleSearchList();
            twitterSearchList = newsSettings.getTwitterSearchList();
            flag = flag1;
            if (twitterSearchList != null)
            {
                flag = flag1;
                if (!twitterSearchList.isEmpty())
                {
                    flag = flag1;
                    if (googleSearchList != null)
                    {
                        flag = flag1;
                        if (!googleSearchList.isEmpty())
                        {
                            flag = true;
                        }
                    }
                }
            }
        }
        return flag;
    }

    protected String defineBgUrl(Intent intent)
    {
        intent = null;
        if (newsSettings != null)
        {
            intent = newsSettings.getBackground();
        }
        return intent;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.news_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("news.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root.findViewById(com.biznessapps.layout.R.id.search_results_listview);
    }

    protected List getViewsRef()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new WeakReference(googleSearchButton));
        arraylist.add(new WeakReference(twitterSearchButton));
        return arraylist;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        googleSearchButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.google_search_button);
        twitterSearchButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.twitter_search_button);
        googleSearchButton.setText(com.biznessapps.layout.R.string.news);
        twitterSearchButton.setText(com.biznessapps.layout.R.string.twitter);
        ViewGroup viewgroup1 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container);
        googleSearchButton.setTextColor(settings.getNavigationTextColor());
        twitterSearchButton.setTextColor(settings.getNavigationTextColor());
        viewgroup1.setBackgroundColor(settings.getNavigationBarColor());
        listView = (RefreshableListView)viewgroup.findViewById(com.biznessapps.layout.R.id.search_results_listview);
        ViewUtils.setRootBgColor(viewgroup, settings);
        initSearchBar();
    }

    protected void loadData()
    {
        if (googleSearchList != null && twitterSearchList != null)
        {
            search();
            return;
        } else
        {
            super.loadData();
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        getActivity().getWindow().setSoftInputMode(32);
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.news_layout, null);
        initSettingsData();
        initViews(root);
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
        newsSettings = JsonParser.getNewsSettings(s);
        return cacher().saveData((new StringBuilder()).append("NewsViewController").append(tabId).toString(), newsSettings);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        googleSearchList = newsSettings.getGoogleSearchList();
        twitterSearchList = newsSettings.getTwitterSearchList();
        search();
    }

    protected boolean useSearchBar()
    {
        return true;
    }


/*
    static int access$002(NewsFragment newsfragment, int i)
    {
        newsfragment.currentSearchType = i;
        return i;
    }

*/

}
