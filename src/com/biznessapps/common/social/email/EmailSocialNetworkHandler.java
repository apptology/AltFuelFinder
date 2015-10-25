// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.email;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialLogoutListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.net.URL;
import junit.framework.Assert;

public class EmailSocialNetworkHandler extends CommonSocialNetworkHandler
{

    private static final int CHARACTER_LIMIT = 65535;
    private static final String PREFS_KEY_EMAIL_ACCOUNT = "email_account";
    private static EmailSocialNetworkHandler sInstance;

    public EmailSocialNetworkHandler(Context context)
    {
        super(context, 0, SocialNetworkManager.SOCIAL_EMAIL_NAME);
    }

    private void _login()
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mContext);
        ViewGroup viewgroup = (ViewGroup)ViewUtils.loadLayout(mContext, com.biznessapps.layout.R.layout.common_email_login_dialog);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tvDescription)).setText(com.biznessapps.layout.R.string.email_login_description);
        final EditText etEmail = (EditText)viewgroup.findViewById(com.biznessapps.layout.R.id.etEmail);
        builder.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() );
        builder.setPositiveButton(com.biznessapps.layout.R.string.ok, new android.content.DialogInterface.OnClickListener() );
        builder.setView(viewgroup);
        builder.setTitle(mContext.getString(com.biznessapps.layout.R.string.email_login_title));
        builder.show();
    }

    public static EmailSocialNetworkHandler getInstance(Context context)
    {
        if (sInstance == null)
        {
            sInstance = SocialNetworkManager.getInstance(context).getEmailSocialNetworkHandler();
        }
        SocialNetworkManager.getInstance(context).setAttachedActivity((Activity)context);
        return sInstance;
    }

    public int getCharacterLimit()
    {
        return 65535;
    }

    public String getEmailAccount()
    {
        return AppCore.getInstance().getCachingManager().getFromSharedPreferences(mContext, "email_account");
    }

    public String getUserID()
    {
        return getEmailAccount();
    }

    public String getUserName()
    {
        return mContext.getString(com.biznessapps.layout.R.string.anonymous_user);
    }

    public String getUserProfileURL()
    {
        return null;
    }

    public boolean isAvailable()
    {
        return true;
    }

    public boolean isLoggedIn()
    {
        return !StringUtils.isEmpty(getEmailAccount());
    }

    public boolean like(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (like(onsocialactioncompletedlistener));
        return false;
    }

    public boolean login(OnSocialLoginListener onsocialloginlistener)
    {
        if (!login(onsocialloginlistener))
        {
            return false;
        }
        Assert.assertTrue(mContext instanceof Activity);
        if (!isLoggedIn())
        {
            _login();
        } else
        {
            mDefaultSocialLoginListener.onLoginCompleted(this);
        }
        return true;
    }

    public boolean logout(OnSocialLogoutListener onsociallogoutlistener)
    {
        if (!logout(onsociallogoutlistener))
        {
            return false;
        } else
        {
            setEmailAccount("");
            mDefaultSocialLogoutListener.onLogoffCompleted(this);
            return true;
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        onActivityResult(i, j, intent);
    }

    public void onPause(Context context)
    {
        onPause(context);
    }

    public void onResume(Context context)
    {
        onResume(context);
    }

    public boolean publishText(String s, OnSocialPublishListener onsocialpublishlistener)
    {
        if (publishText(s, onsocialpublishlistener));
        return false;
    }

    public boolean publishURL(URL url, OnSocialPublishListener onsocialpublishlistener)
    {
        if (publishURL(url, onsocialpublishlistener));
        return false;
    }

    public void setEmailAccount(String s)
    {
        AppCore.getInstance().getCachingManager().saveInSharedPreferences(mContext, s, "email_account");
    }

    public boolean unlike(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (unlike(onsocialactioncompletedlistener));
        return false;
    }







}
