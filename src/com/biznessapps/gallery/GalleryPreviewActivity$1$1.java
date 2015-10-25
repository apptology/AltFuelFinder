// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.gallery;

import android.app.ProgressDialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.common.social.ui.OnSharingCompletedListener;
import com.biznessapps.common.social.ui.ShareComponent;
import com.biznessapps.utils.ViewUtils;
import com.biznessapps.widgets.ExtendedViewPager;
import java.util.List;

// Referenced classes of package com.biznessapps.gallery:
//            GalleryPreviewActivity

class this._cls1
    implements android.content.stener
{

    final is._cls0 this$1;

    public void onDismiss(DialogInterface dialoginterface)
    {
        GalleryPreviewActivity.access$100(_fld0).setEnabled(true);
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/gallery/GalleryPreviewActivity$1

/* anonymous class */
    class GalleryPreviewActivity._cls1
        implements android.view.View.OnClickListener
    {

        final GalleryPreviewActivity this$0;

        public void onClick(final View currentBitmap)
        {
            currentBitmap = (ImageView)((ViewGroup)GalleryPreviewActivity.access$000(GalleryPreviewActivity.this).getCurrentView()).findViewById(com.biznessapps.layout.R.id.preview_image_view);
            if (currentBitmap.getDrawable() != null && (currentBitmap.getDrawable() instanceof BitmapDrawable))
            {
                currentBitmap = ((BitmapDrawable)currentBitmap.getDrawable()).getBitmap();
                GalleryPreviewActivity.access$100(GalleryPreviewActivity.this).setEnabled(false);
                final ProgressDialog dialog = ViewUtils.getProgressDialog(GalleryPreviewActivity.this);
                dialog.show();
                dialog.setOnDismissListener(new GalleryPreviewActivity._cls1._cls1());
                AppCore.getInstance().getAppSharingText(GalleryPreviewActivity.this, new GalleryPreviewActivity._cls1._cls2());
            }
        }

            
            {
                this$0 = GalleryPreviewActivity.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/gallery/GalleryPreviewActivity$1$2

/* anonymous class */
        class GalleryPreviewActivity._cls1._cls2 extends AsyncCallback
        {

            final GalleryPreviewActivity._cls1 this$1;
            final Bitmap val$currentBitmap;
            final ProgressDialog val$dialog;

            public void onError(String s, Throwable throwable)
            {
                dialog.hide();
                GalleryPreviewActivity.access$100(this$0).setEnabled(true);
                ViewUtils.showCustomToast(getApplicationContext(), s);
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                dialog.hide();
                GalleryData.Item item = (GalleryData.Item)GalleryPreviewActivity.access$300(this$0).get(GalleryPreviewActivity.access$200(this$0).getCurrentItem());
                ShareComponent.showSharingOptionDialog(this$0, 239, s, currentBitmap, Uri.parse(item.getPreviewUrl()), new GalleryPreviewActivity._cls1._cls2._cls1());
            }

                    
                    {
                        this$1 = GalleryPreviewActivity._cls1.this;
                        dialog = progressdialog;
                        currentBitmap = bitmap;
                        super();
                    }
        }


        // Unreferenced inner class com/biznessapps/gallery/GalleryPreviewActivity$1$2$1

/* anonymous class */
        class GalleryPreviewActivity._cls1._cls2._cls1
            implements OnSharingCompletedListener
        {

            final GalleryPreviewActivity._cls1._cls2 this$2;

            public void onSharingCanceled()
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.sharing_canceled));
                GalleryPreviewActivity.access$100(this$0).setEnabled(true);
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
                GalleryPreviewActivity.access$100(this$0).setEnabled(true);
            }

            public void onSharingError(int i, String s, String s1)
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.something_went_wrong));
                GalleryPreviewActivity.access$100(this$0).setEnabled(true);
            }

                    
                    {
                        this$2 = GalleryPreviewActivity._cls1._cls2.this;
                        super();
                    }
        }

    }

}
