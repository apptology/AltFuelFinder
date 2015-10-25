// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.music;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHandlers;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.entities.AnalyticEntity;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.common.social.ui.SocialCommentComponent;
import com.biznessapps.fan_wall.FanWallEntity;
import com.biznessapps.player.MusicItem;
import com.biznessapps.player.PlayerService;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.player.PlayerStateListener;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.SmartWebView;
import java.util.List;

// Referenced classes of package com.biznessapps.music:
//            PlaylistEntity

public class MusicDetailFragment extends CommonFragment
{

    protected ViewGroup accountsContentView;
    private ImageView albumImageView;
    private TextView albumNameView;
    private TextView artistNameView;
    private ViewGroup buttonContainer;
    protected Button commentsButton;
    private ViewGroup commentsTabContainer;
    protected FanWallEntity info;
    protected Button infoButton;
    private ViewGroup infoTabContainer;
    protected boolean needToReload;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    private ImageView playView;
    private PlayerStateListener playerListener;
    protected ViewGroup rootView;
    private ImageView shareButton;
    private PlaylistEntity songItem;
    private TextView songTitleView;
    protected String tabId;
    private SmartWebView webView;

    public MusicDetailFragment()
    {
        playerListener = new PlayerStateListener() {

            final MusicDetailFragment this$0;

            public void onStateChanged(int i)
            {
                AppHandlers.getUiHandler().post(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        updatePlayerControls();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        };
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final MusicDetailFragment this$0;

            public boolean onBackPressed()
            {
                return ViewUtils.canGoBack(webView);
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        };
    }

    private void activateButton(Button button, ViewGroup viewgroup)
    {
        commentsButton.setSelected(false);
        infoButton.setSelected(false);
        button.setSelected(true);
        infoTabContainer.setVisibility(8);
        commentsTabContainer.setVisibility(8);
        viewgroup.setVisibility(0);
    }

    private void loadWebContent()
    {
        String s = songItem.getDescription();
        if (StringUtils.isNotEmpty(s))
        {
            ViewUtils.plubWebView(webView);
            webView.loadDataWithBaseURL(null, StringUtils.decode(s), "text/html", "utf-8", null);
        }
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

    private void updatePlayerControls()
    {
        if (getPlayerServiceAccessor().isInState(1))
        {
            MusicItem musicitem = getPlayerServiceAccessor().getCurrentSong();
            String s = songItem.getPreviewUrl();
            if (StringUtils.isNotEmpty(s) && s.equalsIgnoreCase(musicitem.getUrl()))
            {
                playView.setImageResource(com.biznessapps.layout.R.drawable.pause_icon_new);
            } else
            {
                playView.setImageResource(com.biznessapps.layout.R.drawable.play_icon_new);
            }
        } else
        {
            playView.setImageResource(com.biznessapps.layout.R.drawable.play_icon_new);
        }
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), playView.getDrawable());
    }

    protected boolean canUseCachedData()
    {
        info = (FanWallEntity)cacher().getData((new StringBuilder()).append("FAN_WALL_INFO_PROPERTY").append(itemId).toString());
        boolean flag;
        if (info != null && !needToReload && songItem != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        needToReload = false;
        return flag;
    }

    protected AnalyticEntity getAnalyticData()
    {
        AnalyticEntity analyticentity = super.getAnalyticData();
        if (songItem != null)
        {
            analyticentity.setItemId(songItem.getId());
        }
        return analyticentity;
    }

    protected String getRequestUrl()
    {
        return String.format("fan_wall.php?app_code=%s&yt_id=%s&tab_id=%s&show_all=1", new Object[] {
            cacher().getAppCode(), itemId, tabId
        });
    }

    protected View getViewForBg()
    {
        return root;
    }

    protected void initViews(ViewGroup viewgroup)
    {
        songItem = (PlaylistEntity)getIntent().getSerializableExtra("ITEM_EXTRA");
        itemId = songItem.getId();
        buttonContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.event_new_buttons_container);
        infoTabContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.event_info_tab_container);
        commentsTabContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_container);
        infoButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.event_new_info_button);
        commentsButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.event_new_comments_button);
        shareButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.share_button);
        playView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.playlist_item_image);
        playView.setOnClickListener(new android.view.View.OnClickListener() {

            final MusicDetailFragment this$0;

            public void onClick(View view)
            {
                playMusic(songItem);
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        });
        updatePlayerControls();
        commentsButton.setText(com.biznessapps.layout.R.string.comments);
        infoButton.setText(com.biznessapps.layout.R.string.description);
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MusicDetailFragment this$0;

            public void onClick(View view)
            {
                ShareComponent.showSharingOptionDialog(getHoldActivity());
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        });
        infoButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MusicDetailFragment this$0;

            public void onClick(View view)
            {
                activateButton(infoButton, infoTabContainer);
                loadWebContent();
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        });
        commentsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MusicDetailFragment this$0;

            public void onClick(View view)
            {
                activateButton(commentsButton, commentsTabContainer);
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        });
        Object obj;
        int i;
        if (AppCore.getInstance().getAppSettings().shouldHideComments())
        {
            commentsButton.setVisibility(8);
            activateButton(infoButton, infoTabContainer);
        } else
        {
            activateButton(commentsButton, commentsTabContainer);
            (new SocialCommentComponent(getActivity(), viewgroup, itemId, tabId, true, settings, 1)).loadCommentsData();
        }
        buttonContainer.setBackgroundColor(settings.getNavigationBarColor());
        infoButton.setTextColor(settings.getNavigationTextColor());
        commentsButton.setTextColor(settings.getNavigationTextColor());
        ViewUtils.setRootBgColor(viewgroup, settings);
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), shareButton.getDrawable());
        webView = (SmartWebView)viewgroup.findViewById(com.biznessapps.layout.R.id.webview);
        webView.setDownloadListener(new DownloadListener() {

            final MusicDetailFragment this$0;

            public void onDownloadStart(String s, String s1, String s2, String s3, long l)
            {
                s1 = new Intent("android.intent.action.VIEW");
                s1.setType(s3);
                s1.setData(Uri.parse(s));
                startActivity(s1);
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        });
        albumImageView = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.song_image_view);
        artistNameView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.artist_name);
        songTitleView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.song_title);
        albumNameView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.album_name);
        artistNameView.setTextColor(settings.getFeatureTextColor());
        songTitleView.setTextColor(settings.getFeatureTextColor());
        albumNameView.setTextColor(settings.getFeatureTextColor());
        obj = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.buy_icon);
        if (StringUtils.isNotEmpty(songItem.getItune()))
        {
            i = 0;
        } else
        {
            i = 4;
        }
        ((ImageView) (obj)).setVisibility(i);
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), ((ImageView) (obj)).getDrawable());
        ((ImageView) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final MusicDetailFragment this$0;

            public void onClick(View view)
            {
                ViewUtils.openLinkInBrowser(getApplicationContext(), songItem.getItune());
            }

            
            {
                this$0 = MusicDetailFragment.this;
                super();
            }
        });
        bgUrl = getIntent().getStringExtra("BG_URL_EXTRA");
        artistNameView.setText(songItem.getArtist());
        songTitleView.setText(songItem.getTitle());
        albumNameView.setText(songItem.getAlbum());
        getImageFetcher().loadRoundedBackground(songItem.getAlbumArt(), albumImageView);
        obj = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setView(viewgroup.findViewById(com.biznessapps.layout.R.id.song_header_view));
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setUrl(getIntent().getStringExtra("HEADER_IMAGE"));
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageSrc(true);
        ((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)).setImageType(2);
        getImageFetcher().loadImage(((com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams) (obj)));
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        switch (j)
        {
        default:
            return;

        case 4: // '\004'
            needToReload = true;
            break;
        }
        loadData();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.music_detail_layout, null);
        initSettingsData();
        preDataLoading(getHoldActivity());
        initViews(root);
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        PlayerService.addListener(playerListener);
        getHoldActivity().addBackPressedListener(onBackPressedListener);
        return root;
    }

    public void onDestroyView()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            commonfragmentactivity.removeBackPressedListener(onBackPressedListener);
        }
        PlayerService.removeListener(playerListener);
        super.onDestroyView();
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        s = JsonParser.parseFanWallData(DataSource.getInstance().getData(s));
        if (s != null && !s.isEmpty())
        {
            info = (FanWallEntity)s.get(0);
            cacher().saveData((new StringBuilder()).append("FAN_WALL_INFO_PROPERTY").append(itemId).toString(), info);
        }
        return info != null;
    }








}
