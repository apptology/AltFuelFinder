// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.fragments.CommonListFragment;
import com.biznessapps.player.MusicItem;
import com.biznessapps.player.PlayerService;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.player.PlayerStateListener;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.biznessapps.music:
//            PlaylistEntity, AlbumEntity, AlbumsAdapter, TracksAdapter

public class MusicListFragment extends CommonListFragment
{

    private AlbumsAdapter albumsAdapter;
    private Button albumsButton;
    private Button allTracksButton;
    private boolean areTracksSelected;
    private String headerBgUrl;
    private ImageView headerView;
    private boolean isTablet;
    private PlayerStateListener playerListener;
    private TracksAdapter.OnTrackClickListener trackListener;
    private TracksAdapter tracksAdapter;

    public MusicListFragment()
    {
        areTracksSelected = true;
        playerListener = new PlayerStateListener() {

            final MusicListFragment this$0;

            public void onStateChanged(int i)
            {
                AppHandlers.getUiHandler().post(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        if (areTracksSelected)
                        {
                            if (tracksAdapter != null)
                            {
                                tracksAdapter.notifyDataSetChanged();
                            }
                        } else
                        if (albumsAdapter != null)
                        {
                            albumsAdapter.notifyDataSetChanged();
                            return;
                        }
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$0 = MusicListFragment.this;
                super();
            }
        };
        trackListener = new TracksAdapter.OnTrackClickListener() {

            final MusicListFragment this$0;

            public void onBuy(PlaylistEntity playlistentity)
            {
                ViewUtils.openLinkInBrowser(getApplicationContext(), playlistentity.getItune());
            }

            public void onItemClick(PlaylistEntity playlistentity)
            {
                openDetailScreen(playlistentity);
            }

            public void onPlay(PlaylistEntity playlistentity)
            {
                playMusic(playlistentity);
            }

            
            {
                this$0 = MusicListFragment.this;
                super();
            }
        };
    }

    private void clearHeaderBg()
    {
        headerView.setBackgroundDrawable(null);
    }

    public static List extractUrlsFromData(List list)
    {
        ArrayList arraylist = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            PlaylistEntity playlistentity = (PlaylistEntity)list.next();
            MusicItem musicitem = new MusicItem();
            if (StringUtils.isNotEmpty(playlistentity.getPreviewUrl()))
            {
                musicitem.setUrl(playlistentity.getPreviewUrl());
                musicitem.setSongInfo(playlistentity.getTitle());
                musicitem.setAlbumName(playlistentity.getAlbum());
                arraylist.add(musicitem);
            }
        } while (true);
        return arraylist;
    }

    private List initAlbumsMaps(Activity activity, List list)
    {
        ArrayList arraylist = new ArrayList();
        if (list != null && !list.isEmpty())
        {
            LinkedHashMap linkedhashmap = new LinkedHashMap();
            String s;
            for (Iterator iterator = list.iterator(); iterator.hasNext(); linkedhashmap.put(s, activity))
            {
                PlaylistEntity playlistentity = (PlaylistEntity)iterator.next();
                s = playlistentity.getAlbum();
                list = (ArrayList)linkedhashmap.get(s);
                activity = list;
                if (list == null)
                {
                    activity = new ArrayList();
                }
                activity.add(playlistentity);
            }

            for (activity = linkedhashmap.keySet().iterator(); activity.hasNext(); arraylist.add(list))
            {
                Object obj = (String)activity.next();
                list = new AlbumEntity();
                list.setAlbumName(((String) (obj)));
                obj = (List)linkedhashmap.get(obj);
                if (obj != null && !((List) (obj)).isEmpty())
                {
                    list.setArtistName(((PlaylistEntity)((List) (obj)).get(0)).getArtist());
                    list.setAlbumUrl(((PlaylistEntity)((List) (obj)).get(0)).getAlbumArt());
                    list.setTracks(((List) (obj)));
                }
            }

        }
        return arraylist;
    }

    private void initListViewWithAlbums(Activity activity, List list)
    {
        list = initAlbumsMaps(activity, list);
        albumsAdapter = new AlbumsAdapter(activity.getApplicationContext(), ViewUtils.wrapWithItemSettings(list, settings), settings);
        albumsAdapter.setListener(trackListener);
        listView.setAdapter(albumsAdapter);
    }

    private void initListViewWithTracks(Activity activity, List list)
    {
        findPreloadedItem(list, itemId);
        tracksAdapter = new TracksAdapter(activity.getApplicationContext(), ViewUtils.wrapWithItemSettings(list, settings), settings);
        tracksAdapter.setListener(trackListener);
        listView.setAdapter(tracksAdapter);
        if (preLoadedItem != null && ((PlaylistEntity)preLoadedItem).isUseAgain())
        {
            openDetailScreen((PlaylistEntity)preLoadedItem);
            ((PlaylistEntity)preLoadedItem).setUseAgain(false);
        }
    }

    private void loadHeaderBg()
    {
        boolean flag = StringUtils.isNotEmpty(headerBgUrl);
        ImageView imageview = headerView;
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        imageview.setVisibility(i);
        if (flag)
        {
            ImageFetcher imagefetcher = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
            imageloadparams.setView(headerView);
            imageloadparams.setUrl(headerBgUrl);
            imageloadparams.setImageSrc(true);
            imageloadparams.setImageType(2);
            imagefetcher.loadImage(imageloadparams);
        }
    }

    private void openDetailScreen(PlaylistEntity playlistentity)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("SongInfoViewController"));
        intent.putExtra("TAB_FRAGMENT", "SongInfoViewController");
        intent.putExtra("ITEM_EXTRA", playlistentity);
        intent.putExtra("HEADER_IMAGE", headerBgUrl);
        intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.music_tab_label));
        intent.putExtra("TAB_SPECIAL_ID", tabId);
        intent.putExtra("BG_URL_EXTRA", bgUrl);
        startActivity(intent);
    }

    private void playMusic(PlaylistEntity playlistentity)
    {
label0:
        {
            if (playlistentity != null)
            {
                MusicItem musicitem = getPlayerServiceAccessor().getCurrentSong();
                String s = playlistentity.getPreviewUrl();
                if (musicitem == null || !StringUtils.isNotEmpty(s) || !s.equalsIgnoreCase(musicitem.getUrl()))
                {
                    break label0;
                }
                getPlayerServiceAccessor().play(musicitem);
            }
            return;
        }
        MusicItem musicitem1 = new MusicItem();
        musicitem1.setUrl(playlistentity.getPreviewUrl());
        musicitem1.setSongInfo(playlistentity.getTitle());
        musicitem1.setAlbumName(playlistentity.getAlbum());
        getPlayerServiceAccessor().stop();
        getPlayerServiceAccessor().play(musicitem1);
    }

    private void plugListView(Activity activity)
    {
        if (!items.isEmpty())
        {
            initListViewWithAlbums(activity, items);
            initListViewWithTracks(activity, items);
        }
    }

    private void setAdapter()
    {
        if (areTracksSelected && items != null)
        {
            initListViewWithTracks(getHoldActivity(), items);
            return;
        } else
        {
            listView.setAdapter(albumsAdapter);
            return;
        }
    }

    private void updateControlsState()
    {
        allTracksButton.setSelected(areTracksSelected);
        Button button = albumsButton;
        boolean flag;
        if (!areTracksSelected)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        button.setSelected(flag);
        setAdapter();
    }

    protected boolean canUseCachedData()
    {
        if (isTablet)
        {
            items = (List)cacher().getData((new StringBuilder()).append("MUSIC_PLAYLIST_PROPERTY").append(tabId).append(isTablet).toString());
        } else
        {
            items = (List)cacher().getData((new StringBuilder()).append("MUSIC_PLAYLIST_PROPERTY").append(tabId).toString());
        }
        return items != null && !items.isEmpty();
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.music_list_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("music_list.php?app_code=%s&tab_id=%s&platform=android", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        PlayerService.addListener(playerListener);
        allTracksButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.all_tracks_button);
        albumsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.albums_button);
        allTracksButton.setText(com.biznessapps.layout.R.string.all_tracks_title);
        albumsButton.setText(com.biznessapps.layout.R.string.albums);
        ViewGroup viewgroup1 = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container);
        allTracksButton.setOnClickListener(new android.view.View.OnClickListener() );
        albumsButton.setOnClickListener(new android.view.View.OnClickListener() );
        viewgroup1.setBackgroundColor(settings.getNavigationBarColor());
        headerView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.headerImage);
        ViewUtils.setRootBgColor(headerView, settings);
        isTablet = AppCore.getInstance().isTablet();
    }

    public void onDestroyView()
    {
        PlayerService.removeListener(playerListener);
        onDestroyView();
    }

    public void onResume()
    {
        onResume();
        loadHeaderBg();
    }

    public void onStop()
    {
        onStop();
        clearHeaderBg();
    }

    protected boolean tryParseData(String s)
    {
        s = JsonParser.parseMusicList(s);
        if (isTablet)
        {
            if (s != null && !s.isEmpty())
            {
                bgUrl = ((PlaylistEntity)s.get(0)).getBackground();
            }
            items = (List)cacher().getData((new StringBuilder()).append("MUSIC_PLAYLIST_PROPERTY").append(tabId).toString());
            if (items != null && !items.isEmpty())
            {
                ((PlaylistEntity)items.get(0)).setBackground(bgUrl);
            } else
            {
                items = s;
            }
            return cacher().saveData((new StringBuilder()).append("MUSIC_PLAYLIST_PROPERTY").append(tabId).append(isTablet).toString(), items);
        } else
        {
            items = s;
            return cacher().saveData((new StringBuilder()).append("MUSIC_PLAYLIST_PROPERTY").append(tabId).toString(), items);
        }
    }

    protected void updateControlsWithData(Activity activity)
    {
        updateControlsWithData(activity);
        if (items != null && !items.isEmpty())
        {
            headerBgUrl = ((PlaylistEntity)items.get(0)).getHeader();
            loadHeaderBg();
            getPlayerServiceAccessor().addUrlsQueue(extractUrlsFromData(items));
            plugListView(activity);
            allTracksButton.performClick();
        }
        if (!AppCore.getInstance().isAnyConnectionAvailable())
        {
            ViewUtils.showNetwortErrorToast(activity);
        }
    }



/*
    static boolean access$002(MusicListFragment musiclistfragment, boolean flag)
    {
        musiclistfragment.areTracksSelected = flag;
        return flag;
    }

*/









}
