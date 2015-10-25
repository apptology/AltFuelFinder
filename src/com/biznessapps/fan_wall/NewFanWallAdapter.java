// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.DateUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.LoaderImageView;
import java.util.List;

// Referenced classes of package com.biznessapps.fan_wall:
//            CommentEntity

public class NewFanWallAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView commentView;
        LoaderImageView itemImage;
        TextView nameView;
        TextView repliesView;
        TextView timeAgoView;
        LoaderImageView uploadedImage;

        private ViewHolder()
        {
        }

    }


    private com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback imageLoadCallback;
    private boolean isParentAdapter;

    public NewFanWallAdapter(Context context, List list, boolean flag, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.new_fan_wall_item_layout, uisettings);
        imageLoadCallback = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final NewFanWallAdapter this$0;

            public void onImageLoaded(String s, Bitmap bitmap, View view)
            {
                if (bitmap != null && !bitmap.isRecycled() && ((CommentEntity)view.getTag()).getImageUrl().equals(s))
                {
                    view.setBackgroundDrawable(new BitmapDrawable(view.getResources(), bitmap));
                }
            }

            
            {
                this$0 = NewFanWallAdapter.this;
                super();
            }
        };
        isParentAdapter = flag;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        CommentEntity commententity;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.commentView = (TextView)view.findViewById(com.biznessapps.layout.R.id.fan_wall_comment);
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.fan_wall_name);
            viewgroup.timeAgoView = (TextView)view.findViewById(com.biznessapps.layout.R.id.fan_wall_time_ago);
            viewgroup.repliesView = (TextView)view.findViewById(com.biznessapps.layout.R.id.fan_wall_comment_replies);
            viewgroup.itemImage = (LoaderImageView)view.findViewById(com.biznessapps.layout.R.id.fan_wall_comment_item_image);
            viewgroup.uploadedImage = (LoaderImageView)view.findViewById(com.biznessapps.layout.R.id.fan_wall_upload_image);
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), ((ViewHolder) (viewgroup)).repliesView.getBackground());
            ((ViewHolder) (viewgroup)).repliesView.setText(com.biznessapps.layout.R.string.reply);
            ((ViewHolder) (viewgroup)).repliesView.setTextColor(settings.getButtonBgColor());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        commententity = (CommentEntity)getItem(i);
        if (commententity != null)
        {
            Object obj = commententity.getComment();
            ((ViewHolder) (viewgroup)).commentView.setText(((CharSequence) (obj)));
            ((ViewHolder) (viewgroup)).nameView.setText(commententity.getTitle());
            ((ViewHolder) (viewgroup)).timeAgoView.setText(DateUtils.getStringInterval(getContext(), commententity.getDate()));
            ((ViewHolder) (viewgroup)).itemImage.setBackgroundDrawable(null);
            if (StringUtils.isNotEmpty(commententity.getImageUrl()))
            {
                ((ViewHolder) (viewgroup)).itemImage.setTag(commententity);
                obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(commententity.getImageUrl());
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(((ViewHolder) (viewgroup)).itemImage);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageFormType(1);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(1);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setLoadCallback(imageLoadCallback);
                ((ViewHolder) (viewgroup)).itemImage.setImageDrawable(commententity.getImageUrl(), ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
            } else
            {
                ((ViewHolder) (viewgroup)).itemImage.setImageBitmap(null, false);
            }
            ((ViewHolder) (viewgroup)).uploadedImage.setBackgroundDrawable(null);
            if (StringUtils.isNotEmpty(commententity.getUploadImageUrl()))
            {
                ((ViewHolder) (viewgroup)).uploadedImage.setVisibility(0);
                obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(((ViewHolder) (viewgroup)).uploadedImage);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setTint(null);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(commententity.getUploadImageUrl());
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageFormType(2);
                ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(1);
                ((ViewHolder) (viewgroup)).uploadedImage.setImageDrawable(commententity.getUploadImageUrl(), ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
            } else
            {
                ((ViewHolder) (viewgroup)).uploadedImage.setVisibility(8);
            }
            obj = ((ViewHolder) (viewgroup)).repliesView;
            if (isParentAdapter)
            {
                i = 0;
            } else
            {
                i = 8;
            }
            ((TextView) (obj)).setVisibility(i);
            if (commententity.getReplies() > 0)
            {
                String s = getContext().getString(com.biznessapps.layout.R.string.replies);
                ((ViewHolder) (viewgroup)).repliesView.setText(String.format("%d %s", new Object[] {
                    Integer.valueOf(commententity.getReplies()), s
                }));
            } else
            {
                ((ViewHolder) (viewgroup)).repliesView.setText(com.biznessapps.layout.R.string.reply);
            }
            view.setBackgroundDrawable(getListItemDrawable(0));
        }
        return view;
    }
}
