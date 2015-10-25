// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.components;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;

public class SearchTopBar
{
    public static class SearchDataRunnable
        implements Runnable
    {

        private String searchQuery;

        public String getSearchQuery()
        {
            return searchQuery;
        }

        public void run()
        {
        }

        public void setSearchQuery(String s)
        {
            searchQuery = s;
        }

        public SearchDataRunnable()
        {
        }
    }


    private Context context;
    private com.biznessapps.common.fragments.CommonListFragment.ScreenListener screenListener;
    private ImageView searchCloseView;
    private EditText searchEditText;
    private ImageView searchIconView;
    private TextView titleTextView;

    public SearchTopBar(final Context context, ViewGroup viewgroup, final SearchDataRunnable loadDataRunnable, UiSettings uisettings)
    {
        this.context = context;
        searchIconView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.search_icon);
        searchCloseView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.search_icon_close);
        searchEditText = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.search_edit_view);
        searchEditText.setHint(com.biznessapps.layout.R.string.search);
        titleTextView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tab_title_text);
        searchIconView.setOnClickListener(new android.view.View.OnClickListener() {

            final SearchTopBar this$0;
            final Context val$context;

            public void onClick(View view)
            {
                searchEditText.setVisibility(0);
                searchCloseView.setVisibility(0);
                titleTextView.setVisibility(8);
                searchIconView.setVisibility(8);
                searchEditText.requestFocus();
                ViewUtils.showKeyboard(context, searchEditText);
            }

            
            {
                this$0 = SearchTopBar.this;
                context = context1;
                super();
            }
        });
        searchEditText.setOnKeyListener(ViewUtils.getOnEnterKeyListener(new Runnable() {

            final SearchTopBar this$0;
            final Context val$context;
            final SearchDataRunnable val$loadDataRunnable;

            public void run()
            {
                String s = searchEditText.getText().toString();
                ViewUtils.closeKeyboard(context, searchEditText);
                loadDataRunnable.setSearchQuery(s);
                loadDataRunnable.run();
            }

            
            {
                this$0 = SearchTopBar.this;
                context = context1;
                loadDataRunnable = searchdatarunnable;
                super();
            }
        }));
        searchCloseView.setOnClickListener(new android.view.View.OnClickListener() {

            final SearchTopBar this$0;
            final Context val$context;
            final SearchDataRunnable val$loadDataRunnable;

            public void onClick(View view)
            {
                searchEditText.setVisibility(8);
                searchCloseView.setVisibility(8);
                titleTextView.setVisibility(0);
                searchIconView.setVisibility(0);
                searchEditText.setText("");
                ViewUtils.closeKeyboard(context, searchEditText);
                loadDataRunnable.setSearchQuery(null);
                loadDataRunnable.run();
            }

            
            {
                this$0 = SearchTopBar.this;
                context = context1;
                loadDataRunnable = searchdatarunnable;
                super();
            }
        });
        CommonUtils.overrideImageColor(uisettings.getNavigationTextColor(), searchIconView.getDrawable());
        CommonUtils.overrideImageColor(uisettings.getNavigationTextColor(), searchCloseView.getDrawable());
        screenListener = new com.biznessapps.common.fragments.CommonListFragment.ScreenListener() {

            final SearchTopBar this$0;

            public void onResumed()
            {
                int i = searchEditText.getVisibility();
                TextView textview = titleTextView;
                if (i == 0)
                {
                    i = 8;
                } else
                {
                    i = 0;
                }
                textview.setVisibility(i);
            }

            
            {
                this$0 = SearchTopBar.this;
                super();
            }
        };
    }

    public void closeKeyboard()
    {
        ViewUtils.closeKeyboard(context, searchEditText);
    }

    public com.biznessapps.common.fragments.CommonListFragment.ScreenListener getScreenListener()
    {
        return screenListener;
    }




}
