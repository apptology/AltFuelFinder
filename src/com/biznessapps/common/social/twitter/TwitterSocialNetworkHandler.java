// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.twitter;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialLogoutListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.facebook.SharedPreferencesTokenCachingStrategy;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import junit.framework.Assert;
import twitter4j.StatusUpdate;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.auth.AccessToken;
import twitter4j.auth.RequestToken;
import twitter4j.conf.ConfigurationBuilder;

// Referenced classes of package com.biznessapps.common.social.twitter:
//            TwitterUserInfo, TwitterLoginDialog

public class TwitterSocialNetworkHandler extends CommonSocialNetworkHandler
{
    final class PostImage extends AsyncTask
    {

        private OnSocialPublishListener mListener;
        final TwitterSocialNetworkHandler this$0;

        protected transient Boolean doInBackground(String as[])
        {
            Object obj;
            boolean flag;
            if (mIsLoggedIn && twitter != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            obj = as[0];
            as = as[1];
            try
            {
                obj = new StatusUpdate(((String) (obj)));
                ((StatusUpdate) (obj)).setMedia(new File(as));
                twitter.updateStatus(((StatusUpdate) (obj)));
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                Log.d("TAG", (new StringBuilder()).append("Pic Upload error").append(as.getMessage()).toString());
                ((Activity)
// JavaClassFileOutputException: get_constant: invalid tag

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected void onPostExecute(Boolean boolean1)
        {
            if (mListener != null)
            {
                mListener.onPublishCompleted(TwitterSocialNetworkHandler.this);
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Boolean)obj);
        }

        protected void onPreExecute()
        {
            onPreExecute();
        }


        public PostImage(OnSocialPublishListener onsocialpublishlistener)
        {
            this$0 = TwitterSocialNetworkHandler.this;
            super();
            mListener = onsocialpublishlistener;
        }
    }

    final class PostTweet extends AsyncTask
    {

        private TwitterException mException;
        private OnSocialPublishListener mListener;
        final TwitterSocialNetworkHandler this$0;

        protected volatile Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        protected transient String doInBackground(String as[])
        {
            ConfigurationBuilder configurationbuilder;
            boolean flag;
            if (mIsLoggedIn && twitter != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            as = as[0];
            configurationbuilder = new ConfigurationBuilder();
            configurationbuilder.setOAuthConsumerKey(TWITTER_CONSUMER_KEY);
            configurationbuilder.setOAuthConsumerSecret(TWITTER_CONSUMER_SECRET);
            try
            {
                as = twitter.updateStatus(as).toString();
            }
            // Misplaced declaration of an exception variable
            catch (String as[])
            {
                as.printStackTrace();
                mException = as;
                return null;
            }
            return as;
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((String)obj);
        }

        protected void onPostExecute(String s)
        {
label0:
            {
                if (mListener != null)
                {
                    if (s == null)
                    {
                        break label0;
                    }
                    mListener.onPublishCompleted(TwitterSocialNetworkHandler.this);
                }
                return;
            }
            mListener.onError(TwitterSocialNetworkHandler.this, String.valueOf(mException.getErrorCode()), mException.getErrorMessage());
        }

        protected void onPreExecute()
        {
            onPreExecute();
        }

        public PostTweet(OnSocialPublishListener onsocialpublishlistener)
        {
            this$0 = TwitterSocialNetworkHandler.this;
            super();
            mListener = onsocialpublishlistener;
        }
    }


    public static final String BIZNESS_TWITTER_CALLBACK_URL = "http://www.google.com/callback";
    public static final String BIZNESS_TWITTER_CONSUMER_KEY = "ibeMh2JAmmQw09B1nfap5Q";
    public static final String BIZNESS_TWITTER_CONSUMER_SECRET = "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38";
    private static final String CACHE_KEY_TWITTER_ACCESS_TOKEN = "twitter_access_token";
    private static final String CACHE_KEY_TWITTER_ACCESS_TOKEN_SECRET = "twitter_access_token_secret";
    private static final String CACHE_KEY_TWITTER_IMAGE_URL = "twitter_image_url";
    private static final String CACHE_KEY_TWITTER_USER_ID = "twitter_user_id";
    private static final String CACHE_KEY_TWITTER_USER_NAME = "twitter_user_name";
    public static final int CHARACTER_LIMIT = 140;
    private static final String TWITTER_SHARED_PREFERENCES_KEY = "prefs_twitter";
    private static TwitterSocialNetworkHandler sInstance;
    public String TWITTER_CONSUMER_KEY;
    public String TWITTER_CONSUMER_SECRET;
    public AccessToken accessToken;
    private boolean mIsLoggedIn;
    private SharedPreferencesTokenCachingStrategy mTokenCache;
    public String oauthURL;
    public String oauthVerifier;
    public RequestToken requestToken;
    public Twitter twitter;
    public TwitterUserInfo userInfo;

    public TwitterSocialNetworkHandler(Context context)
    {
        CommonSocialNetworkHandler(context, 2, SocialNetworkManager.SOCIAL_TWITTER_NAME);
        TWITTER_CONSUMER_KEY = "";
        TWITTER_CONSUMER_SECRET = "";
        requestToken = null;
        mIsLoggedIn = false;
        sInstance = this;
        initTwitter();
    }

    private void createNewTwitterContext()
    {
        if (twitter != null)
        {
            twitter.setOAuthAccessToken(null);
        }
        twitter = (new TwitterFactory()).getInstance();
        twitter.setOAuthConsumer(TWITTER_CONSUMER_KEY, TWITTER_CONSUMER_SECRET);
    }

    private String getBundleString(Bundle bundle, String s)
    {
        s = bundle.getString(s);
        bundle = s;
        if (s == null)
        {
            bundle = "";
        }
        return bundle;
    }

    public static TwitterSocialNetworkHandler getInstance(Context context)
    {
        if (sInstance == null)
        {
            sInstance = SocialNetworkManager.getInstance(context).getTwitterSocialNetworkHandler();
        }
        if (context instanceof Activity)
        {
            SocialNetworkManager.getInstance(context).setAttachedActivity((Activity)context);
        }
        return sInstance;
    }

    private void initTwitter()
    {
        setConsumerKey("ibeMh2JAmmQw09B1nfap5Q", "dkomjgXm50XtNmWDn0FhJJpswGvdfIPqfYwfxqMar38");
        createNewTwitterContext();
        mTokenCache = new SharedPreferencesTokenCachingStrategy(mContext, "prefs_twitter");
        userInfo = loadUserInfo();
        if (userInfo.isLoggedIn())
        {
            accessToken = new AccessToken(userInfo.accessToken, userInfo.accessTokenSecret, userInfo.userID);
            twitter.setOAuthAccessToken(accessToken);
            mIsLoggedIn = true;
        }
    }

    public int getCharacterLimit()
    {
        return 140;
    }

    public String getUserID()
    {
        if (userInfo != null)
        {
            return String.valueOf(userInfo.userID);
        } else
        {
            return null;
        }
    }

    public String getUserName()
    {
        if (userInfo != null)
        {
            return String.valueOf(userInfo.userName);
        } else
        {
            return null;
        }
    }

    public String getUserProfileURL()
    {
        if (userInfo != null)
        {
            return String.valueOf(userInfo.imgURL);
        } else
        {
            return null;
        }
    }

    public boolean isLoggedIn()
    {
        return mIsLoggedIn;
    }

    public boolean like(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (!like(onsocialactioncompletedlistener))
        {
            return false;
        } else
        {
            mDefaultSocialActionCompletedListener.onError(this, "Error", "Not Implemented Yet");
            return false;
        }
    }

    public TwitterUserInfo loadUserInfo()
    {
        TwitterUserInfo twitteruserinfo = new TwitterUserInfo();
        loadUserInfo(twitteruserinfo);
        return twitteruserinfo;
    }

    public void loadUserInfo(TwitterUserInfo twitteruserinfo)
    {
        Bundle bundle;
        boolean flag;
        if (twitteruserinfo != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        bundle = mTokenCache.load();
        twitteruserinfo.accessToken = getBundleString(bundle, "twitter_access_token");
        twitteruserinfo.accessTokenSecret = getBundleString(bundle, "twitter_access_token_secret");
        twitteruserinfo.userName = getBundleString(bundle, "twitter_user_name");
        twitteruserinfo.userID = bundle.getLong("twitter_user_id");
        twitteruserinfo.imgURL = getBundleString(bundle, "twitter_image_url");
    }

    public boolean login(final OnSocialLoginListener twitterLoginDialog)
    {
        if (!login(twitterLoginDialog))
        {
            return false;
        }
        if (mIsLoggedIn)
        {
            mDefaultSocialLoginListener.onLoginCompleted(this);
            return false;
        } else
        {
            twitterLoginDialog = TwitterLoginDialog.newInstance(mContext);
            twitterLoginDialog.setOnDismissListener(new android.content.DialogInterface.OnDismissListener() );
            twitterLoginDialog.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() );
            return false;
        }
    }

    public boolean logout(OnSocialLogoutListener onsociallogoutlistener)
    {
        if (!logout(onsociallogoutlistener))
        {
            return false;
        } else
        {
            userInfo.accessToken = "";
            userInfo.accessTokenSecret = "";
            userInfo.userID = 0L;
            userInfo.userName = "";
            userInfo.imgURL = "";
            oauthURL = null;
            requestToken = null;
            twitter = null;
            saveUserInfo(userInfo);
            oauthVerifier = null;
            createNewTwitterContext();
            mIsLoggedIn = false;
            mDefaultSocialLogoutListener.onLogoffCompleted(this);
            return false;
        }
    }

    public boolean publishImage(String s, String s1, Bitmap bitmap, OnSocialPublishListener onsocialpublishlistener)
    {
        while (!publishImage(s, s1, bitmap, onsocialpublishlistener) || bitmap == null || bitmap.isRecycled()) 
        {
            return false;
        }
        login(new OnCommonSocialLoginListener(s1) );
        return true;
    }

    public boolean publishText(String s, OnSocialPublishListener onsocialpublishlistener)
    {
        if (!publishText(s, onsocialpublishlistener))
        {
            return false;
        } else
        {
            login(new OnCommonSocialLoginListener(s) );
            return true;
        }
    }

    public boolean publishURL(URL url, OnSocialPublishListener onsocialpublishlistener)
    {
        if (!publishURL(url, onsocialpublishlistener))
        {
            return false;
        } else
        {
            return publishText(url.toString(), onsocialpublishlistener);
        }
    }

    public void saveUserInfo(TwitterUserInfo twitteruserinfo)
    {
        Bundle bundle = mTokenCache.load();
        bundle.putString("twitter_access_token", twitteruserinfo.accessToken);
        bundle.putString("twitter_access_token_secret", twitteruserinfo.accessTokenSecret);
        bundle.putString("twitter_user_name", twitteruserinfo.userName);
        bundle.putLong("twitter_user_id", twitteruserinfo.userID);
        bundle.putString("twitter_image_url", twitteruserinfo.imgURL);
        mTokenCache.save(bundle);
    }

    public void setConsumerKey(String s, String s1)
    {
        TWITTER_CONSUMER_KEY = s;
        TWITTER_CONSUMER_SECRET = s1;
    }

    public boolean unlike(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (!unlike(onsocialactioncompletedlistener))
        {
            return false;
        } else
        {
            mDefaultSocialActionCompletedListener.onError(this, "Error", "Not Implemented Yet");
            return false;
        }
    }



/*
    static boolean access$002(TwitterSocialNetworkHandler twittersocialnetworkhandler, boolean flag)
    {
        twittersocialnetworkhandler.mIsLoggedIn = flag;
        return flag;
    }

*/










    // Unreferenced inner class com/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1

/* anonymous class */
    class PostImage._cls1
        implements Runnable
    {

        final PostImage this$1;
        final Exception val$e;

        public void run()
        {
            mListener.onError(_fld0, e.getMessage(), e.getMessage());
        }

            
            {
                this$1 = final_postimage;
                e = Exception.this;
                super();
            }
    }

}
