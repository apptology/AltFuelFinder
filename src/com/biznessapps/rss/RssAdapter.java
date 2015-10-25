// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.rss;

import android.app.Activity;
import android.content.res.Resources;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.rss:
//            RssEntity

public class RssAdapter extends AbstractAdapter
{

    private Activity activity;
    private int imageMargin;
    private String rssUrl;

    public RssAdapter(Activity activity1, List list, int i, UiSettings uisettings)
    {
        super(activity1.getApplicationContext(), list, i, uisettings);
        activity = activity1;
        imageMargin = activity1.getResources().getDimensionPixelSize(com.biznessapps.layout.R.dimen.thumbnail_size);
    }

    private void defineSectionHeader(CommonListEntity commonlistentity, TextView textview)
    {
        byte byte0 = 8;
        String s = commonlistentity.getSection();
        if (StringUtils.isNotEmpty(s))
        {
            textview.setTextColor(settings.getSectionTextColor());
            textview.setBackgroundColor(settings.getTransparentSectionBarColor());
            if (commonlistentity.isShowSection())
            {
                byte0 = 0;
            }
            textview.setVisibility(byte0);
            if (commonlistentity.getDate() != null)
            {
                textview.setText(DateUtils.getStandartShortDateFormat(commonlistentity.getDate()));
                return;
            } else
            {
                textview.setText(s);
                return;
            }
        } else
        {
            textview.setVisibility(8);
            return;
        }
    }

    private void setExtendedMode(TextView textview, TextView textview1, boolean flag, String s)
    {
        if (flag)
        {
            ViewUtils.setSpannableExtendedText(textview, imageMargin, s);
        }
        textview.setLines(7);
        setMargin(textview, 0, flag);
        setMargin(textview1, 0, flag);
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

    private void setUsualMode(TextView textview, TextView textview1, boolean flag, String s)
    {
        textview.setLines(2);
        textview.setText(Html.fromHtml(s));
        setMargin(textview, imageMargin, flag);
        setMargin(textview1, imageMargin, flag);
    }

    public View getView(int i, final View arrowNavigationView, ViewGroup viewgroup)
    {
        View view;
        final RssEntity item;
        if (arrowNavigationView == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.RssItem();
            viewgroup.setTextViewTitle((TextView)view.findViewById(com.biznessapps.layout.R.id.rss_title_label));
            viewgroup.setTextViewSummary((TextView)view.findViewById(com.biznessapps.layout.R.id.rss_summary_label));
            viewgroup.setTextViewDate((TextView)view.findViewById(com.biznessapps.layout.R.id.rss_date_label));
            viewgroup.setImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.RssItem)arrowNavigationView.getTag();
            view = arrowNavigationView;
        }
        item = (RssEntity)getItem(i);
        if (item != null)
        {
            viewgroup.getTextViewTitle().setText(Html.fromHtml(item.getTitle()));
            viewgroup.getTextViewSummary().setText(Html.fromHtml(item.getSummary()));
            if (item.getDate() != null)
            {
                viewgroup.getTextViewDate().setText(DateUtils.getStandartDateFormat(item.getDate()));
            }
            defineSectionHeader(item, (TextView)view.findViewById(com.biznessapps.layout.R.id.section_title_view));
            final Object summaryView = item.getImageUrl();
            arrowNavigationView = ((View) (summaryView));
            final TextView dateView;
            final boolean isImageExist;
            if (StringUtils.isEmpty(((String) (summaryView))))
            {
                if (StringUtils.isNotEmpty(item.getIcon()))
                {
                    arrowNavigationView = (new StringBuilder()).append(item.getIcon()).append("?width=100").toString();
                    rssUrl = arrowNavigationView;
                } else
                if (StringUtils.isNotEmpty(rssUrl))
                {
                    arrowNavigationView = rssUrl;
                } else
                {
                    arrowNavigationView = AppCore.getInstance().getAppSettings().getRssIconUrl();
                }
            }
            isImageExist = StringUtils.isNotEmpty(arrowNavigationView);
            if (isImageExist)
            {
                imageFetcher.loadRoundedImage(arrowNavigationView, viewgroup.getImageView());
                viewgroup.getImageView().setVisibility(0);
            } else
            {
                viewgroup.getImageView().setVisibility(8);
            }
            setMargin(viewgroup.getTextViewTitle(), imageMargin, isImageExist);
            summaryView = viewgroup.getTextViewSummary();
            dateView = viewgroup.getTextViewDate();
            arrowNavigationView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.arrow_navigation);
            arrowNavigationView.setOnClickListener(new android.view.View.OnClickListener() {

                final RssAdapter this$0;
                final ImageView val$arrowNavigationView;
                final TextView val$dateView;
                final boolean val$isImageExist;
                final RssEntity val$item;
                final TextView val$summaryView;

                public void onClick(View view1)
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
                        setExtendedMode(summaryView, dateView, isImageExist, item.getSummary());
                        arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
                        arrowNavigationView.setTag(item.hashCode(), item);
                    } else
                    {
                        setUsualMode(summaryView, dateView, isImageExist, item.getSummary());
                        arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
                        arrowNavigationView.setTag(item.hashCode(), null);
                    }
                    CommonUtils.overrideImageColor(item.getItemTextColor(), arrowNavigationView.getBackground());
                }

            
            {
                this$0 = RssAdapter.this;
                arrowNavigationView = imageview;
                item = rssentity;
                summaryView = textview;
                dateView = textview1;
                isImageExist = flag;
                super();
            }
            });
            if (item.equals(arrowNavigationView.getTag(item.hashCode())))
            {
                setExtendedMode(((TextView) (summaryView)), dateView, isImageExist, item.getSummary());
                arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
            } else
            {
                setUsualMode(((TextView) (summaryView)), dateView, isImageExist, item.getSummary());
                arrowNavigationView.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
            }
            summaryView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.share_news_button);
            ((ImageView) (summaryView)).setOnClickListener(new android.view.View.OnClickListener() {

                final RssAdapter this$0;

                public void onClick(View view1)
                {
                    ShareComponent.showSharingOptionDialog(activity);
                }

            
            {
                this$0 = RssAdapter.this;
                super();
            }
            });
            CommonUtils.overrideImageColor(item.getItemTextColor(), ((ImageView) (summaryView)).getDrawable());
            CommonUtils.overrideImageColor(item.getItemTextColor(), arrowNavigationView.getBackground());
            if (item.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
                setTextColorToView(item.getItemTextColor(), new TextView[] {
                    viewgroup.getTextViewTitle(), viewgroup.getTextViewSummary(), viewgroup.getTextViewDate()
                });
            }
        }
        return view;
    }



}
