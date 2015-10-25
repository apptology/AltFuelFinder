// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Toast;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.DataSource;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.flickr.GalleryAlbum;
import com.biznessapps.flickr.Photo;
import com.biznessapps.flickr.Photoset;
import com.biznessapps.flickr.User;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.PicasaUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryData, GalleryManager, GalleryActivity

public class GalleryFragment extends CommonFragment
{

    private GalleryData galleryData;
    private boolean isFlickrUsed;
    private boolean isInstagramUsed;
    private boolean isPicasaUsed;
    private String tabId;

    public GalleryFragment()
    {
    }

    private void addInstagramImages(GalleryData gallerydata)
    {
        if (StringUtils.isNotEmpty(gallerydata.getApiKey()) && StringUtils.isNotEmpty(gallerydata.getUserId()))
        {
            for (String s = String.format("https://api.instagram.com/v1/users/%s/media/recent/?access_token=%s", new Object[] {
    gallerydata.getUserId(), gallerydata.getApiKey()
}); !StringUtils.isEmpty(s); s = JsonParser.parseInstagramImages(gallerydata, DataSource.getInstance().getData(s, false))) { }
        }
    }

    private void defineFlickrAlbums(boolean flag, String s, String s1)
    {
        ArrayList arraylist = new ArrayList();
        if (flag)
        {
            s1 = String.format("https://api.flickr.com/services/rest/?method=flickr.photosets.getList&api_key=%s&user_id=%s&per_page=500&format=json&nojsoncallback=1", new Object[] {
                s, s1
            });
            s1 = JsonParser.getPhotosets(DataSource.getInstance().getData(s1, false));
            if (!s1.isEmpty())
            {
                Iterator iterator = s1.iterator();
                do
                {
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    Photoset photoset = (Photoset)iterator.next();
                    GalleryAlbum galleryalbum = new GalleryAlbum();
                    s1 = String.format("https://api.flickr.com/services/rest/?method=flickr.photosets.getPhotos&api_key=%s&photoset_id=%s&extras=url_m&per_page=500&format=json&nojsoncallback=1", new Object[] {
                        s, photoset.getId()
                    });
                    Object obj = JsonParser.getPhotosInPhotoset(DataSource.getInstance().getData(s1, false));
                    if (obj != null && ((Photoset) (obj)).getPhotos() != null)
                    {
                        s1 = new ArrayList();
                        for (obj = ((Photoset) (obj)).getPhotos().iterator(); ((Iterator) (obj)).hasNext();)
                        {
                            Photo photo = (Photo)((Iterator) (obj)).next();
                            if (StringUtils.isNotEmpty(photo.getUrl()))
                            {
                                s1.add(photo.getUrl());
                            } else
                            {
                                s1.add(String.format("https://farm%s.staticflickr.com/%s/%s_%s.jpg", new Object[] {
                                    photo.getFarm(), photo.getServer(), photo.getId(), photo.getSecret()
                                }));
                            }
                        }

                        if (s1.isEmpty())
                        {
                            s1.add(String.format("https://farm%s.static.flickr.com/%s/%s_%s_s.jpg", new Object[] {
                                photoset.getFarm(), photoset.getServer(), photoset.getPrimary(), photoset.getSecret()
                            }));
                        }
                        galleryalbum.setUrls(s1);
                        if (photoset.getTitle() != null)
                        {
                            s1 = photoset.getTitle();
                        } else
                        {
                            s1 = "";
                        }
                        galleryalbum.setTitle(s1);
                        if (photoset.getDescription() != null)
                        {
                            s1 = photoset.getDescription();
                        } else
                        {
                            s1 = "";
                        }
                        galleryalbum.setDescription(s1);
                        arraylist.add(galleryalbum);
                    }
                } while (true);
            }
        } else
        {
            s = String.format("https://api.flickr.com/services/rest/?method=flickr.people.getPhotos&api_key=%s&user_id=%s&format=json&nojsoncallback=1", new Object[] {
                s, s1
            });
            s = JsonParser.getPhotoStream(DataSource.getInstance().getData(s, false));
            s1 = new GalleryAlbum();
            s1.setUseCoverflow(galleryData.isUseCoverflow());
            s1.setItems(s);
            arraylist.add(s1);
        }
        galleryData.setAlbums(arraylist);
    }

    private void definePicasaAlbums(String s)
    {
        ArrayList arraylist = new ArrayList();
        List list = PicasaUtils.parseGalleryList(PicasaUtils.getPicasaData((new StringBuilder()).append("http://picasaweb.google.com/data/feed/api/user/").append(s).toString()));
        Object obj;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); arraylist.addAll(((java.util.Collection) (obj))))
        {
            GalleryAlbum galleryalbum = (GalleryAlbum)iterator.next();
            obj = String.format("http://picasaweb.google.com/data/feed/api/user/%s/albumid/%s?alt=json&kind=photo", new Object[] {
                s, galleryalbum.getId()
            });
            obj = PicasaUtils.parsePhotosList(DataSource.getInstance().getData(((String) (obj)), false));
            galleryalbum.setUrls(((List) (obj)));
        }

        galleryData.setAlbums(list);
    }

    private User findFlickrUser(String s, String s1)
    {
        if (StringUtils.isEmpty(s) || StringUtils.isEmpty(s1))
        {
            return null;
        } else
        {
            s = String.format("https://api.flickr.com/services/rest/?method=flickr.people.findByEmail&api_key=%s&find_email=%s&per_page=500&format=json&nojsoncallback=1", new Object[] {
                s, s1
            });
            return JsonParser.parseFlickrUser(DataSource.getInstance().getData(s, false));
        }
    }

    protected boolean canUseCachedData()
    {
        if (isPicasaUsed)
        {
            galleryData = (GalleryData)cacher().getData((new StringBuilder()).append("PICASA_DATA_PROPERTY").append(tabId).toString());
        } else
        if (isFlickrUsed)
        {
            galleryData = (GalleryData)cacher().getData((new StringBuilder()).append("FLICKR_DATA_PROPERTY").append(tabId).toString());
        } else
        if (isInstagramUsed)
        {
            galleryData = (GalleryData)cacher().getData((new StringBuilder()).append("INSTAGRAM_DATA_PROPERTY").append(tabId).toString());
        } else
        {
            galleryData = (GalleryData)cacher().getData((new StringBuilder()).append("GALLERY_DATA_PROPERTY").append(tabId).toString());
        }
        return galleryData != null;
    }

    protected String getRequestUrl()
    {
        String s;
        if (isPicasaUsed)
        {
            s = "picasa.php?app_code=%s&tab_id=%s";
        } else
        if (isFlickrUsed)
        {
            s = "flickr.php?app_code=%s&tab_id=%s";
        } else
        if (isInstagramUsed)
        {
            s = "instagram.php?app_code=%s&tab_id=%s";
        } else
        {
            s = "gallery_list.php?app_code=%s&tab_id=%s";
        }
        return String.format(s, new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    public boolean isFlickrUsed()
    {
        return isFlickrUsed;
    }

    public boolean isInstagramUsed()
    {
        return isInstagramUsed;
    }

    public boolean isPicasaUsed()
    {
        return isPicasaUsed;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.gallery_layout, null);
        initSettingsData();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        ViewUtils.setRootBgColor(root, settings);
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    public void setFlickrUsed(boolean flag)
    {
        isFlickrUsed = flag;
    }

    public void setInstagramUsed(boolean flag)
    {
        isInstagramUsed = flag;
    }

    public void setPicasaUsed(boolean flag)
    {
        isPicasaUsed = flag;
    }

    protected boolean tryParseData(String s)
    {
        if (isPicasaUsed)
        {
            galleryData = JsonParser.parsePicasaData(s);
            definePicasaAlbums(galleryData.getUserId());
            return cacher().saveData((new StringBuilder()).append("PICASA_DATA_PROPERTY").append(tabId).toString(), galleryData);
        }
        if (isInstagramUsed)
        {
            galleryData = JsonParser.parseInstagramData(s);
            addInstagramImages(galleryData);
            return cacher().saveData((new StringBuilder()).append("INSTAGRAM_DATA_PROPERTY").append(tabId).toString(), galleryData);
        }
        if (isFlickrUsed)
        {
            galleryData = JsonParser.parseFlickrData(s);
            String s1 = galleryData.getApiKey();
            String s2 = galleryData.getUserId();
            User user = findFlickrUser(s1, s2);
            s = user;
            if (user == null)
            {
                s1 = "ddcec7e1e0a8ce1e598fb3f3edfdfda9";
                User user1 = findFlickrUser("ddcec7e1e0a8ce1e598fb3f3edfdfda9", s2);
                s = user1;
                if (user1 == null)
                {
                    s1 = "684dbcf343eead1f82a18c1c09859df9";
                    s = findFlickrUser("684dbcf343eead1f82a18c1c09859df9", s2);
                }
            }
            if (s != null)
            {
                defineFlickrAlbums(galleryData.isDisplayPhotosets(), s1, s.getId());
            }
            return cacher().saveData((new StringBuilder()).append("FLICKR_DATA_PROPERTY").append(tabId).toString(), galleryData);
        } else
        {
            galleryData = JsonParser.parseGalleryMetadata(s);
            return cacher().saveData((new StringBuilder()).append("GALLERY_DATA_PROPERTY").append(tabId).toString(), galleryData);
        }
    }

    protected void updateControlsWithData(Activity activity)
    {
        if (galleryData != null)
        {
            if (!isInstagramUsed)
            {
                Intent intent = new Intent(getApplicationContext(), ActivitySelector.getActivityClass("GALLERY_LISTVIEW_FRAGMENT"));
                String s = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
                intent.putExtras(activity.getIntent());
                GalleryManager.getInstance().setGalleryData(galleryData);
                intent.putExtra("TAB_SPECIAL_ID", s);
                intent.putExtra("BG_URL_EXTRA", bgUrl);
                intent.putExtra("TAB_FRAGMENT", "GALLERY_LISTVIEW_FRAGMENT");
                activity.startActivity(intent);
                activity.finish();
                return;
            } else
            {
                Intent intent1 = new Intent(activity.getApplicationContext(), com/biznessapps/gallery/GalleryActivity);
                GalleryManager.getInstance().setGalleryData(galleryData);
                intent1.putExtra("BG_URL_EXTRA", bgUrl);
                intent1.putExtras(activity.getIntent());
                activity.startActivity(intent1);
                activity.finish();
                return;
            }
        } else
        {
            Toast.makeText(getApplicationContext(), com.biznessapps.layout.R.string.nothing_found, 1);
            return;
        }
    }
}
