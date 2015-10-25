// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.events;

import android.app.Activity;
import android.app.AlertDialog;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import com.biznessapps.utils.ViewUtils;

public class UploadPhotoUtils
{
    public static interface UploadPhotoTextListener
    {

        public abstract void onCancel();

        public abstract void onCaptionSelected(String s);
    }


    public UploadPhotoUtils()
    {
    }

    public static void showCaptionDialog(Activity activity, UploadPhotoTextListener uploadphototextlistener)
    {
        Object obj = new android.app.AlertDialog.Builder(activity);
        activity = ViewUtils.loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.upload_photo_layout);
        ((android.app.AlertDialog.Builder) (obj)).setView(activity);
        ((android.app.AlertDialog.Builder) (obj)).setTitle(com.biznessapps.layout.R.string.photo_upload);
        obj = ((android.app.AlertDialog.Builder) (obj)).create();
        EditText edittext = (EditText)activity.findViewById(com.biznessapps.layout.R.id.caption_edit_text);
        Button button = (Button)activity.findViewById(com.biznessapps.layout.R.id.upload_photo_button);
        activity = (Button)activity.findViewById(com.biznessapps.layout.R.id.cancel_button);
        button.setOnClickListener(new android.view.View.OnClickListener(edittext, uploadphototextlistener, ((AlertDialog) (obj))) {

            final EditText val$captionEditText;
            final AlertDialog val$dialog;
            final UploadPhotoTextListener val$listener;

            public void onClick(View view)
            {
                view = captionEditText.getText().toString();
                listener.onCaptionSelected(view);
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                captionEditText = edittext;
                listener = uploadphototextlistener;
                dialog = alertdialog;
                super();
            }
        });
        activity.setOnClickListener(new android.view.View.OnClickListener(uploadphototextlistener, ((AlertDialog) (obj))) {

            final AlertDialog val$dialog;
            final UploadPhotoTextListener val$listener;

            public void onClick(View view)
            {
                listener.onCancel();
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                listener = uploadphototextlistener;
                dialog = alertdialog;
                super();
            }
        });
        button.setText(com.biznessapps.layout.R.string.upload);
        activity.setText(com.biznessapps.layout.R.string.cancel);
        edittext.setHint(com.biznessapps.layout.R.string.description);
        ((AlertDialog) (obj)).show();
    }
}
