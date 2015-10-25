// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.ui;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Environment;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.util.Log;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.BitlyManager;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.common.social.googleplus.GooglePlusSocialNetworkHandler;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.common.social.twitter.TwitterSocialNetworkHandler;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.ViewUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social.ui:
//            SharingOptionPopupDialog, OnSharingOptionSelectedListener, OnSharingCompletedListener

public class ShareComponent
    implements AppConstants
{
    public static interface PostCommentListener
    {

        public abstract void onCommentEntered(String s);
    }


    public static final int DEFAULT_CHARACTER_LIMIT = 250;
    private static final String LOG_TAG = "ShareComponent";
    public static final int SHARE_OPTION_ALL = 239;
    public static final int SHARE_OPTION_ALL_EXCEPT_IMAGE = 207;
    public static final int SHARE_OPTION_EMAIL = 1;
    public static final int SHARE_OPTION_FACEBOOK = 4;
    public static final int SHARE_OPTION_GOOGLEPLUS = 16;
    public static final int SHARE_OPTION_NONE = 0;
    public static final int SHARE_OPTION_SAVETOPHOTOALBUM = 32;
    public static final int SHARE_OPTION_SMS = 2;
    public static final int SHARE_OPTION_TWITTER = 8;
    private static OnSharingOptionSelectedListener mImageSharingOptionSelectedListener = new OnSharingOptionSelectedListener() {

        public void onSharingOptionSelected(int i)
        {
            switch (i)
            {
            default:
                return;

            case 1: // '\001'
                ShareComponent.shareImageViaEmail(activity, text, bitmap, bitmapPath, listener);
                return;

            case 2: // '\002'
                ShareComponent.shareImageViaSMS(activity, text, bitmap, bitmapPath, listener);
                return;

            case 4: // '\004'
                ShareComponent.shareImageViaFacebook(activity, text, bitmap, bitmapPath, listener);
                return;

            case 8: // '\b'
                ShareComponent.shareImageViaTwitter(activity, text, bitmap, bitmapPath, listener);
                return;

            case 16: // '\020'
                ShareComponent.shareImageViaGooglePlus(activity, text, bitmap, bitmapPath, listener);
                return;

            case 32: // ' '
                ShareComponent.saveImageToGallery(activity, text, bitmap, bitmapPath, listener);
                break;
            }
        }

    };
    private static OnSharingOptionSelectedListener mTextSharingOptionSelectedListener = new OnSharingOptionSelectedListener() {

        public void onSharingOptionSelected(int i)
        {
            switch (i)
            {
            default:
                return;

            case 1: // '\001'
                ShareComponent.shareTextViaEmail(activity, text, listener);
                return;

            case 2: // '\002'
                ShareComponent.shareTextViaSMS(activity, text, listener);
                return;

            case 4: // '\004'
                ShareComponent.shareTextViaFacebook(activity, text, listener);
                return;

            case 8: // '\b'
                ShareComponent.shareTextViaTwitter(activity, text, listener);
                return;

            case 16: // '\020'
                ShareComponent.shareTextViaGooglePlus(activity, text, listener);
                return;

            case 32: // ' '
                break;
            }
            boolean flag;
            if ("It must be image sharing!" == null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
        }

    };

    public ShareComponent()
    {
    }

    private static void _showSharingOptionDialog(Activity activity, int i, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        SharingOptionPopupDialog sharingoptionpopupdialog;
        OnSharingOptionSelectedListener onsharingoptionselectedlistener;
        if (bitmap == null)
        {
            boolean flag;
            if (s != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            sharingoptionpopupdialog = new SharingOptionPopupDialog(activity, i, mTextSharingOptionSelectedListener);
            onsharingoptionselectedlistener = mTextSharingOptionSelectedListener;
        } else
        {
            sharingoptionpopupdialog = new SharingOptionPopupDialog(activity, i, mImageSharingOptionSelectedListener);
            onsharingoptionselectedlistener = mImageSharingOptionSelectedListener;
        }
        onsharingoptionselectedlistener.activity = activity;
        onsharingoptionselectedlistener.text = s;
        onsharingoptionselectedlistener.bitmap = bitmap;
        onsharingoptionselectedlistener.bitmapPath = uri;
        onsharingoptionselectedlistener.listener = onsharingcompletedlistener;
        sharingoptionpopupdialog.getDialog().setOnCancelListener(new android.content.DialogInterface.OnCancelListener(onsharingcompletedlistener) {

            final OnSharingCompletedListener val$listener;

            public void onCancel(DialogInterface dialoginterface)
            {
                if (listener != null)
                {
                    listener.onSharingCanceled();
                }
            }

            
            {
                listener = onsharingcompletedlistener;
                super();
            }
        });
        sharingoptionpopupdialog.getDialog().show();
    }

    private static void formAndSendEmailIntent(Activity activity, String s, String s1, OnSharingCompletedListener onsharingcompletedlistener, String s2, Bitmap bitmap)
    {
        CachingManager cachingmanager = AppCore.getInstance().getCachingManager();
        if (s != null)
        {
            s1 = String.format(activity.getString(com.biznessapps.layout.R.string.share_image_url_with_app_description), new Object[] {
                s, cachingmanager.getAppCode(), s1
            });
        }
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/html");
        intent.putExtra("android.intent.extra.SUBJECT", cachingmanager.getAppCode());
        intent.putExtra("android.intent.extra.TEXT", s1);
        if (s == null)
        {
            intent.putExtra("android.intent.extra.STREAM", Uri.fromFile(new File(s2)));
            intent.setType("image/*");
        } else
        {
            intent.putExtra("android.intent.extra.STREAM", Uri.parse(android.provider.MediaStore.Images.Media.insertImage(activity.getContentResolver(), bitmap, "Attachment", null)));
            intent.setType("image/*");
        }
        activity.startActivity(Intent.createChooser(intent, ""));
        UserStatsProfile.getInstance(activity).updateNumberOfShares();
        if (onsharingcompletedlistener != null)
        {
            onsharingcompletedlistener.onSharingCompleted(1);
        }
    }

    public static void saveImageToGallery(Activity activity, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        s = new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE");
        s.setData(Uri.fromFile(new File(CommonUtils.createImageFile(bitmap, null))));
        activity.sendBroadcast(s);
        if (onsharingcompletedlistener != null)
        {
            onsharingcompletedlistener.onSharingCompleted(32);
        }
    }

    private static void setMessageCounterText(String s, TextView textview, int i)
    {
label0:
        {
            if (s != null)
            {
                textview.setText((new StringBuilder()).append(" ").append(i - s.length()).toString());
                if (s.length() <= i)
                {
                    break label0;
                }
                textview.setTextColor(0xffff0000);
            }
            return;
        }
        textview.setTextColor(0xff000000);
    }

    public static void shareImageViaEmail(Activity activity, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        uri = uri.toString();
        String s1 = Uri.parse(uri).getScheme();
        if (s1 != null && (s1.equalsIgnoreCase("http") || s1.equalsIgnoreCase("https")))
        {
            BitlyManager.getInstance(activity).getShortURL(uri, new AsyncCallback(activity, s, onsharingcompletedlistener, uri, bitmap) {

                final Activity val$activity;
                final Bitmap val$bitmap;
                final OnSharingCompletedListener val$listener;
                final String val$orgPath;
                final String val$text;

                public void onError(String s2, Throwable throwable)
                {
                    while (getMeta() == null || listener == null) 
                    {
                        return;
                    }
                    listener.onSharingError(1, activity.getString(com.biznessapps.layout.R.string.unknown_error), activity.getString(com.biznessapps.layout.R.string.unknown_error));
                }

                public volatile void onResult(Object obj)
                {
                    onResult((String)obj);
                }

                public void onResult(String s2)
                {
                    ShareComponent.formAndSendEmailIntent(activity, s2, text, listener, orgPath, bitmap);
                }

            
            {
                activity = activity1;
                text = s;
                listener = onsharingcompletedlistener;
                orgPath = s1;
                bitmap = bitmap1;
                super();
            }
            });
            return;
        } else
        {
            formAndSendEmailIntent(activity, null, s, onsharingcompletedlistener, uri, bitmap);
            return;
        }
    }

    public static void shareImageViaFacebook(Activity activity, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        FacebookSocialNetworkHandler.getInstance(activity).publishImage("", s, bitmap, new OnSocialPublishListener(activity, onsharingcompletedlistener) {

            final Activity val$activity;
            final OnSharingCompletedListener val$listener;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                if (s2 != null)
                {
                    Log.w("ShareComponent", s2);
                }
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                if (listener != null)
                {
                    listener.onSharingError(4, s1, s2);
                }
            }

            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                UserStatsProfile.getInstance(activity).updateNumberOfShares();
                if (listener != null)
                {
                    listener.onSharingCompleted(4);
                }
            }

            
            {
                activity = activity1;
                listener = onsharingcompletedlistener;
                super();
            }
        });
    }

    public static void shareImageViaGooglePlus(Activity activity, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        GooglePlusSocialNetworkHandler.getInstance(activity).login(new OnCommonSocialLoginListener(activity, onsharingcompletedlistener) {

            final OnSharingCompletedListener val$listener;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                super.onError(commonsocialnetworkhandler, s1, s2);
                if (listener != null)
                {
                    listener.onSharingError(16, s1, s2);
                }
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                if (listener != null)
                {
                    listener.onSharingError(16, "Error", "Not Implemented Yet!");
                }
            }

            
            {
                listener = onsharingcompletedlistener;
                super(context);
            }
        });
    }

    public static void shareImageViaSMS(Activity activity, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        try
        {
            uri = File.createTempFile("biz-", ".png", Environment.getExternalStorageDirectory());
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, new FileOutputStream(uri));
            uri.deleteOnExit();
            bitmap = new Intent("android.intent.action.SEND");
            bitmap.putExtra("sms_body", s);
            bitmap.putExtra("android.intent.extra.STREAM", Uri.fromFile(uri));
            bitmap.setType("image/png");
            activity.startActivity(bitmap);
        }
        // Misplaced declaration of an exception variable
        catch (String s) { }
        UserStatsProfile.getInstance(activity).updateNumberOfShares();
        if (onsharingcompletedlistener != null)
        {
            onsharingcompletedlistener.onSharingCompleted(2);
        }
    }

    public static void shareImageViaTwitter(Activity activity, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        TwitterSocialNetworkHandler.getInstance(activity).publishImage("", s, bitmap, new OnSocialPublishListener(activity, onsharingcompletedlistener) {

            final Activity val$activity;
            final OnSharingCompletedListener val$listener;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                if (s2 != null)
                {
                    Log.w("ShareComponent", s2);
                }
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                if (listener != null)
                {
                    listener.onSharingError(8, s1, s2);
                }
            }

            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                UserStatsProfile.getInstance(activity).updateNumberOfShares();
                if (listener != null)
                {
                    listener.onSharingCompleted(8);
                }
            }

            
            {
                activity = activity1;
                listener = onsharingcompletedlistener;
                super();
            }
        });
    }

    public static void shareTextViaEmail(Activity activity, String s, OnSharingCompletedListener onsharingcompletedlistener)
    {
        ViewUtils.email(activity, null, s);
        UserStatsProfile.getInstance(activity).updateNumberOfShares();
        if (onsharingcompletedlistener != null)
        {
            onsharingcompletedlistener.onSharingCompleted(1);
        }
    }

    public static void shareTextViaFacebook(Activity activity, String s, OnSharingCompletedListener onsharingcompletedlistener)
    {
        FacebookSocialNetworkHandler.getInstance(activity).login(new OnCommonSocialLoginListener(activity, onsharingcompletedlistener, activity, s) {

            final Activity val$activity;
            final OnSharingCompletedListener val$listener;
            final String val$text;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                super.onError(commonsocialnetworkhandler, s1, s2);
                if (listener != null)
                {
                    listener.onSharingError(4, s1, s2);
                }
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                ShareComponent.showPostCommentDialog(activity, new PostCommentListener() {

                    final _cls12 this$0;

                    public void onCommentEntered(String s)
                    {
                        FacebookSocialNetworkHandler.getInstance(activity).publishText(s, new OnSocialPublishListener() {

                            final _cls1 this$1;

                            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
                            {
                                if (s1 != null)
                                {
                                    Log.w("ShareComponent", s1);
                                }
                                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                                if (listener != null)
                                {
                                    listener.onSharingError(4, s, s1);
                                }
                            }

                            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                            {
                                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                                UserStatsProfile.getInstance(activity).updateNumberOfShares();
                                if (listener != null)
                                {
                                    listener.onSharingCompleted(4);
                                }
                            }

            
            {
                this$1 = _cls1.this;
                super();
            }
                        });
                    }

            
            {
                this$0 = _cls12.this;
                super();
            }
                }, text);
            }

            
            {
                listener = onsharingcompletedlistener;
                activity = activity1;
                text = s;
                super(context);
            }
        });
    }

    public static void shareTextViaGooglePlus(Activity activity, String s, OnSharingCompletedListener onsharingcompletedlistener)
    {
        GooglePlusSocialNetworkHandler.getInstance(activity).login(new OnCommonSocialLoginListener(activity, activity, onsharingcompletedlistener, s) {

            final Activity val$activity;
            final OnSharingCompletedListener val$listener;
            final String val$text;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                super.onError(commonsocialnetworkhandler, s1, s2);
                if (listener != null)
                {
                    listener.onSharingError(16, s1, s2);
                }
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                ShareComponent.showPostCommentDialog(activity, new PostCommentListener() {

                    final _cls14 this$0;

                    public void onCommentEntered(String s)
                    {
                        GooglePlusSocialNetworkHandler.getInstance(activity).publishText(s, new OnSocialPublishListener() {

                            final _cls1 this$1;

                            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
                            {
                                if (s1 != null)
                                {
                                    Log.w("ShareComponent", s1);
                                }
                                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                                if (listener != null)
                                {
                                    listener.onSharingError(16, s, s1);
                                }
                            }

                            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                            {
                                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                                UserStatsProfile.getInstance(activity).updateNumberOfShares();
                                if (listener != null)
                                {
                                    listener.onSharingCompleted(16);
                                }
                            }

            
            {
                this$1 = _cls1.this;
                super();
            }
                        });
                    }

            
            {
                this$0 = _cls14.this;
                super();
            }
                }, text);
            }

            
            {
                activity = activity1;
                listener = onsharingcompletedlistener;
                text = s;
                super(context);
            }
        });
    }

    public static void shareTextViaSMS(Activity activity, String s, OnSharingCompletedListener onsharingcompletedlistener)
    {
        if (android.os.Build.VERSION.SDK_INT >= 19)
        {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", s);
            activity.startActivity(intent);
        } else
        {
            Intent intent1 = new Intent("android.intent.action.VIEW");
            intent1.putExtra("sms_body", s);
            intent1.setType("vnd.android-dir/mms-sms");
            activity.startActivity(intent1);
        }
        UserStatsProfile.getInstance(activity).updateNumberOfShares();
        if (onsharingcompletedlistener != null)
        {
            onsharingcompletedlistener.onSharingCompleted(2);
        }
    }

    public static void shareTextViaTwitter(Activity activity, String s, OnSharingCompletedListener onsharingcompletedlistener)
    {
        TwitterSocialNetworkHandler.getInstance(activity).login(new OnCommonSocialLoginListener(activity, activity, onsharingcompletedlistener, s) {

            final Activity val$activity;
            final OnSharingCompletedListener val$listener;
            final String val$text;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                super.onError(commonsocialnetworkhandler, s1, s2);
                if (listener != null)
                {
                    listener.onSharingError(8, s1, s2);
                }
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                ShareComponent.showPostCommentDialog(activity, new PostCommentListener() {

                    final _cls13 this$0;

                    public void onCommentEntered(String s)
                    {
                        TwitterSocialNetworkHandler.getInstance(activity).publishText(s, new OnSocialPublishListener() {

                            final _cls1 this$1;

                            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s, String s1)
                            {
                                if (s1 != null)
                                {
                                    Log.w("ShareComponent", s1);
                                }
                                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.something_went_wrong));
                                if (listener != null)
                                {
                                    listener.onSharingError(8, s, s1);
                                }
                            }

                            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
                            {
                                ViewUtils.showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.successfully_posted));
                                UserStatsProfile.getInstance(activity).updateNumberOfShares();
                                if (listener != null)
                                {
                                    listener.onSharingCompleted(8);
                                }
                            }

            
            {
                this$1 = _cls1.this;
                super();
            }
                        });
                    }

            
            {
                this$0 = _cls13.this;
                super();
            }
                }, text, 140);
            }

            
            {
                activity = activity1;
                listener = onsharingcompletedlistener;
                text = s;
                super(context);
            }
        });
    }

    public static void showPostCommentDialog(Activity activity, PostCommentListener postcommentlistener)
    {
        showPostCommentDialog(activity, postcommentlistener, com.biznessapps.layout.R.string.sharing, com.biznessapps.layout.R.string.post, null, 250);
    }

    public static void showPostCommentDialog(Activity activity, PostCommentListener postcommentlistener, int i)
    {
        showPostCommentDialog(activity, postcommentlistener, com.biznessapps.layout.R.string.sharing, com.biznessapps.layout.R.string.post, null, i);
    }

    public static void showPostCommentDialog(Activity activity, PostCommentListener postcommentlistener, int i, int j, String s, int k)
    {
        k = Math.min(k, 250);
        Object obj = activity.getApplicationContext();
        activity = new android.app.AlertDialog.Builder(activity);
        obj = ViewUtils.loadLayout(((Context) (obj)), com.biznessapps.layout.R.layout.sharing_text_dialog);
        EditText edittext = (EditText)((View) (obj)).findViewById(com.biznessapps.layout.R.id.comment_edit_text);
        if (s != null)
        {
            edittext.setText(s);
        }
        s = (TextView)((View) (obj)).findViewById(com.biznessapps.layout.R.id.message_countdown);
        edittext.setFilters(new InputFilter[] {
            new android.text.InputFilter.LengthFilter(k)
        });
        edittext.addTextChangedListener(new TextWatcher(edittext, s, k) {

            final EditText val$commentEditView;
            final TextView val$messageCounterView;
            final int val$textLimit;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int l, int i1, int j1)
            {
            }

            public void onTextChanged(CharSequence charsequence, int l, int i1, int j1)
            {
                ShareComponent.setMessageCounterText(commentEditView.getText().toString(), messageCounterView, textLimit);
            }

            
            {
                commentEditView = edittext;
                messageCounterView = textview;
                textLimit = i;
                super();
            }
        });
        activity.setView(((View) (obj)));
        activity.setTitle(i);
        activity.setPositiveButton(j, new android.content.DialogInterface.OnClickListener(edittext, postcommentlistener) {

            final EditText val$commentEditView;
            final PostCommentListener val$listener;

            public void onClick(DialogInterface dialoginterface, int l)
            {
                dialoginterface = commentEditView.getText().toString();
                if (listener != null)
                {
                    listener.onCommentEntered(dialoginterface);
                }
            }

            
            {
                commentEditView = edittext;
                listener = postcommentlistener;
                super();
            }
        });
        activity.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int l)
            {
                if (dialoginterface == null);
            }

        });
        setMessageCounterText(edittext.getText().toString(), s, k);
        activity.create().show();
    }

    public static void showPostCommentDialog(Activity activity, PostCommentListener postcommentlistener, String s)
    {
        showPostCommentDialog(activity, postcommentlistener, com.biznessapps.layout.R.string.sharing, com.biznessapps.layout.R.string.post, s, 250);
    }

    public static void showPostCommentDialog(Activity activity, PostCommentListener postcommentlistener, String s, int i)
    {
        showPostCommentDialog(activity, postcommentlistener, com.biznessapps.layout.R.string.sharing, com.biznessapps.layout.R.string.post, s, i);
    }

    public static void showSharingOptionDialog(Activity activity)
    {
        showSharingOptionDialog(activity, null);
    }

    public static void showSharingOptionDialog(Activity activity, int i, String s, Bitmap bitmap, Uri uri, OnSharingCompletedListener onsharingcompletedlistener)
    {
        _showSharingOptionDialog(activity, i, s, bitmap, uri, onsharingcompletedlistener);
    }

    public static void showSharingOptionDialog(Activity activity, OnSharingCompletedListener onsharingcompletedlistener)
    {
        ProgressDialog progressdialog = ViewUtils.getProgressDialog(activity);
        progressdialog.show();
        AppCore.getInstance().getAppSharingText(activity, new AsyncCallback(progressdialog, activity, onsharingcompletedlistener) {

            final Activity val$activity;
            final ProgressDialog val$dialog;
            final OnSharingCompletedListener val$listener;

            public void onError(String s, Throwable throwable)
            {
                dialog.hide();
                if (listener != null)
                {
                    listener.onSharingError(0, activity.getString(com.biznessapps.layout.R.string.unknown_error), activity.getString(com.biznessapps.layout.R.string.unknown_error));
                }
            }

            public volatile void onResult(Object obj)
            {
                onResult((String)obj);
            }

            public void onResult(String s)
            {
                dialog.hide();
                ShareComponent._showSharingOptionDialog(activity, 207, s, null, null, listener);
            }

            
            {
                dialog = progressdialog;
                activity = activity1;
                listener = onsharingcompletedlistener;
                super();
            }
        });
    }




}
