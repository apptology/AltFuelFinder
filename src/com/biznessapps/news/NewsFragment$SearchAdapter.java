// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.news;

import android.content.Context;
import android.content.res.Resources;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.news:
//            NewsFragment, SearchEntity

private class ize extends AbstractAdapter
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
        android.widget.apter apter = (android.widget.apter)view.getLayoutParams();
        if (!flag)
        {
            i = 0;
        }
        apter.etMargins(i, 0, 0, 0);
        view.setLayoutParams(apter);
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
            viewgroup = inflater.inflate(com.biznessapps.layout.flater, null);
        }
        final SearchEntity item = (SearchEntity)items.get(i);
        if (item != null)
        {
            TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.ems);
            final TextView descriptionView = (TextView)viewgroup.findViewById(com.biznessapps.layout.ems);
            final ViewGroup nameDateContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.ems);
            TextView textview1 = (TextView)viewgroup.findViewById(com.biznessapps.layout.ems);
            TextView textview2 = (TextView)viewgroup.findViewById(com.biznessapps.layout.ems);
            TextView textview3 = (TextView)viewgroup.findViewById(com.biznessapps.layout.ems);
            ImageView imageview = (ImageView)viewgroup.findViewById(com.biznessapps.layout.ems);
            arrowNavigationView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.ems);
            arrowNavigationView.setOnClickListener(new android.view.View.OnClickListener() {

                final NewsFragment.SearchAdapter this$1;

                public void onClick(View view)
                {
                    ShareComponent.showSharingOptionDialog(getHoldActivity());
                }

            
            {
                this$1 = NewsFragment.SearchAdapter.this;
                super();
            }
            });
            CommonUtils.overrideImageColor(item.getItemTextColor(), arrowNavigationView.getDrawable());
            String s;
            final boolean isImageExist;
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
            isImageExist = StringUtils.isNotEmpty(s);
            if (isImageExist)
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
            setMargin(textview, imageMargin, isImageExist);
            arrowNavigationView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.ageMargin);
            arrowNavigationView.setOnClickListener(new android.view.View.OnClickListener() {

                final NewsFragment.SearchAdapter this$1;
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
                this$1 = NewsFragment.SearchAdapter.this;
                item = searchentity;
                arrowNavigationView = imageview;
                descriptionView = textview;
                nameDateContainer = viewgroup;
                isImageExist = flag;
                super();
            }
            });
            if (StringUtils.isNotEmpty(item.getText()))
            {
                if (item.equals(arrowNavigationView.getTag(item.hashCode())))
                {
                    setExtendedMode(descriptionView, nameDateContainer, isImageExist, item.getText());
                    arrowNavigationView.setBackgroundResource(com.biznessapps.layout.tExtendedMode);
                } else
                {
                    setUsualMode(descriptionView, nameDateContainer, isImageExist, item.getText());
                    arrowNavigationView.setBackgroundResource(com.biznessapps.layout.tUsualMode);
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



    public _cls2.val.isImageExist(Context context, List list, UiSettings uisettings)
    {
        this$0 = NewsFragment.this;
        super(context, list, com.biznessapps.layout.nit>, uisettings);
        items = list;
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        imageMargin = context.getResources().getDimensionPixelSize(com.biznessapps.layout.e);
    }
}
