// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.location.LocationListener;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageButton;
import android.widget.ListView;
import android.widget.TextView;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.LoadDataTaskExternal;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableMapActivity;
import com.biznessapps.common.adapters.ImageAdapter;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.MapEntity;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.ui.SocialLoginPopupView;
import com.biznessapps.gallery.GalleryData;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.images.BitmapDownloader;
import com.biznessapps.location.MapUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageCache;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.LoadMoreButton;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.biznessapps.fan_wall:
//            CommentEntity, LoadMoreBuilder, NewFanWallAdapter

public class NewFanWallActivity extends CommonShareableMapActivity
{

    private static final int COMMENTS_TAB_TYPE = 1;
    private static final int MAP_TAB_TYPE = 2;
    private static final int PHOTOS_TAB_TYPE = 3;
    private List comments;
    private ListView commentsListView;
    private Map commentsMap;
    private TextView commentsTitleView;
    private Location currentLocation;
    private Bitmap defaultIconBitmap;
    private GridView galleryView;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable handleInBgRunnable;
    private boolean hasNearByComments;
    private boolean hasRecentComments;
    private boolean isNearByUsed;
    private LoadMoreButton loadMoreButton;
    private ViewGroup loadMoreButtonContainer;
    private ViewGroup mainContainer;
    private TextView mapTitleView;
    private Bitmap markerBorderBitmap;
    private Button nearByButton;
    private List nearByComments;
    private int nearByOffset;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable parseDataRunnable;
    private TextView photosTitleView;
    private int recentOffset;
    private Button recentsButton;
    private List recentsComments;
    private String tabId;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable updateControlsRunnable;
    private com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable useCachingRunnable;
    private int usedTabType;

    public NewFanWallActivity()
    {
        comments = new ArrayList();
        nearByComments = new ArrayList();
        recentsComments = new ArrayList();
        usedTabType = 1;
        nearByOffset = 0;
        recentOffset = 0;
        commentsMap = new HashMap();
        hasRecentComments = true;
        hasNearByComments = true;
    }

    private void addComment(int i)
    {
        if (this != null)
        {
            Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FAN_ADD_COMMENT_FRAGMENT"));
            intent.putExtra("TAB_SPECIAL_ID", getIntent().getStringExtra("TAB_SPECIAL_ID"));
            intent.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.comments));
            intent.putExtra("FAN_WALL_USE_PHOTO_OPTION", true);
            intent.putExtra("YOUTUBE_MODE", false);
            intent.putExtra("SELECTED_SOCIAL_TYPE", i);
            intent.putExtra("TAB_FRAGMENT", "FAN_ADD_COMMENT_FRAGMENT");
            intent.putExtra("USE_SPECIAL_MD5_HASH_EXTRA", true);
            if (currentLocation != null)
            {
                intent.putExtra("longitude", currentLocation.getLongitude());
                intent.putExtra("latitude", currentLocation.getLatitude());
            }
            startActivityForResult(intent, 4);
        }
    }

    private void clearCommentsData()
    {
        comments.clear();
        nearByComments.clear();
        recentsComments.clear();
        nearByOffset = 0;
        recentOffset = 0;
        commentsMap.clear();
    }

    private LocationListener getLocationListener()
    {
        return new LocationListener() {

            final NewFanWallActivity this$0;

            public void onLocationChanged(Location location)
            {
                currentLocation = location;
            }

            public void onProviderDisabled(String s)
            {
            }

            public void onProviderEnabled(String s)
            {
            }

            public void onStatusChanged(String s, int i, Bundle bundle)
            {
            }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
        };
    }

    private void handleInBackground()
    {
        Iterator iterator = comments.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s = ((CommentEntity)iterator.next()).getImageUrl();
            if (StringUtils.isNotEmpty(s))
            {
                imageFetcher.getCache().addBitmapToCache(s, BitmapDownloader.downloadBitmap(s));
            }
        } while (true);
        markerBorderBitmap = BitmapFactory.decodeResource(getResources(), com.biznessapps.layout.R.drawable.icon_border);
        defaultIconBitmap = BitmapFactory.decodeResource(getResources(), com.biznessapps.layout.R.drawable.portrait);
    }

    private void initControls()
    {
        mainContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.main_container);
        Object obj = (ViewGroup)findViewById(com.biznessapps.layout.R.id.buttons_container);
        commentsTitleView = (TextView)findViewById(com.biznessapps.layout.R.id.comments_button);
        mapTitleView = (TextView)findViewById(com.biznessapps.layout.R.id.location_button);
        photosTitleView = (TextView)findViewById(com.biznessapps.layout.R.id.gallery_button);
        commentsListView = (ListView)findViewById(com.biznessapps.layout.R.id.comments_list_view);
        galleryView = (GridView)findViewById(com.biznessapps.layout.R.id.gallery_view);
        recentsButton = (Button)findViewById(com.biznessapps.layout.R.id.recents_button);
        nearByButton = (Button)findViewById(com.biznessapps.layout.R.id.near_by_button);
        recentsButton.setText(com.biznessapps.layout.R.string.recent);
        nearByButton.setText(com.biznessapps.layout.R.string.near_by);
        commentsTitleView.setText(com.biznessapps.layout.R.string.comments);
        mapTitleView.setText(com.biznessapps.layout.R.string.location_title);
        photosTitleView.setText(com.biznessapps.layout.R.string.gallery_title);
        ViewGroup viewgroup = (ViewGroup)findViewById(com.biznessapps.layout.R.id.top_buttons_container);
        ((ViewGroup) (obj)).setBackgroundColor(settings.getButtonBgColor());
        viewgroup.setBackgroundColor(settings.getNavigationBarColor());
        ViewUtils.setBottomTabStyle(commentsTitleView);
        ViewUtils.setBottomTabStyle(mapTitleView);
        ViewUtils.setBottomTabStyle(photosTitleView);
        obj = (ImageButton)findViewById(com.biznessapps.layout.R.id.choose_login_account);
        CommonUtils.overrideImageColor(settings.getNavigationTextColor(), ((ImageButton) (obj)).getBackground());
        ViewUtils.setRootBgColor(mainContainer, settings);
        ((ImageButton) (obj)).setOnClickListener(new android.view.View.OnClickListener() {

            final NewFanWallActivity this$0;
            final SocialLoginPopupView val$socialAccessor;

            public void onClick(View view)
            {
                if (ViewUtils.checkGpsEnabling(NewFanWallActivity.this))
                {
                    socialAccessor.openLoginDialog();
                }
            }

            
            {
                this$0 = NewFanWallActivity.this;
                socialAccessor = socialloginpopupview;
                super();
            }
        });
        initLoadMoreButton();
        updateControls();
    }

    private void initListeners()
    {
        commentsTitleView.setOnClickListener(new android.view.View.OnClickListener() {

            final NewFanWallActivity this$0;

            public void onClick(View view)
            {
                usedTabType = 1;
                updateControls();
                openCommentsContainer();
            }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
        });
        mapTitleView.setOnClickListener(new android.view.View.OnClickListener() {

            final NewFanWallActivity this$0;

            public void onClick(View view)
            {
                usedTabType = 2;
                updateControls();
                openMapContainer();
            }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
        });
        photosTitleView.setOnClickListener(new android.view.View.OnClickListener() {

            final NewFanWallActivity this$0;

            public void onClick(View view)
            {
                usedTabType = 3;
                updateControls();
                openPhotosContainer();
            }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
        });
        nearByButton.setOnClickListener(new android.view.View.OnClickListener() {

            final NewFanWallActivity this$0;

            public void onClick(View view)
            {
                if (ViewUtils.checkGpsEnabling(NewFanWallActivity.this))
                {
                    isNearByUsed = true;
                    updateButtonsState(isNearByUsed);
                    loadContent();
                }
            }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
        });
        recentsButton.setOnClickListener(new android.view.View.OnClickListener() {

            final NewFanWallActivity this$0;

            public void onClick(View view)
            {
                isNearByUsed = false;
                updateButtonsState(isNearByUsed);
                loadContent();
            }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
        });
        recentsButton.performClick();
    }

    private void initLoadMoreButton()
    {
        loadMoreButtonContainer = (ViewGroup)findViewById(com.biznessapps.layout.R.id.load_more_button_container);
        loadMoreButton = LoadMoreBuilder.addLoadMoreButton(this, new Runnable() , settings);
        loadMoreButtonContainer.addView(loadMoreButton);
    }

    private void initLocation()
    {
        currentLocation = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        AppCore.getInstance().getLocationFinder().addLocationListener(getLocationListener());
    }

    private void loadContent()
    {
label0:
        {
            tabId = getIntent().getStringExtra("TAB_SPECIAL_ID");
            final Object url;
            Object obj;
            int i;
            if (isNearByUsed)
            {
                i = nearByOffset;
            } else
            {
                i = recentOffset;
            }
            obj = String.format("comment_list.php?app_code=%s&id=%s&tab_id=%s&count=%d&offset=%d", new Object[] {
                cacher().getAppCode(), "", tabId, Integer.valueOf(20), Integer.valueOf(i)
            });
            url = obj;
            if (isNearByUsed)
            {
                if (currentLocation == null)
                {
                    break label0;
                }
                url = (new StringBuilder()).append(((String) (obj))).append("&latitude=").append(currentLocation.getLatitude()).append("&longitude=").append(currentLocation.getLongitude()).toString();
            }
            obj = (List)commentsMap.get((new StringBuilder()).append(((String) (url))).append(isNearByUsed).toString());
            if (obj != null && !((List) (obj)).isEmpty())
            {
                if (isNearByUsed)
                {
                    url = nearByComments;
                } else
                {
                    url = recentsComments;
                }
                comments = ((List) (url));
                updateControlsWithData(this);
                return;
            } else
            {
                Object obj1 = new ArrayList();
                ((List) (obj1)).add(new WeakReference(recentsButton));
                ((List) (obj1)).add(new WeakReference(nearByButton));
                ((List) (obj1)).add(new WeakReference(commentsTitleView));
                ((List) (obj1)).add(new WeakReference(mapTitleView));
                ((List) (obj1)).add(new WeakReference(photosTitleView));
                loadMoreButtonContainer.setVisibility(8);
                commentsListView.setAdapter(null);
                obj1 = new LoadDataTaskExternal(this, ((List) (obj1)));
                ((LoadDataTaskExternal) (obj1)).setRequestUrl(((String) (url)));
                useCachingRunnable = new LoadDataRunnable();
                ((LoadDataTaskExternal) (obj1)).setCanUseCachingRunnable(useCachingRunnable);
                handleInBgRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                    final NewFanWallActivity this$0;

                    public void run()
                    {
                        handleInBackground();
                    }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
                };
                ((LoadDataTaskExternal) (obj1)).setHandleInBgRunnable(handleInBgRunnable);
                parseDataRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                    final NewFanWallActivity this$0;
                    final String val$url;

                    public void run()
                    {
                        setCorrectData(tryParseData(getDataToParse(), url));
                    }

            
            {
                this$0 = NewFanWallActivity.this;
                url = s;
                super();
            }
                };
                ((LoadDataTaskExternal) (obj1)).setParseDataRunnable(parseDataRunnable);
                updateControlsRunnable = new com.biznessapps.api.LoadDataTaskExternal.LoadDataRunnable() {

                    final NewFanWallActivity this$0;

                    public void run()
                    {
                        updateControlsWithData(getActivity());
                    }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
                };
                ((LoadDataTaskExternal) (obj1)).setUpdateControlsRunnable(updateControlsRunnable);
                ((LoadDataTaskExternal) (obj1)).launch();
                return;
            }
        }
        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.location_not_defined));
    }

    private void openCommentsContainer()
    {
        boolean flag = false;
        if (comments == null || comments.isEmpty() || StringUtils.isEmpty(((CommentEntity)comments.get(0)).getId()))
        {
            flag = true;
        }
        if (flag)
        {
            commentsListView.setAdapter(null);
            ViewUtils.showShortToast(this, com.biznessapps.layout.R.string.nothing_found);
            return;
        } else
        {
            NewFanWallAdapter newfanwalladapter = new NewFanWallAdapter(getApplicationContext(), comments, true, settings);
            commentsListView.setAdapter(newfanwalladapter);
            commentsListView.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

                final NewFanWallActivity this$0;

                public void onItemClick(AdapterView adapterview, View view, int i, long l)
                {
                    adapterview = (CommentEntity)adapterview.getAdapter().getItem(i);
                    if (adapterview != null)
                    {
                        view = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("FanWallViewController"));
                        view.putExtra("parent_id", adapterview.getId());
                        String s = getIntent().getStringExtra("TAB_SPECIAL_ID");
                        view.putExtra("TAB_FRAGMENT", "FanWallViewController");
                        view.putExtra("TAB_LABEL", getString(com.biznessapps.layout.R.string.replies));
                        view.putExtra("HAS_CHILDS", false);
                        view.putExtra("USE_V2_API", true);
                        view.putExtra("ITEM_EXTRA", adapterview);
                        view.putExtra("TAB_SPECIAL_ID", s);
                        startActivityForResult(view, 0);
                    }
                }

            
            {
                this$0 = NewFanWallActivity.this;
                super();
            }
            });
            return;
        }
    }

    private void openMapContainer()
    {
        addPins(comments);
    }

    private void openPhotosContainer()
    {
        Object obj = new ArrayList();
        final GalleryData galleryData = comments.iterator();
        do
        {
            if (!galleryData.hasNext())
            {
                break;
            }
            CommentEntity commententity = (CommentEntity)galleryData.next();
            if (StringUtils.isNotEmpty(commententity.getUploadImageUrl()))
            {
                ((List) (obj)).add(commententity.getUploadImageUrl());
            }
        } while (true);
        galleryData = new GalleryData();
        galleryData.setImageItems(((List) (obj)));
        obj = new ImageAdapter(getApplicationContext(), galleryData.getItems(), com.biznessapps.layout.R.layout.gallery_item_layout, settings);
        galleryView.setAdapter(((android.widget.ListAdapter) (obj)));
        obj = new android.widget.AdapterView.OnItemClickListener() {

            final NewFanWallActivity this$0;
            final GalleryData val$galleryData;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (i >= 0 && i < galleryData.getItems().size())
                {
                    adapterview = (com.biznessapps.gallery.GalleryData.Item)galleryData.getItems().get(i);
                    view = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
                    GalleryManager.getInstance().setGalleryItems(galleryData.getItems());
                    view.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                    view.putExtra("gallery_preview_extra", adapterview);
                    view.putExtra("gallery_current_position_extra", i);
                    startActivity(view);
                }
            }

            
            {
                this$0 = NewFanWallActivity.this;
                galleryData = gallerydata;
                super();
            }
        };
        galleryView.setOnItemClickListener(((android.widget.AdapterView.OnItemClickListener) (obj)));
    }

    private boolean tryParseData(String s, String s1)
    {
        boolean flag3 = false;
        List list = JsonParser.parseFanComments(s);
        boolean flag;
        if (isNearByUsed)
        {
            s = nearByComments;
        } else
        {
            s = recentsComments;
        }
        comments = s;
        if (!list.isEmpty())
        {
            setBgUrl(((CommentEntity)list.get(0)).getBackground());
        }
        if (!list.isEmpty() && !StringUtils.isEmpty(((CommentEntity)list.get(0)).getId()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            comments.addAll(list);
            commentsMap.put((new StringBuilder()).append(s1).append(isNearByUsed).toString(), comments);
        }
        if (isNearByUsed)
        {
            boolean flag1;
            if (flag && list.size() == 20)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            hasNearByComments = flag1;
            return true;
        }
        boolean flag2 = flag3;
        if (flag)
        {
            flag2 = flag3;
            if (list.size() == 20)
            {
                flag2 = true;
            }
        }
        hasRecentComments = flag2;
        return true;
    }

    private void updateButtonsState(boolean flag)
    {
        if (flag)
        {
            recentsButton.setTextColor(settings.getButtonBgColor());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), recentsButton.getBackground());
            nearByButton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), nearByButton.getBackground());
            return;
        } else
        {
            recentsButton.setTextColor(settings.getButtonTextColor());
            CommonUtils.overrideImageColor(settings.getButtonBgColor(), recentsButton.getBackground());
            nearByButton.setTextColor(settings.getButtonBgColor());
            CommonUtils.overrideImageColor(settings.getButtonTextColor(), nearByButton.getBackground());
            return;
        }
    }

    private void updateControls()
    {
        byte byte0 = 8;
        Object obj = loadMoreButtonContainer;
        int i;
        boolean flag;
        if (isNearByUsed ? hasNearByComments : hasRecentComments)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((ViewGroup) (obj)).setVisibility(i);
        if (usedTabType == 2)
        {
            loadMoreButtonContainer.setVisibility(8);
        }
        obj = commentsListView;
        if (usedTabType == 1)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        ((ListView) (obj)).setVisibility(i);
        if (usedTabType == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        setMapVisibility(flag);
        obj = galleryView;
        i = byte0;
        if (usedTabType == 3)
        {
            i = 0;
        }
        ((GridView) (obj)).setVisibility(i);
        obj = commentsTitleView;
        if (usedTabType == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((TextView) (obj)).setSelected(flag);
        obj = mapTitleView;
        if (usedTabType == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((TextView) (obj)).setSelected(flag);
        obj = photosTitleView;
        if (usedTabType == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        ((TextView) (obj)).setSelected(flag);
        ViewUtils.updateTextViewIconState(new TextView[] {
            commentsTitleView, mapTitleView, photosTitleView
        });
    }

    private void updateControlsWithData(Activity activity)
    {
        if (usedTabType != 1) goto _L2; else goto _L1
_L1:
        commentsTitleView.performClick();
_L4:
        applyBackground();
        return;
_L2:
        if (usedTabType == 3)
        {
            photosTitleView.performClick();
        } else
        if (usedTabType == 2)
        {
            mapTitleView.performClick();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.new_fan_wall_layout;
    }

    protected MarkerOptions getMarkerOptions(LatLng latlng, MapEntity mapentity)
    {
        Bitmap bitmap = imageFetcher.getImageFromCache(mapentity.getImageUrl());
        mapentity = bitmap;
        if (bitmap == null)
        {
            mapentity = defaultIconBitmap;
        }
        mapentity = MapUtils.createComboBitmap(markerBorderBitmap, mapentity);
        return (new MarkerOptions()).position(latlng).icon(BitmapDescriptorFactory.fromBitmap(mapentity));
    }

    public ViewGroup getProgressBarContainer()
    {
        return (ViewGroup)findViewById(com.biznessapps.layout.R.id.progress_bar_container);
    }

    public View getViewForBg()
    {
        return mainContainer;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        switch (j)
        {
        default:
            return;

        case 4: // '\004'
            clearCommentsData();
            break;
        }
        loadContent();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLocation();
        initControls();
        initListeners();
    }

    protected void onDestroy()
    {
        super.onDestroy();
        commentsMap.clear();
        AppCore.getInstance().getLocationFinder().removeLocationListener(getLocationListener());
    }

    protected void onResume()
    {
        super.onResume();
        AppCore.getInstance().getLocationFinder().startSearching();
        applyBackground();
    }

    protected void onStop()
    {
        super.onStop();
        AppCore.getInstance().getLocationFinder().stopSearching();
    }





/*
    static boolean access$102(NewFanWallActivity newfanwallactivity, boolean flag)
    {
        newfanwallactivity.isNearByUsed = flag;
        return flag;
    }

*/





/*
    static Location access$1402(NewFanWallActivity newfanwallactivity, Location location)
    {
        newfanwallactivity.currentLocation = location;
        return location;
    }

*/


/*
    static int access$212(NewFanWallActivity newfanwallactivity, int i)
    {
        i = newfanwallactivity.nearByOffset + i;
        newfanwallactivity.nearByOffset = i;
        return i;
    }

*/


/*
    static int access$312(NewFanWallActivity newfanwallactivity, int i)
    {
        i = newfanwallactivity.recentOffset + i;
        newfanwallactivity.recentOffset = i;
        return i;
    }

*/



/*
    static int access$502(NewFanWallActivity newfanwallactivity, int i)
    {
        newfanwallactivity.usedTabType = i;
        return i;
    }

*/





    // Unreferenced inner class com/biznessapps/fan_wall/NewFanWallActivity$1

/* anonymous class */
    class _cls1 extends OnCommonSocialLoginListener
    {

        final NewFanWallActivity this$0;

        public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
        {
            addComment(commonsocialnetworkhandler.getSocialType());
        }

            
            {
                this$0 = NewFanWallActivity.this;
                super(context);
            }
    }

}
