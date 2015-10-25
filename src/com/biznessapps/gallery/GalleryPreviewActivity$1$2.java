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

class val.currentBitmap extends AsyncCallback
{

    final is._cls0 this$1;
    final Bitmap val$currentBitmap;
    final ProgressDialog val$dialog;

    public void onError(String s, Throwable throwable)
    {
        val$dialog.hide();
        GalleryPreviewActivity.access$100(_fld0).setEnabled(true);
        ViewUtils.showCustomToast(getApplicationContext(), s);
    }

    public volatile void onResult(Object obj)
    {
        onResult((String)obj);
    }

    public void onResult(String s)
    {
        val$dialog.hide();
        Listener listener = (val.dialog)GalleryPreviewActivity.access$300(_fld0).get(GalleryPreviewActivity.access$200(_fld0).getCurrentItem());
        ShareComponent.showSharingOptionDialog(_fld0, 239, s, val$currentBitmap, Uri.parse(listener.Url()), new OnSharingCompletedListener() {

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

            public void onSharingError(int i, String s1, String s2)
            {
                ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.something_went_wrong));
                GalleryPreviewActivity.access$100(this$0).setEnabled(true);
            }

            
            {
                this$2 = GalleryPreviewActivity._cls1._cls2.this;
                super();
            }
        });
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$dialog = progressdialog;
        val$currentBitmap = Bitmap.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/gallery/GalleryPreviewActivity$1

/* anonymous class */
    class GalleryPreviewActivity._cls1
        implements android.view.View.OnClickListener
    {

        final GalleryPreviewActivity this$0;

        public void onClick(View view)
        {
            view = (ImageView)((ViewGroup)GalleryPreviewActivity.access$000(GalleryPreviewActivity.this).getCurrentView()).findViewById(com.biznessapps.layout.R.id.preview_image_view);
            if (view.getDrawable() != null && (view.getDrawable() instanceof BitmapDrawable))
            {
                view = ((BitmapDrawable)view.getDrawable()).getBitmap();
                GalleryPreviewActivity.access$100(GalleryPreviewActivity.this).setEnabled(false);
                final ProgressDialog dialog = ViewUtils.getProgressDialog(GalleryPreviewActivity.this);
                dialog.show();
                dialog.setOnDismissListener(new GalleryPreviewActivity._cls1._cls1());
                AppCore.getInstance().getAppSharingText(GalleryPreviewActivity.this, view. new GalleryPreviewActivity._cls1._cls2());
            }
        }

            
            {
                this$0 = GalleryPreviewActivity.this;
                super();
            }

        // Unreferenced inner class com/biznessapps/gallery/GalleryPreviewActivity$1$1

/* anonymous class */
        class GalleryPreviewActivity._cls1._cls1
            implements android.content.DialogInterface.OnDismissListener
        {

            final GalleryPreviewActivity._cls1 this$1;

            public void onDismiss(DialogInterface dialoginterface)
            {
                GalleryPreviewActivity.access$100(this$0).setEnabled(true);
            }

                    
                    {
                        this$1 = GalleryPreviewActivity._cls1.this;
                        super();
                    }
        }

    }

}
