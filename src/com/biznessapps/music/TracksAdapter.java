// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.content.Context;
import android.text.Html;
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
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.widgets.progressbar.ProgressButton;
import java.util.List;

// Referenced classes of package com.biznessapps.music:
//            PlaylistEntity

public class TracksAdapter extends AbstractAdapter
{
    public static interface OnTrackClickListener
    {

        public abstract void onBuy(PlaylistEntity playlistentity);

        public abstract void onItemClick(PlaylistEntity playlistentity);

        public abstract void onPlay(PlaylistEntity playlistentity);
    }

    private static class ViewHolder
    {

        TextView bottomTextView;
        ImageView buyImage;
        ViewGroup itemContainer;
        ProgressButton progressButton;
        TextView titleView;

        private ViewHolder()
        {
        }

    }


    private static final String ARTIST_NAME_FORMAT = "%s %s";
    private static final String DURATION_FORMAT = "%02d:%02d";
    private OnTrackClickListener listener;
    private boolean showDuration;

    public TracksAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.music_track_item_row, uisettings);
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

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        final PlaylistEntity item;
        if (view == null)
        {
            viewgroup = new ViewHolder();
            view = inflater.inflate(layoutItemResourceId, null);
            viewgroup.itemContainer = (ViewGroup)view.findViewById(com.biznessapps.layout.R.id.playlist_container);
            viewgroup.titleView = (TextView)view.findViewById(com.biznessapps.layout.R.id.playlist_title_text);
            viewgroup.bottomTextView = (TextView)view.findViewById(com.biznessapps.layout.R.id.playlist_bottom_text);
            viewgroup.buyImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.buy_icon);
            viewgroup.progressButton = (ProgressButton)view.findViewById(com.biznessapps.layout.R.id.progress_button);
            ((ViewHolder) (viewgroup)).progressButton.setImageColor(settings.getButtonBgColor());
            CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), ((ViewHolder) (viewgroup)).buyImage.getDrawable());
            view.setTag(viewgroup);
        } else
        {
            viewgroup = (ViewHolder)view.getTag();
        }
        item = (PlaylistEntity)getItem(i);
        if (item != null)
        {
            ((ViewHolder) (viewgroup)).titleView.setText(Html.fromHtml(item.getTitle()));
            ImageView imageview;
            if (showDuration)
            {
                i = item.getDuration();
                int j = i / 60;
                ((ViewHolder) (viewgroup)).bottomTextView.setText(String.format("%02d:%02d", new Object[] {
                    Integer.valueOf(j), Integer.valueOf(i % 60)
                }));
            } else
            if (StringUtils.isNotEmpty(item.getAlbum()))
            {
                String s = getContext().getString(com.biznessapps.layout.R.string.artist);
                ((ViewHolder) (viewgroup)).bottomTextView.setText(Html.fromHtml(String.format("%s %s", new Object[] {
                    s, item.getArtist()
                })));
            }
            imageview = ((ViewHolder) (viewgroup)).buyImage;
            if (StringUtils.isNotEmpty(item.getItune()))
            {
                i = 0;
            } else
            {
                i = 4;
            }
            imageview.setVisibility(i);
            ((ViewHolder) (viewgroup)).buyImage.setOnClickListener(new android.view.View.OnClickListener() {

                final TracksAdapter this$0;
                final PlaylistEntity val$item;

                public void onClick(View view1)
                {
                    listener.onBuy(item);
                }

            
            {
                this$0 = TracksAdapter.this;
                item = playlistentity;
                super();
            }
            });
            ((ViewHolder) (viewgroup)).progressButton.setOnClickListener(new android.view.View.OnClickListener() {

                final TracksAdapter this$0;
                final PlaylistEntity val$item;

                public void onClick(View view1)
                {
                    if (listener != null)
                    {
                        listener.onPlay(item);
                    }
                }

            
            {
                this$0 = TracksAdapter.this;
                item = playlistentity;
                super();
            }
            });
            ((ViewHolder) (viewgroup)).itemContainer.setOnClickListener(new android.view.View.OnClickListener() {

                final TracksAdapter this$0;
                final PlaylistEntity val$item;

                public void onClick(View view1)
                {
                    listener.onItemClick(item);
                }

            
            {
                this$0 = TracksAdapter.this;
                item = playlistentity;
                super();
            }
            });
            if (item.hasColor())
            {
                view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
                setTextColorToView(item.getItemTextColor(), new TextView[] {
                    ((ViewHolder) (viewgroup)).titleView, ((ViewHolder) (viewgroup)).bottomTextView
                });
            }
            updateProgressButtonState(((ViewHolder) (viewgroup)).progressButton, item.getPreviewUrl());
        }
        return view;
    }

    public void setListener(OnTrackClickListener ontrackclicklistener)
    {
        listener = ontrackclicklistener;
    }

    public void setShowDuration()
    {
        showDuration = true;
    }

}
