// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.fan_wall;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.AsyncCallback;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.common.social.stats.UserStatsProfile;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.io.File;
import junit.framework.Assert;

public class FanAddCommentsFragment extends CommonFragment
{

    public static final int MESSAGE_TEXT_LIMIT = 250;
    private ViewGroup buttonsContainer;
    private Button cancelButton;
    private Button clearButton;
    private EditText commentEditView;
    private String commentParentId;
    private byte imageToSend[];
    private Uri imageUri;
    private CommonSocialNetworkHandler mSelectedSocialNetworkHandler;
    private TextView messageCounterView;
    private Button postButton;
    private ViewGroup progressContainer;
    private ImageView takePhotoButton;
    private boolean usePhotoOption;

    public FanAddCommentsFragment()
    {
    }

    private void closeActivityWithResult(int i, int j)
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            ViewUtils.showCustomToast(commonfragmentactivity.getApplicationContext(), getString(i));
            commonfragmentactivity.setResult(j);
            commonfragmentactivity.finish();
        }
    }

    private void defineViewsAccessOnLoading()
    {
        buttonsContainer.setVisibility(8);
        progressContainer.setVisibility(0);
        commentEditView.setEnabled(false);
        progressContainer.addView(ViewUtils.getProgressBar(getHoldActivity()));
    }

    private void initListeners()
    {
        cancelButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FanAddCommentsFragment this$0;

            public void onClick(View view)
            {
                getHoldActivity().finish();
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        });
        clearButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FanAddCommentsFragment this$0;

            public void onClick(View view)
            {
                commentEditView.setText("");
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        });
        postButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FanAddCommentsFragment this$0;

            public void onClick(View view)
            {
                if (commentEditView.getText().toString().length() <= 250)
                {
                    postComment();
                }
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        });
        takePhotoButton.setOnClickListener(new android.view.View.OnClickListener() {

            final FanAddCommentsFragment this$0;

            public void onClick(View view)
            {
                takePhoto();
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        });
        commentEditView.setOnKeyListener(new android.view.View.OnKeyListener() {

            final FanAddCommentsFragment this$0;

            public boolean onKey(View view, int i, KeyEvent keyevent)
            {
                view = commentEditView.getText().toString();
                setMessageCounterText(view);
                if (keyevent.getAction() == 0)
                {
                    if (i != 66);
                }
                return false;
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        });
        commentEditView.addTextChangedListener(new TextWatcher() {

            final FanAddCommentsFragment this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
                charsequence = commentEditView.getText().toString();
                setMessageCounterText(charsequence);
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        });
    }

    private void postComment()
    {
        String s = commentEditView.getText().toString();
        String s1 = cacher().getAppCode();
        String s2 = getIntent().getStringExtra("TAB_SPECIAL_ID");
        if (StringUtils.isEmpty(s))
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.fill_required_fields_message));
            return;
        }
        if (!StringUtils.checkTextFieldsOnEmpty(new String[] {
    s2, s1
}))
        {
            defineViewsAccessOnLoading();
            if (getIntent().getBooleanExtra("USE_SPECIAL_MD5_HASH_EXTRA", false))
            {
                postComment("comment_post.php", "comment986%sbizapps%s", s1, s2, s);
                return;
            } else
            {
                postComment(s1, s2, s);
                return;
            }
        } else
        {
            closeActivityWithResult(com.biznessapps.layout.R.string.error_occured, 5);
            return;
        }
    }

    private void postComment(String s, String s1, String s2)
    {
        if (mSelectedSocialNetworkHandler == null)
        {
            return;
        } else
        {
            String s3 = mSelectedSocialNetworkHandler.getUserName();
            mSelectedSocialNetworkHandler.getUserProfileURL();
            int i = mSelectedSocialNetworkHandler.getSocialType();
            String s4 = mSelectedSocialNetworkHandler.getUserID();
            String s5 = CommonUtils.getMD5Hash(String.format("fan713%s", new Object[] {
                s4
            }));
            boolean flag = getIntent().getBooleanExtra("YOUTUBE_MODE", false);
            AppHttpUtils.postCommentAsync(new AsyncCallback() {

                final FanAddCommentsFragment this$0;

                public void onError(String s6, Throwable throwable)
                {
                    closeActivityWithResult(com.biznessapps.layout.R.string.error_occured, 5);
                }

                public volatile void onResult(Object obj)
                {
                    onResult((String)obj);
                }

                public void onResult(String s6)
                {
                    UserStatsProfile.getInstance(getActivity()).updateNumberOfPosts();
                    closeActivityWithResult(com.biznessapps.layout.R.string.successfully_posted, 4);
                }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
            }, i, s4, s5, s1, s3, s2, s, commentParentId, flag);
            return;
        }
    }

    private void postComment(String s, String s1, String s2, String s3, String s4)
    {
        if (mSelectedSocialNetworkHandler == null)
        {
            return;
        } else
        {
            String s5 = getIntent().getStringExtra("id");
            String s6 = mSelectedSocialNetworkHandler.getUserID();
            String s7 = mSelectedSocialNetworkHandler.getUserName();
            mSelectedSocialNetworkHandler.getUserProfileURL();
            int i = mSelectedSocialNetworkHandler.getSocialType();
            double d = getIntent().getDoubleExtra("latitude", 0.0D);
            double d1 = getIntent().getDoubleExtra("longitude", 0.0D);
            String s8 = getIntent().getStringExtra("parent_id");
            AppHttpUtils.postCommentAsync(s, s2, s3, s5, i, s6, s7, s4, CommonUtils.getMD5Hash(String.format(s1, new Object[] {
                s6, Integer.valueOf(i)
            })), s8, d1, d, imageToSend, new AsyncCallback() {

                final FanAddCommentsFragment this$0;

                public void onError(String s9, Throwable throwable)
                {
                    closeActivityWithResult(com.biznessapps.layout.R.string.error_occured, 5);
                }

                public volatile void onResult(Object obj)
                {
                    onResult((String)obj);
                }

                public void onResult(String s9)
                {
                    UserStatsProfile.getInstance(getActivity()).updateNumberOfPosts();
                    closeActivityWithResult(com.biznessapps.layout.R.string.successfully_posted, 4);
                }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
            });
            return;
        }
    }

    private void setMessageCounterText(String s)
    {
label0:
        {
            if (s != null)
            {
                messageCounterView.setText((new StringBuilder()).append(" ").append(250 - s.length()).toString());
                if (s.length() <= 250)
                {
                    break label0;
                }
                messageCounterView.setTextColor(0xffff0000);
            }
            return;
        }
        messageCounterView.setTextColor(-1);
    }

    private void takePhoto()
    {
        ViewUtils.openChoosePhotoDialog(getHoldActivity(), new Runnable() {

            final FanAddCommentsFragment this$0;

            public void run()
            {
                Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
                imageUri = CommonUtils.createEmptyImageFile(getApplicationContext());
                if (imageUri != null)
                {
                    intent.putExtra("output", imageUri);
                }
                startActivityForResult(intent, 2);
            }

            
            {
                this$0 = FanAddCommentsFragment.this;
                super();
            }
        }, this);
    }

    protected void initViews(ViewGroup viewgroup)
    {
        super.initViews(viewgroup);
        commentEditView = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.comment_edit_text);
        android.text.InputFilter.LengthFilter lengthfilter = new android.text.InputFilter.LengthFilter(250);
        commentEditView.setFilters(new InputFilter[] {
            lengthfilter
        });
        messageCounterView = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.message_countdown);
        cancelButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_cancel);
        clearButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_clear);
        postButton = (Button)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_post);
        cancelButton.setText(com.biznessapps.layout.R.string.cancel);
        clearButton.setText(com.biznessapps.layout.R.string.reset);
        postButton.setText(com.biznessapps.layout.R.string.done);
        takePhotoButton = (ImageView)viewgroup.findViewById(com.biznessapps.layout.R.id.comments_take_photo);
        if (!usePhotoOption)
        {
            takePhotoButton.setVisibility(8);
        }
        setMessageCounterText(commentEditView.getText().toString());
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        imageToSend = null;
        if (i == 2)
        {
            imageToSend = CommonUtils.convertImageToBytes(CommonUtils.getScaledPhoto(getApplicationContext(), imageUri, intent));
        } else
        if (i == 3 && intent != null)
        {
            intent = CommonUtils.getPath(intent.getData(), getHoldActivity());
            if (intent != null)
            {
                imageToSend = CommonUtils.convertFileToBytes(new File(intent));
                return;
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        getActivity().getWindow().setSoftInputMode(16);
        int i = getArguments().getInt("SELECTED_SOCIAL_TYPE");
        mSelectedSocialNetworkHandler = SocialNetworkManager.getInstance(getActivity()).getSocialNetworkHandler(i);
        boolean flag;
        if (mSelectedSocialNetworkHandler != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.add_comments_layout, null);
        buttonsContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.buttons_container);
        progressContainer = (ViewGroup)root.findViewById(com.biznessapps.layout.R.id.progress_bar_container);
        initSettingsData();
        commentParentId = getIntent().getExtras().getString("parent_id");
        usePhotoOption = getIntent().getExtras().getBoolean("FAN_WALL_USE_PHOTO_OPTION");
        initViews(root);
        initListeners();
        return root;
    }








/*
    static Uri access$502(FanAddCommentsFragment fanaddcommentsfragment, Uri uri)
    {
        fanaddcommentsfragment.imageUri = uri;
        return uri;
    }

*/
}
