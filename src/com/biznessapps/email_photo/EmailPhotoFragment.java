// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.email_photo;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Button;
import android.widget.GridView;
import android.widget.TextView;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.adapters.AbstractAdapter;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.gallery.GalleryManager;
import com.biznessapps.gallery.GalleryPreviewActivity;
import com.biznessapps.storage.StorageKeeper;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.json.JsonParser;
import com.biznessapps.widgets.LoaderImageView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.email_photo:
//            EmailPhotoEntity

public class EmailPhotoFragment extends CommonFragment
{
    public class EmailPhotoGallery extends AbstractAdapter
    {

        final EmailPhotoFragment this$0;

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            String s;
            if (view == null)
            {
                view = inflater.inflate(layoutItemResourceId, null);
                viewgroup = new com.biznessapps.common.adapters.ListItemHolder.GalleryItem();
                viewgroup.setLoaderImage((LoaderImageView)view.findViewById(com.biznessapps.layout.R.id.image_view));
                view.setTag(viewgroup);
            } else
            {
                viewgroup = (com.biznessapps.common.adapters.ListItemHolder.GalleryItem)view.getTag();
            }
            s = (String)getItem(i);
            try
            {
                Uri.parse(s);
                com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                imageloadparams.setView(viewgroup.getLoaderImage());
                imageloadparams.setTint(null);
                imageloadparams.setUrl(s);
                imageloadparams.setImageSrc(true);
                imageloadparams.setImageType(2);
                imageloadparams.setImageFormType(4);
                viewgroup.getLoaderImage().setImageDrawable(s, imageloadparams);
            }
            // Misplaced declaration of an exception variable
            catch (ViewGroup viewgroup)
            {
                StorageKeeper.instance().removePhotos(s);
                return view;
            }
            return view;
        }

        public EmailPhotoGallery(Context context, List list, UiSettings uisettings)
        {
            this$0 = EmailPhotoFragment.this;
            super(context, list, com.biznessapps.layout.R.layout.gallery_item_layout, uisettings);
        }
    }


    private static final String EMAIL_PHOTO_IMAGE = "email_photo_image%s.jpg";
    private Button emailPhotoButton;
    private TextView emailPhotoTextView;
    private EmailPhotoEntity info;
    private File photoImage;
    private String photoName;
    private String selectedImagePath;
    private String tabId;

    public EmailPhotoFragment()
    {
    }

    private void emailPhoto()
    {
        ViewUtils.openChoosePhotoDialog(getHoldActivity(), new Runnable() {

            final EmailPhotoFragment this$0;

            public void run()
            {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                if ("mounted".equals(Environment.getExternalStorageState()))
                {
                    photoName = String.format("email_photo_image%s.jpg", new Object[] {
                        Long.valueOf(System.currentTimeMillis())
                    });
                    photoImage = new File(Environment.getExternalStorageDirectory(), photoName);
                    intent.putExtra("output", Uri.fromFile(photoImage));
                    startActivityForResult(intent, 2);
                    return;
                } else
                {
                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sdcard_missed));
                    return;
                }
            }

            
            {
                this$0 = EmailPhotoFragment.this;
                super();
            }
        }, this);
    }

    private void initListeners()
    {
        emailPhotoButton.setOnClickListener(new android.view.View.OnClickListener() {

            final EmailPhotoFragment this$0;

            public void onClick(View view)
            {
                emailPhoto();
            }

            
            {
                this$0 = EmailPhotoFragment.this;
                super();
            }
        });
    }

    private void initViews()
    {
        Object obj = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.email_header_container);
        ViewUtils.setGlobalBgColor(((View) (obj)), settings);
        ((ViewGroup) (obj)).getBackground().setAlpha(120);
        emailPhotoButton = (Button)root.findViewById(com.biznessapps.layout.R.id.email_photo_button);
        emailPhotoTextView = (TextView)root.findViewById(com.biznessapps.layout.R.id.email_photo_description);
        emailPhotoButton.setTextColor(settings.getButtonTextColor());
        emailPhotoTextView.setTextColor(settings.getFeatureTextColor());
        CommonUtils.overrideImageColor(settings.getButtonBgColor(), emailPhotoButton.getBackground());
        ViewUtils.setRootBgColor(root.findViewById(com.biznessapps.layout.R.id.email_photo_root), settings);
        obj = (TextView)root.findViewById(com.biznessapps.layout.R.id.photo_coverflow_header);
        ((TextView) (obj)).setBackgroundColor(settings.getTransparentSectionBarColor());
        ((TextView) (obj)).setTextColor(settings.getSectionTextColor());
        ((TextView) (obj)).setText(com.biznessapps.layout.R.string.recent_photos);
        emailPhotoButton.setText(com.biznessapps.layout.R.string.email_photo_title);
        obj = (GridView)root.findViewById(com.biznessapps.layout.R.id.gallery_view);
        updatePhotoGallery();
        ((GridView) (obj)).setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final EmailPhotoFragment this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                adapterview = new Intent(getApplicationContext(), com/biznessapps/gallery/GalleryPreviewActivity);
                view = new ArrayList();
                com.biznessapps.gallery.GalleryData.Item item;
                for (Iterator iterator = StorageKeeper.instance().getEmailedPhotos().iterator(); iterator.hasNext(); view.add(item))
                {
                    String s = (String)iterator.next();
                    item = new com.biznessapps.gallery.GalleryData.Item();
                    item.setFullUrl(s);
                    item.setIsFile(true);
                }

                GalleryManager.getInstance().setGalleryItems(view);
                adapterview.putExtra("TAB_FRAGMENT", "GALLERY_PREVIEW_FRAGMENT");
                adapterview.putExtra("gallery_preview_extra", (Serializable)view.get(i));
                adapterview.putExtra("gallery_current_position_extra", i);
                startActivity(adapterview);
            }

            
            {
                this$0 = EmailPhotoFragment.this;
                super();
            }
        });
    }

    private boolean isEmptyData(EmailPhotoEntity emailphotoentity)
    {
label0:
        {
            if (emailphotoentity != null)
            {
                boolean flag = StringUtils.isEmpty(emailphotoentity.getDescription());
                boolean flag1 = StringUtils.isEmpty(emailphotoentity.getEmail());
                boolean flag2 = StringUtils.isEmpty(emailphotoentity.getSubject());
                if (!flag || !flag1 || !flag2)
                {
                    break label0;
                }
            }
            return true;
        }
        return false;
    }

    private void updatePhotoGallery()
    {
        EmailPhotoGallery emailphotogallery = new EmailPhotoGallery(getApplicationContext(), StorageKeeper.instance().getEmailedPhotos(), settings);
        ((GridView)root.findViewById(com.biznessapps.layout.R.id.gallery_view)).setAdapter(emailphotogallery);
    }

    protected boolean canUseCachedData()
    {
        info = (EmailPhotoEntity)cacher().getData((new StringBuilder()).append("EMAIL_PHOTO_INFO_PROPERTY").append(tabId).toString());
        return info != null;
    }

    protected String defineBgUrl(Intent intent)
    {
        if (info != null)
        {
            return info.getImageUrl();
        } else
        {
            return null;
        }
    }

    protected String getRequestUrl()
    {
        return String.format("email_photo.php?app_code=%s&tab_id=%s", new Object[] {
            cacher().getAppCode(), tabId
        });
    }

    protected View getViewForBg()
    {
        return root.findViewById(com.biznessapps.layout.R.id.email_photo_root);
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        info = (EmailPhotoEntity)cacher().getData((new StringBuilder()).append("EMAIL_PHOTO_INFO_PROPERTY").append(tabId).toString());
        if (-1 == j && info != null)
        {
            String s = getString(com.biznessapps.layout.R.string.picture_sharing);
            switch (i)
            {
            default:
                super.onActivityResult(i, j, intent);
                return;

            case 2: // '\002'
                intent = new File(Environment.getExternalStorageDirectory(), photoName);
                StorageKeeper.instance().addPhotos(intent.getPath());
                updatePhotoGallery();
                ViewUtils.email(getHoldActivity(), info.getEmail(), info.getSubject(), s, intent);
                return;

            case 3: // '\003'
                selectedImagePath = CommonUtils.getPath(intent.getData(), getHoldActivity());
                break;
            }
            if (selectedImagePath != null)
            {
                intent = new File(selectedImagePath);
                StorageKeeper.instance().addPhotos(selectedImagePath);
                updatePhotoGallery();
                ViewUtils.email(getHoldActivity(), info.getEmail(), info.getSubject(), s, intent);
                return;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.email_photo_layout, null);
        initSettingsData();
        ViewUtils.setRootBgColor(root, settings);
        initViews();
        initListeners();
        loadData();
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    protected void preDataLoading(Activity activity)
    {
        tabId = activity.getIntent().getStringExtra("TAB_SPECIAL_ID");
    }

    protected boolean tryParseData(String s)
    {
        info = JsonParser.parseEmailPhoto(s);
        return cacher().saveData((new StringBuilder()).append("EMAIL_PHOTO_INFO_PROPERTY").append(tabId).toString(), info);
    }

    protected void updateControlsWithData(Activity activity)
    {
        super.updateControlsWithData(activity);
        if (isEmptyData(info))
        {
            ViewUtils.showCustomToast(activity.getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
        } else
        if (StringUtils.isNotEmpty(info.getDescription()))
        {
            emailPhotoTextView.setText(info.getDescription());
            return;
        }
    }




/*
    static String access$102(EmailPhotoFragment emailphotofragment, String s)
    {
        emailphotofragment.photoName = s;
        return s;
    }

*/



/*
    static File access$202(EmailPhotoFragment emailphotofragment, File file)
    {
        emailphotofragment.photoImage = file;
        return file;
    }

*/
}
