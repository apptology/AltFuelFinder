// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.podcasts;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.player.MusicPlayer;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.player.PlayerState;
import com.biznessapps.rss.RssEntity;
import com.biznessapps.widgets.progressbar.ProgressButton;
import java.util.List;
import junit.framework.Assert;

public class PodcastAdapter extends AbstractAdapter
{
    public static interface OnPodcastClickListener
    {

        public abstract void onPlay(int i, RssEntity rssentity);
    }

    private static class ViewHolder
    {

        ViewGroup itemContainer;
        ProgressButton progressButton;
        TextView subtitle;
        TextView title;
        ImageView videoImage;

        private ViewHolder()
        {
        }

    }


    private OnPodcastClickListener listener;

    public PodcastAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.podcast_row, uisettings);
    }

    private void updateProgressButtonState(ProgressButton progressbutton, String s)
    {
        PlayerServiceAccessor playerserviceaccessor = MusicPlayer.getInstance().getServiceAccessor();
        if (playerserviceaccessor.isCurrentSong(s))
        {
            switch (playerserviceaccessor.getPlayerState().getState())
            {
            case 2: // '\002'
            case 4: // '\004'
            default:
                progressbutton.setState(com.biznessapps.widgets.progressbar.ProgressButton.States.WAITING);
                return;

            case 5: // '\005'
                progressbutton.setState(com.biznessapps.widgets.progressbar.ProgressButton.States.PENDING);
                return;

            case 1: // '\001'
                progressbutton.setState(com.biznessapps.widgets.progressbar.ProgressButton.States.PLAYING);
                return;

            case 3: // '\003'
                progressbutton.setState(com.biznessapps.widgets.progressbar.ProgressButton.States.PAUSED);
                return;
            }
        } else
        {
            progressbutton.setState(com.biznessapps.widgets.progressbar.ProgressButton.States.WAITING);
            return;
        }
    }

    public View getView(final int position, View view, ViewGroup viewgroup)
    {
        byte byte1 = 4;
        final RssEntity item;
        String s;
        Object obj;
        byte byte0;
        boolean flag;
        if (view == null)
        {
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup = new ViewHolder();
            viewgroup.itemContainer = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.playlist_container);
            viewgroup.subtitle = (TextView)view.findViewById(com.biznessapps.layout.R.id.podcast_subtitle_text);
            viewgroup.title = (TextView)view.findViewById(com.biznessapps.layout.R.id.podcast_title_text);
            viewgroup.progressButton = (ProgressButton)view.findViewById(com.biznessapps.layout.R.id.progress_button);
            ((ViewHolder) (viewgroup)).progressButton.setImageColor(settings.getButtonBgColor());
            viewgroup.videoImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.video_image);
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (RssEntity)getItem(position);
        if (item != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        s = item.getRssUrl();
        obj = ((ViewHolder) (viewgroup)).videoImage;
        if (item.isAudioType())
        {
            byte0 = 4;
        } else
        {
            byte0 = 0;
        }
        ((ImageView) (obj)).setVisibility(byte0);
        obj = ((ViewHolder) (viewgroup)).progressButton;
        byte0 = byte1;
        if (item.isAudioType())
        {
            byte0 = 0;
        }
        ((ProgressButton) (obj)).setVisibility(byte0);
        ((ViewHolder) (viewgroup)).subtitle.setText(item.getSubtitle());
        ((ViewHolder) (viewgroup)).title.setText(item.getTitle());
        ((ViewHolder) (viewgroup)).itemContainer.setOnClickListener(new android.view.View.OnClickListener() {

            final PodcastAdapter this$0;
            final RssEntity val$item;
            final int val$position;

            public void onClick(View view1)
            {
                if (listener != null)
                {
                    listener.onPlay(position, item);
                }
            }

            
            {
                this$0 = PodcastAdapter.this;
                position = i;
                item = rssentity;
                super();
            }
        });
        ((ViewHolder) (viewgroup)).progressButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PodcastAdapter this$0;
            final RssEntity val$item;
            final int val$position;

            public void onClick(View view1)
            {
                if (listener != null)
                {
                    listener.onPlay(position, item);
                }
            }

            
            {
                this$0 = PodcastAdapter.this;
                position = i;
                item = rssentity;
                super();
            }
        });
        if (item.hasColor())
        {
            view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
            setTextColorToView(item.getItemTextColor(), new TextView[] {
                ((ViewHolder) (viewgroup)).title, ((ViewHolder) (viewgroup)).subtitle
            });
        }
        updateProgressButtonState(((ViewHolder) (viewgroup)).progressButton, s);
        return view;
    }

    public void setListener(OnPodcastClickListener onpodcastclicklistener)
    {
        listener = onpodcastclicklistener;
    }

}
