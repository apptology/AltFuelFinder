// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonShareableFragmentActivity;
import com.biznessapps.common.social.ui.OnSharingCompletedListener;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.utils.BlurEffectUtils;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.ExtendedViewPager;
import com.biznessapps.widgets.SmartWebView;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryManager

public class GalleryPreviewActivity extends CommonShareableFragmentActivity
{
    private class TouchImageAdapter extends PagerAdapter
    {

        private View mCurrentView;
        final GalleryPreviewActivity this$0;

        public void destroyItem(ViewGroup viewgroup, int i, Object obj)
        {
            viewgroup.removeView((View)obj);
        }

        public int getCount()
        {
            return galleryItems.size();
        }

        public View getCurrentView()
        {
            return mCurrentView;
        }

        public View instantiateItem(ViewGroup viewgroup, int i)
        {
            GalleryData.Item item = (GalleryData.Item)galleryItems.get(i);
            ViewGroup viewgroup1 = (ViewGroup)ViewUtils.loadLayout(GalleryPreviewActivity.this, com.biznessapps.layout.R.layout.gallery_preview_item_layout);
            setImage(item, viewgroup1);
            viewgroup.addView(viewgroup1, -1, -1);
            vgOverlay.setBackgroundColor(item.getBGOverlayColor());
            if (!StringUtils.isEmpty(item.getBGUrl()))
            {
                viewgroup = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
                com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams();
                imageloadparams.setImageSrc(true);
                imageloadparams.setUrl(item.getBGUrl());
                imageloadparams.setView(ivBackground);
                imageloadparams.setImageType(3);
                imageloadparams.setLoadCallback(item. new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

                    final TouchImageAdapter this$1;
                    final GalleryData.Item val$item;

                    public void onImageLoaded(String s, Bitmap bitmap, View view)
                    {
                        s = bitmap;
                        if (item.getBGBlueEffectRadius() != 0)
                        {
                            s = BlurEffectUtils.addBlurEffect(bitmap, item.getBGBlueEffectRadius());
                        }
                        ivBackground.setImageBitmap(s);
                    }

            
            {
                this$1 = final_touchimageadapter;
                item = GalleryData.Item.this;
                super();
            }
                });
                viewgroup.loadImage(imageloadparams);
                return viewgroup1;
            } else
            {
                vgRoot.setBackgroundDrawable(null);
                return viewgroup1;
            }
        }

        public volatile Object instantiateItem(ViewGroup viewgroup, int i)
        {
            return instantiateItem(viewgroup, i);
        }

        public boolean isViewFromObject(View view, Object obj)
        {
            return view == obj;
        }

        public void setPrimaryItem(ViewGroup viewgroup, int i, Object obj)
        {
            mCurrentView = (View)obj;
        }

        private TouchImageAdapter()
        {
            this$0 = GalleryPreviewActivity.this;
            super();
        }

    }


    private static final int DELAY_TIME = 5000;
    private static final int SWITCH_IMAGE_EVENT = 1;
    private int currentPos;
    private Handler eventHandler;
    private List galleryItems;
    private com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback imageLoadCallback;
    private boolean isImageLoaded;
    private boolean isSlideShowMode;
    private ImageView ivBackground;
    private TouchImageAdapter pagerAdapter;
    private ImageView shareButton;
    private ViewGroup vgOverlay;
    private ViewGroup vgRoot;
    private ExtendedViewPager viewPager;
    private List webViewList;

    public GalleryPreviewActivity()
    {
        currentPos = 0;
        isImageLoaded = false;
        webViewList = new ArrayList();
        imageLoadCallback = new com.biznessapps.utils.google.caching.ImageWorker.ImageLoadCallback() {

            final GalleryPreviewActivity this$0;

            public void onImageLoaded(String s, Bitmap bitmap, View view)
            {
                if (bitmap != null && !bitmap.isRecycled())
                {
                    ((ImageView)view).setImageBitmap(bitmap);
                    isImageLoaded = true;
                } else
                {
                    isImageLoaded = false;
                }
                ((ProgressBar)((ViewGroup)view.getParent()).findViewById(com.biznessapps.layout.R.id.progressBar)).setVisibility(4);
                updateUI();
            }

            
            {
                this$0 = GalleryPreviewActivity.this;
                super();
            }
        };
    }

    private void initSlideShow()
    {
        eventHandler = new Handler(getMainLooper()) {

            final GalleryPreviewActivity this$0;

            public void handleMessage(Message message)
            {
                switch (message.what)
                {
                default:
                    return;

                case 1: // '\001'
                    viewPager.setCurrentItem(currentPos);
                    break;
                }
                sendChangeImageMessage(5000);
                if (currentPos < galleryItems.size() - 1)
                {
                    int i = 
// JavaClassFileOutputException: get_constant: invalid tag

            
            {
                this$0 = GalleryPreviewActivity.this;
                super(looper);
            }
        };
        currentPos = 0;
        sendChangeImageMessage(5000);
    }

    private void sendChangeImageMessage(int i)
    {
        if (eventHandler != null)
        {
            Message message = eventHandler.obtainMessage(1);
            eventHandler.removeMessages(1);
            eventHandler.sendMessageDelayed(message, i);
        }
    }

    private void setImage(GalleryData.Item item, final ViewGroup imageTextWebView)
    {
        Object obj = (ProgressBar)imageTextWebView.findViewById(com.biznessapps.layout.R.id.progressBar);
        ((ProgressBar) (obj)).setVisibility(4);
        if (item != null)
        {
            isImageLoaded = false;
            ImageView imageview = (ImageView)imageTextWebView.findViewById(com.biznessapps.layout.R.id.preview_image_view);
            imageTextWebView = (SmartWebView)imageTextWebView.findViewById(com.biznessapps.layout.R.id.gallery_text_preview);
            webViewList.add(imageTextWebView);
            String s = item.getPreviewUrl();
            ((ProgressBar) (obj)).setVisibility(0);
            obj = AppCore.getInstance().getImageFetcherAccessor().getImageFetcher();
            com.biznessapps.utils.google.caching.ImageWorker.ImageLoadParams imageloadparams = new ImageLoadParams();
            imageloadparams.setImageSrc(true);
            imageloadparams.setUrl(s);
            imageloadparams.setView(imageview);
            imageloadparams.setImageType(3);
            imageloadparams.setLoadCallback(imageLoadCallback);
            if (item.isFile())
            {
                imageloadparams.setImageFormType(4);
            }
            imageTextWebView.setTag(item);
            imageview.setTag(item);
            ((ImageFetcher) (obj)).loadImage(imageloadparams);
            if (StringUtils.isNotEmpty(item.getInfo()))
            {
                imageTextWebView.setVisibility(0);
                imageTextWebView.loadDataWithBaseURL(null, item.getInfo().replace("<body>", "<body bgcolor=\"#000000\" text=\"#ffffff\">").replace("<p>", "<p align=\"center|justify\">"), "text/html", "utf-8", null);
            } else
            {
                imageTextWebView.setVisibility(8);
            }
            imageview.setOnClickListener(new android.view.View.OnClickListener() {

                final GalleryPreviewActivity this$0;
                final SmartWebView val$imageTextWebView;

                public void onClick(View view)
                {
                    if (StringUtils.isNotEmpty(((GalleryData.Item)view.getTag()).getInfo()) && imageTextWebView.getVisibility() == 8)
                    {
                        imageTextWebView.setVisibility(0);
                        return;
                    } else
                    {
                        imageTextWebView.setVisibility(8);
                        return;
                    }
                }

            
            {
                this$0 = GalleryPreviewActivity.this;
                imageTextWebView = smartwebview;
                super();
            }
            });
            imageTextWebView.setOnClickListener(new android.view.View.OnClickListener() {

                final GalleryPreviewActivity this$0;
                final SmartWebView val$imageTextWebView;

                public void onClick(View view)
                {
                    if (StringUtils.isNotEmpty(((GalleryData.Item)view.getTag()).getInfo()) && imageTextWebView.getVisibility() == 8)
                    {
                        imageTextWebView.setVisibility(0);
                        return;
                    } else
                    {
                        imageTextWebView.setVisibility(8);
                        return;
                    }
                }

            
            {
                this$0 = GalleryPreviewActivity.this;
                imageTextWebView = smartwebview;
                super();
            }
            });
        }
        updateUI();
    }

    private void stopSlideShow()
    {
        eventHandler = null;
    }

    private void updateUI()
    {
        shareButton.setEnabled(isImageLoaded);
    }

    protected int getLayoutId()
    {
        return com.biznessapps.layout.R.layout.gallery_preview_layout;
    }

    protected boolean hasNavigationMenu()
    {
        return false;
    }

    protected void initAds()
    {
        initAdsWithAlpha();
    }

    public void onBackPressed()
    {
        ViewUtils.canGoBack(webViewList);
        webViewList.clear();
        onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        onCreate(bundle);
        galleryItems = GalleryManager.getInstance().getGalleryItems();
        if (galleryItems == null || galleryItems.isEmpty())
        {
            finish();
            return;
        }
        shareButton = (ImageView)findViewById(com.biznessapps.layout.R.id.share_button);
        CommonUtils.setColorWithoutMutation(settings.getButtonBgColor(), shareButton.getDrawable());
        shareButton.setOnClickListener(new android.view.View.OnClickListener() {

            final GalleryPreviewActivity this$0;

            public void onClick(View view)
            {
                view = (ImageView)((ViewGroup)pagerAdapter.getCurrentView()).findViewById(com.biznessapps.layout.R.id.preview_image_view);
                if (view.getDrawable() != null && (view.getDrawable() instanceof BitmapDrawable))
                {
                    view = ((BitmapDrawable)view.getDrawable()).getBitmap();
                    shareButton.setEnabled(false);
                    final ProgressDialog dialog = ViewUtils.getProgressDialog(GalleryPreviewActivity.this);
                    dialog.show();
                    dialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() {

                        final _cls1 this$1;

                        public void onDismiss(DialogInterface dialoginterface)
                        {
                            shareButton.setEnabled(true);
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                    AppCore.getInstance().getAppSharingText(GalleryPreviewActivity.this, view. new AsyncCallback() {

                        final _cls1 this$1;
                        final Bitmap val$currentBitmap;
                        final ProgressDialog val$dialog;

                        public void onError(String s, Throwable throwable)
                        {
                            dialog.hide();
                            shareButton.setEnabled(true);
                            ViewUtils.showCustomToast(getApplicationContext(), s);
                        }

                        public volatile void onResult(Object obj)
                        {
                            onResult((String)obj);
                        }

                        public void onResult(String s)
                        {
                            dialog.hide();
                            GalleryData.Item item = (GalleryData.Item)galleryItems.get(viewPager.getCurrentItem());
                            ShareComponent.showSharingOptionDialog(_fld0, 239, s, currentBitmap, Uri.parse(item.getPreviewUrl()), new OnSharingCompletedListener() {

                                final _cls2 this$2;

                                public void onSharingCanceled()
                                {
                                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_canceled));
                                    shareButton.setEnabled(true);
                                }

                                public void onSharingCompleted(int i)
                                {
                                    if (i == 32)
                                    {
                                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.photo_saved));
                                    } else
                                    {
                                        ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_completed));
                                    }
                                    shareButton.setEnabled(true);
                                }

                                public void onSharingError(int i, String s, String s1)
                                {
                                    ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.something_went_wrong));
                                    shareButton.setEnabled(true);
                                }

            
            {
                this$2 = _cls2.this;
                super();
            }
                            });
                        }

            
            {
                this$1 = final__pcls1;
                dialog = progressdialog;
                currentBitmap = Bitmap.this;
                super();
            }
                    });
                }
            }

            
            {
                this$0 = GalleryPreviewActivity.this;
                super();
            }
        });
        vgRoot = (ViewGroup)findViewById(com.biznessapps.layout.R.id.gallery_preview_root);
        ivBackground = (ImageView)findViewById(com.biznessapps.layout.R.id.ivBackground);
        vgOverlay = (ViewGroup)findViewById(com.biznessapps.layout.R.id.vgOverlay);
        viewPager = (ExtendedViewPager)findViewById(com.biznessapps.layout.R.id.view_pager);
        pagerAdapter = new TouchImageAdapter();
        viewPager.setAdapter(pagerAdapter);
        currentPos = getIntent().getIntExtra("gallery_current_position_extra", 0);
        viewPager.setCurrentItem(currentPos);
        isSlideShowMode = getIntent().getBooleanExtra("SLIDESHOW_MODE_EXTRA", false);
        if (isSlideShowMode)
        {
            initSlideShow();
        }
        updateUI();
    }

    protected void onStop()
    {
        onStop();
        stopSlideShow();
    }










/*
    static int access$502(GalleryPreviewActivity gallerypreviewactivity, int i)
    {
        gallerypreviewactivity.currentPos = i;
        return i;
    }

*/


/*
    static int access$508(GalleryPreviewActivity gallerypreviewactivity)
    {
        int i = gallerypreviewactivity.currentPos;
        gallerypreviewactivity.currentPos = i + 1;
        return i;
    }

*/



/*
    static boolean access$702(GalleryPreviewActivity gallerypreviewactivity, boolean flag)
    {
        gallerypreviewactivity.isImageLoaded = flag;
        return flag;
    }

*/


}
