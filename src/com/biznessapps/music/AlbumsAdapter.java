// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.RefreshableListView;
import java.util.List;

// Referenced classes of package com.biznessapps.music:
//            AlbumEntity, TracksAdapter

public class AlbumsAdapter extends AbstractAdapter
{
    private static class ViewHolder
    {

        TextView albumNameView;
        ImageView arrowImage;
        TextView artistNameView;
        ImageView iconImage;
        TextView songInfoView;
        RefreshableListView tracksListView;

        private ViewHolder()
        {
        }
    }


    private TracksAdapter.OnTrackClickListener listener;
    private String songsLabel;

    public AlbumsAdapter(Context context, List list, UiSettings uisettings)
    {
        super(context, list, com.biznessapps.layout.R.layout.music_album_row, uisettings);
        songsLabel = context.getString(com.biznessapps.layout.R.string.songs);
    }

    private static void setListViewHeight(ListView listview)
    {
        Object obj = listview.getAdapter();
        int i = listview.getWidth();
        View view = ((ListAdapter) (obj)).getView(0, null, listview);
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i, 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
        i = view.getMeasuredHeight();
        int j = ((ListAdapter) (obj)).getCount();
        obj = listview.getLayoutParams();
        obj.height = i * j;
        listview.setLayoutParams(((android.view.ViewGroup.LayoutParams) (obj)));
        listview.requestLayout();
    }

    public View getView(int i, View view, final ViewGroup arrowImage)
    {
        view = inflater.inflate(layoutItemResourceId, null);
        arrowImage = (ImageView)view.findViewById(com.biznessapps.layout.R.id.arrow_navigation);
        final RefreshableListView tracksListView = (RefreshableListView)view.findViewById(com.biznessapps.layout.R.id.list_view);
        TextView textview = (TextView)view.findViewById(com.biznessapps.layout.R.id.album_name_view);
        TextView textview1 = (TextView)view.findViewById(com.biznessapps.layout.R.id.artist_name_view);
        TextView textview2 = (TextView)view.findViewById(com.biznessapps.layout.R.id.songs_info_view);
        ImageView imageview = (ImageView)view.findViewById(com.biznessapps.layout.R.id.icon_image);
        final AlbumEntity item = (AlbumEntity)getItem(i);
        textview.setText(item.getAlbumName());
        textview1.setText(item.getArtistName());
        textview2.setText(String.format(songsLabel, new Object[] {
            (new StringBuilder()).append("").append(item.getSongsCount()).toString()
        }));
        imageview.setBackgroundResource(com.biznessapps.layout.R.color.transparent);
        imageFetcher.loadRoundedBackground(item.getAlbumUrl(), imageview);
        if (item.hasColor())
        {
            view.setBackgroundDrawable(getListItemDrawable(item.getItemColor()));
            setTextColorToView(item.getItemTextColor(), new TextView[] {
                textview, textview1, textview2
            });
        }
        arrowImage.setOnClickListener(new android.view.View.OnClickListener() {

            final AlbumsAdapter this$0;
            final ImageView val$arrowImage;
            final AlbumEntity val$item;
            final RefreshableListView val$tracksListView;

            public void onClick(View view1)
            {
                boolean flag1;
                if (!item.isExtended())
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (flag1)
                {
                    view1 = new TracksAdapter(getContext(), ViewUtils.wrapWithItemSettings(item.getTracks(), getContext), getContext);
                    view1.setShowDuration();
                    view1.setListener(listener);
                    tracksListView.setVisibility(0);
                    tracksListView.setAdapter(view1);
                    AlbumsAdapter.setListViewHeight(tracksListView);
                    tracksListView.setVisibility(0);
                    arrowImage.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_up);
                    item.setExtended(true);
                    return;
                } else
                {
                    tracksListView.setVisibility(8);
                    arrowImage.setBackgroundResource(com.biznessapps.layout.R.drawable.arrow_down);
                    item.setExtended(false);
                    return;
                }
            }

            
            {
                this$0 = AlbumsAdapter.this;
                item = albumentity;
                tracksListView = refreshablelistview;
                arrowImage = imageview;
                super();
            }
        });
        boolean flag = item.isExtended();
        if (flag)
        {
            item.setExtended(false);
            arrowImage.performClick();
        }
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        tracksListView.setVisibility(i);
        return view;
    }

    public void setListener(TracksAdapter.OnTrackClickListener ontrackclicklistener)
    {
        listener = ontrackclicklistener;
    }




}
