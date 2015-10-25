// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.os.AsyncTask;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.User;
import twitter4j.auth.AccessToken;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterLoginDialog, TwitterSocialNetworkHandler, TwitterUserInfo

private class <init> extends AsyncTask
{

    final TwitterLoginDialog this$0;

    protected transient Boolean doInBackground(String as[])
    {
        try
        {
            TwitterLoginDialog.access$702(TwitterLoginDialog.this, TwitterLoginDialog.access$300(TwitterLoginDialog.this).getOAuthAccessToken(TwitterLoginDialog.access$200(TwitterLoginDialog.this), TwitterLoginDialog.access$600(TwitterLoginDialog.this)));
            TwitterSocialNetworkHandler.getInstance(getContext()).accessToken = TwitterLoginDialog.access$700(TwitterLoginDialog.this);
            TwitterLoginDialog.access$800(TwitterLoginDialog.this).accessToken = TwitterLoginDialog.access$700(TwitterLoginDialog.this).getToken();
            TwitterLoginDialog.access$800(TwitterLoginDialog.this).accessTokenSecret = TwitterLoginDialog.access$700(TwitterLoginDialog.this).getTokenSecret();
            as = TwitterLoginDialog.access$300(TwitterLoginDialog.this).showUser(TwitterLoginDialog.access$700(TwitterLoginDialog.this).getUserId());
            TwitterLoginDialog.access$800(TwitterLoginDialog.this).userName = as.getName();
            TwitterLoginDialog.access$800(TwitterLoginDialog.this).userID = as.getId();
            TwitterLoginDialog.access$800(TwitterLoginDialog.this).imgURL = as.getProfileImageURL();
            TwitterSocialNetworkHandler.getInstance(getContext()).saveUserInfo(TwitterLoginDialog.access$800(TwitterLoginDialog.this));
        }
        // Misplaced declaration of an exception variable
        catch (String as[])
        {
            as.printStackTrace();
            mLoginError = as.getErrorMessage();
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(true);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    protected void onPostExecute(Boolean boolean1)
    {
        if (boolean1.booleanValue())
        {
            mLoginCompleted = true;
            mLoginError = "";
        } else
        {
            mLoginCompleted = false;
        }
        dismiss();
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Boolean)obj);
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
    }

    private ()
    {
        this$0 = TwitterLoginDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
