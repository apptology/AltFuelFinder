// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.voice_recording;

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
import java.util.Date;
import java.util.List;

// Referenced classes of package com.biznessapps.voice_recording:
//            RecordEntity

public class VoiceRecordingAdapter extends AbstractAdapter
{
    public static interface OnRecordClickListener
    {

        public abstract void onPlay(RecordEntity recordentity);

        public abstract void onRemove(RecordEntity recordentity);

        public abstract void onShare(RecordEntity recordentity);
    }

    private static class ViewHolder
    {

        TextView dateView;
        TextView durationView;
        ImageView lineView;
        TextView nameView;
        ImageView playImage;
        ImageView removeImage;
        ImageView shareImage;
        TextView sizeView;

        private ViewHolder()
        {
        }

    }


    private OnRecordClickListener listener;

    public VoiceRecordingAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.voice_recording_item_layout, uisettings);
    }

    public String getSizeInformation()
    {
        int k = getCount();
        int j = 0;
        for (int i = 0; i < k; i++)
        {
            RecordEntity recordentity = (RecordEntity)getItem(i);
            j = (int)((long)j + recordentity.getSize());
        }

        return String.format("%d kB", new Object[] {
            Integer.valueOf(j / 1024)
        });
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final RecordEntity item;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.nameView = (TextView)view.findViewById(com.biznessapps.layout.R.id.name_view);
            viewgroup.dateView = (TextView)view.findViewById(com.biznessapps.layout.R.id.date_view);
            viewgroup.durationView = (TextView)view.findViewById(com.biznessapps.layout.R.id.duration_view);
            viewgroup.sizeView = (TextView)view.findViewById(com.biznessapps.layout.R.id.size_view);
            viewgroup.playImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.play_view);
            viewgroup.removeImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.remove_button);
            viewgroup.shareImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.share_button);
            viewgroup.lineView = (ImageView)view.findViewById(com.biznessapps.layout.R.id.line_delimiter);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (RecordEntity)getItem(i);
        if (item != null)
        {
            ((ViewHolder) (viewgroup)).nameView.setText(item.getName());
            long l = item.getFileDate();
            ((ViewHolder) (viewgroup)).dateView.setText(DateUtils.getStandartDateFormat(new Date(l)));
            l = item.getDuration() / 1000L;
            ((ViewHolder) (viewgroup)).durationView.setText(String.format("%02d:%02d", new Object[] {
                Long.valueOf(l / 60L), Long.valueOf(l % 60L)
            }));
            ((ViewHolder) (viewgroup)).sizeView.setText(String.format("%d kB", new Object[] {
                Long.valueOf(item.getSize() / 1024L)
            }));
            ImageView imageview = ((ViewHolder) (viewgroup)).playImage;
            imageview.setOnClickListener(new android.view.View.OnClickListener() {

                final VoiceRecordingAdapter this$0;
                final RecordEntity val$item;

                public void onClick(View view1)
                {
                    listener.onPlay(item);
                }

            
            {
                this$0 = VoiceRecordingAdapter.this;
                item = recordentity;
                super();
            }
            });
            ((ViewHolder) (viewgroup)).removeImage.setOnClickListener(new android.view.View.OnClickListener() {

                final VoiceRecordingAdapter this$0;
                final RecordEntity val$item;

                public void onClick(View view1)
                {
                    listener.onRemove(item);
                }

            
            {
                this$0 = VoiceRecordingAdapter.this;
                item = recordentity;
                super();
            }
            });
            ((ViewHolder) (viewgroup)).shareImage.setOnClickListener(new android.view.View.OnClickListener() {

                final VoiceRecordingAdapter this$0;
                final RecordEntity val$item;

                public void onClick(View view1)
                {
                    listener.onShare(item);
                }

            
            {
                this$0 = VoiceRecordingAdapter.this;
                item = recordentity;
                super();
            }
            });
            if (item.canPlay())
            {
                i = com.biznessapps.layout.R.drawable.play_icon_new;
            } else
            {
                i = com.biznessapps.layout.R.drawable.pause_icon_new;
            }
            imageview.setImageResource(i);
            if (item.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
                setTextColorToView(item.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).nameView, ((ViewHolder) (viewgroup)).durationView, ((ViewHolder) (viewgroup)).sizeView, ((ViewHolder) (viewgroup)).dateView
                });
                ((ViewHolder) (viewgroup)).lineView.setBackgroundColor(item.getItemTextColor());
                CommonUtils.overrideImageColor(item.getItemTextColor(), ((ViewHolder) (viewgroup)).removeImage.getDrawable());
                CommonUtils.overrideImageColor(item.getItemTextColor(), ((ViewHolder) (viewgroup)).shareImage.getDrawable());
                CommonUtils.overrideImageColor(item.getItemTextColor(), ((ViewHolder) (viewgroup)).playImage.getDrawable());
            }
        }
        return view;
    }

    public void setListener(OnRecordClickListener onrecordclicklistener)
    {
        listener = onrecordclicklistener;
    }

}
