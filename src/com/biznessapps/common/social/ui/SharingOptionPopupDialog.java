// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.Button;
import com.biznessapps.api.AppCore;
import com.biznessapps.utils.ViewUtils;

// Referenced classes of package com.biznessapps.common.social.ui:
//            OnSharingOptionSelectedListener

public class SharingOptionPopupDialog
{

    private Button mBTShareByEmail;
    private Button mBTShareByFacebook;
    private Button mBTShareByGooglePlus;
    private Button mBTShareBySMS;
    private Button mBTShareBySaveToPhotoAlbum;
    private Button mBTShareByTwitter;
    private Context mContext;
    private AlertDialog mDialog;
    private OnSharingOptionSelectedListener mListener;
    private android.view.View.OnClickListener mShareOptionClickListener;
    private int mVisibleOptions;

    public SharingOptionPopupDialog(Context context, int i, OnSharingOptionSelectedListener onsharingoptionselectedlistener)
    {
        mShareOptionClickListener = new android.view.View.OnClickListener() {

            final SharingOptionPopupDialog this$0;

            public void onClick(View view)
            {
                mDialog.dismiss();
                int j = ((Integer)view.getTag()).intValue();
                if (mListener != null)
                {
                    mListener.onSharingOptionSelected(j);
                }
            }

            
            {
                this$0 = SharingOptionPopupDialog.this;
                super();
            }
        };
        mContext = context;
        mListener = onsharingoptionselectedlistener;
        mVisibleOptions = i;
        initUI();
    }

    private void initUI()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
        View view = ViewUtils.loadLayout(mContext, com.biznessapps.layout.R.layout.sharing_options_layout);
        builder.setView(view);
        builder.setTitle(com.biznessapps.layout.R.string.share);
        builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

            final SharingOptionPopupDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (dialoginterface != null)
                {
                    dialoginterface.cancel();
                }
            }

            
            {
                this$0 = SharingOptionPopupDialog.this;
                super();
            }
        });
        mDialog = builder.create();
        mBTShareByEmail = (Button)view.findViewById(com.biznessapps.layout.R.id.share_by_email_button);
        mBTShareByEmail.setTag(Integer.valueOf(1));
        mBTShareByEmail.setOnClickListener(mShareOptionClickListener);
        mBTShareBySMS = (Button)view.findViewById(com.biznessapps.layout.R.id.share_by_sms_button);
        mBTShareBySMS.setTag(Integer.valueOf(2));
        mBTShareBySMS.setOnClickListener(mShareOptionClickListener);
        mBTShareByFacebook = (Button)view.findViewById(com.biznessapps.layout.R.id.share_on_facebook_button);
        mBTShareByFacebook.setTag(Integer.valueOf(4));
        mBTShareByFacebook.setOnClickListener(mShareOptionClickListener);
        mBTShareByTwitter = (Button)view.findViewById(com.biznessapps.layout.R.id.share_on_twitter_button);
        mBTShareByTwitter.setTag(Integer.valueOf(8));
        mBTShareByTwitter.setOnClickListener(mShareOptionClickListener);
        mBTShareByGooglePlus = (Button)view.findViewById(com.biznessapps.layout.R.id.share_by_google_plus_button);
        mBTShareByGooglePlus.setTag(Integer.valueOf(16));
        mBTShareByGooglePlus.setOnClickListener(mShareOptionClickListener);
        mBTShareBySaveToPhotoAlbum = (Button)view.findViewById(com.biznessapps.layout.R.id.save_to_photo_album);
        mBTShareBySaveToPhotoAlbum.setTag(Integer.valueOf(32));
        mBTShareBySaveToPhotoAlbum.setOnClickListener(mShareOptionClickListener);
        mBTShareByEmail.setText(com.biznessapps.layout.R.string.share_by_email);
        mBTShareBySMS.setText(com.biznessapps.layout.R.string.share_by_sms);
        mBTShareByFacebook.setText(com.biznessapps.layout.R.string.share_on_facebook);
        mBTShareByTwitter.setText(com.biznessapps.layout.R.string.share_on_twitter);
        mBTShareByGooglePlus.setText(com.biznessapps.layout.R.string.share_on_google_plus);
        mBTShareBySaveToPhotoAlbum.setText(com.biznessapps.layout.R.string.save_to_album);
        showOptions(mVisibleOptions);
    }

    private void showOptions(int i)
    {
        boolean flag = false;
        Button button = mBTShareByEmail;
        int j;
        if ((i & 1) > 0)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        button.setVisibility(j);
        if ((i & 2) > 0 && !AppCore.getInstance().isPhoneDisabled())
        {
            mBTShareBySMS.setVisibility(0);
        } else
        {
            mBTShareBySMS.setVisibility(8);
        }
        button = mBTShareBySMS;
        if (AppCore.getInstance().isPhoneDisabled())
        {
            j = 8;
        } else
        {
            j = 0;
        }
        button.setVisibility(j);
        button = mBTShareByFacebook;
        if ((i & 4) == 4)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        button.setVisibility(j);
        button = mBTShareByTwitter;
        if ((i & 8) == 8)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        button.setVisibility(j);
        button = mBTShareByGooglePlus;
        if ((i & 0x10) == 16)
        {
            j = 0;
        } else
        {
            j = 8;
        }
        button.setVisibility(j);
        button = mBTShareBySaveToPhotoAlbum;
        if ((i & 0x20) == 32)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 8;
        }
        button.setVisibility(i);
    }

    public AlertDialog getDialog()
    {
        return mDialog;
    }


}
