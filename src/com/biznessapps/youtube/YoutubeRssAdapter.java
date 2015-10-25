// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.youtube;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.List;

// Referenced classes of package com.biznessapps.youtube:
//            YoutubeRssEntity

public class YoutubeRssAdapter extends AbstractAdapter
{

    public YoutubeRssAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.youtube_rss_row, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        YoutubeRssEntity youtuberssentity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new com.biznessapps.common.adapters.ListItemHolder.YoutubeRssItem();
            viewgroup.setCountHintTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.count_hint_text));
            viewgroup.setRatingAverageTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.rating_average_text));
            viewgroup.setTitleView((TextView)view.findViewById(com.biznessapps.layout.R.id.youtube_item_title));
            viewgroup.setCreatorNameView((TextView)view.findViewById(com.biznessapps.layout.R.id.youtube_creator_name));
            viewgroup.setPublishedDateView((TextView)view.findViewById(com.biznessapps.layout.R.id.youtube_published_date));
            viewgroup.setViewCountTextView((TextView)view.findViewById(com.biznessapps.layout.R.id.view_count_text));
            viewgroup.setYoutubeImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.youtube_item_image));
            viewgroup.setCreatorImageView((ImageView)view.findViewById(com.biznessapps.layout.R.id.youtube_creator_image));
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (com.biznessapps.common.adapters.ListItemHolder.YoutubeRssItem)view.getTag();
        }
        youtuberssentity = (YoutubeRssEntity)getItem(i);
        if (youtuberssentity != null)
        {
            viewgroup.getCountHintTextView().setText(youtuberssentity.getFeedlinkCountHint());
            viewgroup.getRatingAverageTextView().setText(youtuberssentity.getCounts());
            viewgroup.getTitleView().setText(youtuberssentity.getTitle());
            viewgroup.getViewCountTextView().setText(youtuberssentity.getStatisticsViewCount());
            viewgroup.getCreatorNameView().setText(youtuberssentity.getCreator());
            if (youtuberssentity.getDate() != null)
            {
                viewgroup.getPublishedDateView().setText(DateUtils.getStandartDateFormat(youtuberssentity.getDate()));
            }
            imageFetcher.loadYoutubeImage(youtuberssentity.getImageUrl(), viewgroup.getYoutubeImageView());
            imageFetcher.loadRoundedBackground(youtuberssentity.getCreatorAvatar(), viewgroup.getCreatorImageView());
            if (youtuberssentity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(youtuberssentity.getItemColor()));
                setTextColorToView(youtuberssentity.getItemTextColor(), new TextView[] {
                    viewgroup.getCountHintTextView(), viewgroup.getRatingAverageTextView(), viewgroup.getViewCountTextView(), viewgroup.getTitleView(), viewgroup.getPublishedDateView(), viewgroup.getCreatorNameView()
                });
                CommonUtils.overrideImageColor(youtuberssentity.getItemTextColor(), viewgroup.getViewCountTextView().getCompoundDrawables()[0]);
                CommonUtils.overrideImageColor(youtuberssentity.getItemTextColor(), viewgroup.getCountHintTextView().getCompoundDrawables()[0]);
                CommonUtils.overrideImageColor(youtuberssentity.getItemTextColor(), viewgroup.getRatingAverageTextView().getCompoundDrawables()[0]);
            }
        }
        return view;
    }
}
