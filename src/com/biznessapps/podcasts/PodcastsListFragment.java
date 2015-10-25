// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.podcasts;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonListFragmentNew;
import com.biznessapps.common.style.BZButtonStyle;
import com.biznessapps.player.MusicItem;
import com.biznessapps.player.PlayerService;
import com.biznessapps.player.PlayerServiceAccessor;
import com.biznessapps.player.PlayerState;
import com.biznessapps.player.PlayerStateListener;
import com.biznessapps.rss.RssEntity;
import com.biznessapps.utils.ApiUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.RefreshableListView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

// Referenced classes of package com.biznessapps.podcasts:
//            PodcastAdapter

public class PodcastsListFragment extends CommonListFragmentNew
{

    private PodcastAdapter adapter;
    private Button audioButton;
    private android.view.View.OnClickListener audioButtonClickListener;
    private List audioRssItems;
    private boolean audioTabSelected;
    private ViewGroup buttonsContainer;
    private RssEntity currentPlayingItem;
    private PlayerStateListener playerListener;
    private PodcastAdapter.OnPodcastClickListener podcastClickListener;
    private Button videoButton;
    private android.view.View.OnClickListener videoButtonClickListener;
    private List videoRssItems;

    public PodcastsListFragment()
    {
        audioRssItems = new ArrayList();
        videoRssItems = new ArrayList();
        audioTabSelected = true;
        playerListener = new PlayerStateListener() {

            final PodcastsListFragment this$0;

            public void onStateChanged(int i)
            {
                if (adapter != null)
                {
                    getActivity().runOnUiThread(new Runnable() {

                        final _cls1 this$1;

                        public void run()
                        {
                            adapter.notifyDataSetChanged();
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                }
            }

            
            {
                this$0 = PodcastsListFragment.this;
                super();
            }
        };
        audioButtonClickListener = new android.view.View.OnClickListener() {

            final PodcastsListFragment this$0;

            public void onClick(View view)
            {
                selectTab(true);
            }

            
            {
                this$0 = PodcastsListFragment.this;
                super();
            }
        };
        videoButtonClickListener = new android.view.View.OnClickListener() {

            final PodcastsListFragment this$0;

            public void onClick(View view)
            {
                selectTab(false);
            }

            
            {
                this$0 = PodcastsListFragment.this;
                super();
            }
        };
        podcastClickListener = new PodcastAdapter.OnPodcastClickListener() {

            final PodcastsListFragment this$0;

            public void onPlay(int i, RssEntity rssentity)
            {
                playPodcast(i, rssentity);
            }

            
            {
                this$0 = PodcastsListFragment.this;
                super();
            }
        };
    }

    private List extractUrlsFromData(List list)
    {
        ArrayList arraylist = new ArrayList();
        list = list.iterator();
        do
        {
            if (!list.hasNext())
            {
                break;
            }
            RssEntity rssentity = (RssEntity)list.next();
            MusicItem musicitem = new MusicItem();
            if (StringUtils.isNotEmpty(rssentity.getRssUrl()))
            {
                musicitem.setUrl(rssentity.getRssUrl());
                musicitem.setSongInfo(rssentity.getTitle());
                arraylist.add(musicitem);
            }
        } while (true);
        return arraylist;
    }

    private List getFilteredData(List list)
    {
        ArrayList arraylist = new ArrayList();
        if (!StringUtils.isEmpty(searchQuery)) goto _L2; else goto _L1
_L1:
        return list;
_L2:
        Iterator iterator = list.iterator();
        do
        {
            list = arraylist;
            if (!iterator.hasNext())
            {
                continue;
            }
            list = (RssEntity)iterator.next();
            String s = list.getTitle();
            if (StringUtils.isNotEmpty(s) && s.toLowerCase(Locale.getDefault()).contains(searchQuery.toLowerCase(Locale.getDefault())))
            {
                arraylist.add(list);
            }
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private void openWebView(String s)
    {
        Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("WEB_VIEW_SINGLE_FRAGMENT"));
        String s1 = s;
        if (!s.contains("http://"))
        {
            s1 = s;
            if (!s.contains("https://"))
            {
                s1 = (new StringBuilder()).append("http://").append(s).toString();
            }
        }
        intent.putExtra("URL", s1);
        intent.putExtra("TAB_FRAGMENT", "WEB_VIEW_SINGLE_FRAGMENT");
        intent.putExtra("TAB_UNIQUE_ID", getHoldActivity().getTabId());
        intent.putExtra("TAB_LABEL", getIntent().getStringExtra("TAB_LABEL"));
        startActivity(intent);
    }

    private void playPodcast(int i, RssEntity rssentity)
    {
label0:
        {
            MusicItem musicitem;
label1:
            {
label2:
                {
label3:
                    {
                        if (rssentity != null)
                        {
                            if (!rssentity.canPlay())
                            {
                                break label0;
                            }
                            musicitem = new MusicItem();
                            musicitem.setUrl(rssentity.getRssUrl());
                            musicitem.setSongInfo(rssentity.getTitle());
                            MusicItem musicitem1 = getPlayerServiceAccessor().getCurrentSong();
                            if (musicitem1 == null)
                            {
                                break label1;
                            }
                            if (!musicitem1.getUrl().equalsIgnoreCase(rssentity.getRssUrl()))
                            {
                                break label2;
                            }
                            if (getPlayerServiceAccessor().getPlayerState().getState() != 1)
                            {
                                break label3;
                            }
                            getPlayerServiceAccessor().pause();
                        }
                        return;
                    }
                    getPlayerServiceAccessor().play(musicitem);
                    return;
                }
                getPlayerServiceAccessor().stop();
                getPlayerServiceAccessor().play(musicitem);
                return;
            }
            getPlayerServiceAccessor().play(musicitem);
            return;
        }
        getPlayerServiceAccessor().stop();
        openWebView(rssentity.getRssUrl());
    }

    private void plugListView(Activity activity)
    {
        List list = getFilteredData(items);
        if (ApiUtils.hasNotData(list))
        {
            handleNoDataEvent(activity);
            return;
        }
        audioRssItems.clear();
        videoRssItems.clear();
        for (activity = list.iterator(); activity.hasNext();)
        {
            RssEntity rssentity = (RssEntity)activity.next();
            if (rssentity.isAudioType())
            {
                audioRssItems.add(getWrappedItem(rssentity, audioRssItems));
            } else
            {
                videoRssItems.add(getWrappedItem(rssentity, videoRssItems));
            }
        }

        boolean flag = audioRssItems.isEmpty();
        boolean flag1 = videoRssItems.isEmpty();
        if (flag || flag1)
        {
            buttonsContainer.setVisibility(8);
            if (flag)
            {
                audioTabSelected = false;
            }
        } else
        {
            buttonsContainer.setVisibility(0);
        }
        selectTab(audioTabSelected);
    }

    private void selectTab(boolean flag)
    {
        if (adapter == null || audioTabSelected != flag)
        {
            audioTabSelected = flag;
            if (audioTabSelected)
            {
                adapter = new PodcastAdapter(getActivity(), audioRssItems, settings);
            } else
            {
                adapter = new PodcastAdapter(getActivity(), videoRssItems, settings);
            }
            adapter.setListener(podcastClickListener);
            listView.setAdapter(adapter);
        }
        updateUI();
    }

    private void updateButtonState()
    {
        if (audioTabSelected)
        {
            BZButtonStyle.getInstance(getActivity()).apply(settings.getButtonBgColor(), settings.getButtonTextColor(), audioButton);
            BZButtonStyle.getInstance(getActivity()).apply(settings.getButtonTextColor(), settings.getButtonBgColor(), videoButton);
            return;
        } else
        {
            BZButtonStyle.getInstance(getActivity()).apply(settings.getButtonBgColor(), settings.getButtonTextColor(), videoButton);
            BZButtonStyle.getInstance(getActivity()).apply(settings.getButtonTextColor(), settings.getButtonBgColor(), audioButton);
            return;
        }
    }

    private void updateUI()
    {
        if (adapter != null)
        {
            adapter.notifyDataSetChanged();
        }
        updateButtonState();
    }

    protected boolean canUseCachedData()
    {
        items = (List)cacher().getData((new StringBuilder()).append("PODCAST_LIST_PROPERTY").append(tabId).toString());
        return items != null;
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.podcast_layout;
    }

    protected String getRequestUrl()
    {
        return String.format("rss.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        buttonsContainer = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.buttons_container);
        buttonsContainer.setVisibility(8);
        audioButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.audio_button);
        audioButton.setOnClickListener(audioButtonClickListener);
        videoButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.video_button);
        videoButton.setOnClickListener(videoButtonClickListener);
        PlayerService.addListener(playerListener);
        updateUI();
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.podcast_layout, (ViewGroup)null);
        initSettingsData();
        initViews(root);
        loadData();
        openCustomDialogs();
        return root;
    }

    public void onDestroy()
    {
        super.onDestroy();
        PlayerService.removeListener(playerListener);
    }

    protected void onListItemClick(AdapterView adapterview, View view, int i, long l)
    {
        super.onListItemClick(adapterview, view, i, l);
    }

    protected boolean tryParseData(String s)
    {
        items = JsonParser.parseRssList(s);
        return cacher().saveData((new StringBuilder()).append("PODCAST_LIST_PROPERTY").append(tabId).toString(), items);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        getPlayerServiceAccessor().addUrlsQueue(extractUrlsFromData(items));
        plugListView(activity);
    }

    protected boolean useSearchBar()
    {
        return true;
    }



}
