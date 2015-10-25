// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.fan_wall.CommentEntity;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import java.util.Date;
import java.util.List;

public class EventCommentsAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView comment;
        ImageView iconImage;
        TextView timeAgo;
        TextView title;

        private ViewHolder()
        {
        }

    }


    public static final int ABSOLUTE_TIMESTAMP = 0;
    public static final int OFFSET_TIMESTAMP_FROM_SERVER = 1;
    private com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback imageLoadCallback = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

        final EventCommentsAdapter this$0;

        public void onImageLoaded(String s, Bitmap bitmap, View view)
        {
            if (bitmap != null && !bitmap.isRecycled() && ((CommentEntity)view.getTag()).getImageUrl().equals(s))
            {
                view.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
            }
        }

            
            {
                this$0 = EventCommentsAdapter.this;
                super();
            }
    };
    private int timestampType;

    public EventCommentsAdapter(Context context, int i, List list, int j, UiSettings uisettings)
    {
        super(context, list, j, uisettings);
        timestampType = 0;
        timestampType = i;
    }

    public EventCommentsAdapter(Context context, int i, List list, UiSettings uisettings)
    {
        this(context, i, list, com.biznessapps.layout.R.layout.list_event_comment_item, uisettings);
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CommentEntity commententity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout.R.id.name_text_view);
            viewgroup.comment = (TextView)view.findViewById(com.biznessapps.layout.R.id.content_text_view);
            viewgroup.iconImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.row_icon);
            viewgroup.timeAgo = (TextView)view.findViewById(com.biznessapps.layout.R.id.time_text_view);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        commententity = (CommentEntity)getItem(i);
        if (commententity != null)
        {
            ((ViewHolder) (viewgroup)).title.setText(Html.fromHtml(commententity.getTitle()));
            Date date;
            if (StringUtils.isNotEmpty(commententity.getComment()))
            {
                ((ViewHolder) (viewgroup)).comment.setText(Html.fromHtml(commententity.getComment()));
            } else
            {
                ((ViewHolder) (viewgroup)).comment.setText("");
            }
            if (timestampType == 1)
            {
                date = commententity.getDate();
            } else
            {
                date = new Date(commententity.getTimeStamp() * 1000L);
            }
            ((ViewHolder) (viewgroup)).timeAgo.setText(DateUtils.getStringInterval(getContext(), date));
            if (StringUtils.isNotEmpty(commententity.getImageUrl()))
            {
                ((ViewHolder) (viewgroup)).iconImage.setTag(commententity);
                imageFetcher.loadCircledBackground(commententity.getImageUrl(), ((ViewHolder) (viewgroup)).iconImage, imageLoadCallback);
            } else
            if (commententity.getImageId() > 0)
            {
                ((ViewHolder) (viewgroup)).iconImage.setBackgroundResource(commententity.getImageId());
            } else
            {
                ((ViewHolder) (viewgroup)).iconImage.setBackgroundDrawable(null);
            }
            if (commententity.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(commententity.getItemColor()));
                setTextColorToView(commententity.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).title, ((ViewHolder) (viewgroup)).comment, ((ViewHolder) (viewgroup)).timeAgo
                });
            }
        }
        return view;
    }
}
