// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.social.email.EmailSocialNetworkHandler;
import com.biznessapps.common.social.facebook.FacebookSocialNetworkHandler;
import com.biznessapps.common.social.googleplus.GooglePlusSocialNetworkHandler;
import com.biznessapps.common.social.twitter.TwitterSocialNetworkHandler;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social:
//            CommonSocialNetworkHandler, OnSocialPublishListener, OnSocialStatusChangeListener

public class SocialNetworkManager
{

    public static final int SHORTEST_CHARACTER_LIMIT = 140;
    public static final int SOCIAL_EMAIL = 0;
    public static String SOCIAL_EMAIL_NAME;
    public static final int SOCIAL_FACEBOOK = 1;
    public static String SOCIAL_FACEBOOK_NAME;
    public static final int SOCIAL_GOOGLE_PLUS = 3;
    public static String SOCIAL_GOOGLE_PLUS_NAME;
    public static final int SOCIAL_TWITTER = 2;
    public static String SOCIAL_TWITTER_NAME;
    public static List mSocialNetworkHandlers = new ArrayList();
    private static SocialNetworkManager sManager = null;
    private Context mContext;
    private EmailSocialNetworkHandler mEmailSocialNetworkHandler;
    private FacebookSocialNetworkHandler mFacebookSocialNetworkHandler;
    private GooglePlusSocialNetworkHandler mGooglePlusSocialNetworkHandler;
    private CommonSocialNetworkHandler mLatestLoggedInSocialNetworkHandler;
    private TwitterSocialNetworkHandler mTwitterSocialNetworkHandler;

    public SocialNetworkManager(Context context)
    {
        mContext = context;
        initSocialHandler();
    }

    public static SocialNetworkManager getInstance(Context context)
    {
        if (sManager == null)
        {
            sManager = new SocialNetworkManager(context);
        }
        if (context instanceof Activity)
        {
            sManager.setAttachedActivity((Activity)context);
        }
        return sManager;
    }

    private void initSocialHandler()
    {
        mFacebookSocialNetworkHandler = new FacebookSocialNetworkHandler(mContext);
        mTwitterSocialNetworkHandler = new TwitterSocialNetworkHandler(mContext);
        mEmailSocialNetworkHandler = new EmailSocialNetworkHandler(mContext);
    }

    public static void registerSocialNetworkHandler(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        mSocialNetworkHandlers.add(commonsocialnetworkhandler);
    }

    public boolean checkLogin()
    {
        return checkLogin(false);
    }

    public boolean checkLogin(boolean flag)
    {
        return getLoggedInSocialHandler(flag) != null;
    }

    public EmailSocialNetworkHandler getEmailSocialNetworkHandler()
    {
        return mEmailSocialNetworkHandler;
    }

    public FacebookSocialNetworkHandler getFacebookSocialNetworkHandler()
    {
        return mFacebookSocialNetworkHandler;
    }

    public GooglePlusSocialNetworkHandler getGooglePlusSocialNetworkHandler()
    {
        return mGooglePlusSocialNetworkHandler;
    }

    public CommonSocialNetworkHandler getLatestLoggedInSocialHandler()
    {
        return getLatestLoggedInSocialHandler(false);
    }

    public CommonSocialNetworkHandler getLatestLoggedInSocialHandler(boolean flag)
    {
        CommonSocialNetworkHandler commonsocialnetworkhandler1;
label0:
        {
            commonsocialnetworkhandler1 = mLatestLoggedInSocialNetworkHandler;
            CommonSocialNetworkHandler commonsocialnetworkhandler = commonsocialnetworkhandler1;
            if (commonsocialnetworkhandler1 != null)
            {
                commonsocialnetworkhandler = commonsocialnetworkhandler1;
                if (!flag)
                {
                    commonsocialnetworkhandler = commonsocialnetworkhandler1;
                    if (commonsocialnetworkhandler1.getSocialType() == 0)
                    {
                        commonsocialnetworkhandler = null;
                    }
                }
            }
            if (commonsocialnetworkhandler != null)
            {
                commonsocialnetworkhandler1 = commonsocialnetworkhandler;
                if (commonsocialnetworkhandler.isLoggedIn())
                {
                    break label0;
                }
            }
            commonsocialnetworkhandler1 = getLoggedInSocialHandler(flag);
        }
        return commonsocialnetworkhandler1;
    }

    public CommonSocialNetworkHandler getLoggedInSocialHandler()
    {
        return getLoggedInSocialHandler(false);
    }

    public CommonSocialNetworkHandler getLoggedInSocialHandler(boolean flag)
    {
        Object obj = null;
        Iterator iterator = mSocialNetworkHandlers.iterator();
        CommonSocialNetworkHandler commonsocialnetworkhandler;
        do
        {
            commonsocialnetworkhandler = obj;
            if (!iterator.hasNext())
            {
                break;
            }
            commonsocialnetworkhandler = (CommonSocialNetworkHandler)iterator.next();
        } while (commonsocialnetworkhandler.getSocialType() == 0 && !flag || !commonsocialnetworkhandler.isLoggedIn());
        return commonsocialnetworkhandler;
    }

    public CommonSocialNetworkHandler getSocialNetworkHandler(int i)
    {
        for (Iterator iterator = mSocialNetworkHandlers.iterator(); iterator.hasNext();)
        {
            CommonSocialNetworkHandler commonsocialnetworkhandler = (CommonSocialNetworkHandler)iterator.next();
            if (commonsocialnetworkhandler.getSocialType() == i)
            {
                return commonsocialnetworkhandler;
            }
        }

        return null;
    }

    public TwitterSocialNetworkHandler getTwitterSocialNetworkHandler()
    {
        return mTwitterSocialNetworkHandler;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        for (Iterator iterator = mSocialNetworkHandlers.iterator(); iterator.hasNext(); ((CommonSocialNetworkHandler)iterator.next()).onActivityResult(i, j, intent)) { }
    }

    public void onPause(Context context)
    {
        for (Iterator iterator = mSocialNetworkHandlers.iterator(); iterator.hasNext(); ((CommonSocialNetworkHandler)iterator.next()).onPause(context)) { }
    }

    public void onResume(Context context)
    {
        for (Iterator iterator = mSocialNetworkHandlers.iterator(); iterator.hasNext(); ((CommonSocialNetworkHandler)iterator.next()).onResume(context)) { }
    }

    public boolean publishText(String s, OnSocialPublishListener onsocialpublishlistener)
    {
        Iterator iterator = mSocialNetworkHandlers.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            CommonSocialNetworkHandler commonsocialnetworkhandler = (CommonSocialNetworkHandler)iterator.next();
            if (!commonsocialnetworkhandler.isLoggedIn())
            {
                continue;
            }
            commonsocialnetworkhandler.publishText(s, onsocialpublishlistener);
            break;
        } while (true);
        return true;
    }

    public void setAttachedActivity(Activity activity)
    {
        Assert.assertTrue(activity instanceof Activity);
        mContext = activity;
        for (Iterator iterator = mSocialNetworkHandlers.iterator(); iterator.hasNext(); ((CommonSocialNetworkHandler)iterator.next()).setAttachedActivtiy(activity)) { }
    }

    public void setOnSocialStatusChangeListener(OnSocialStatusChangeListener onsocialstatuschangelistener)
    {
        for (Iterator iterator = mSocialNetworkHandlers.iterator(); iterator.hasNext(); ((CommonSocialNetworkHandler)iterator.next()).setOnSocialStatusChangeListener(onsocialstatuschangelistener)) { }
    }

    public void updateLoggedInSocialHandler(CommonSocialNetworkHandler commonsocialnetworkhandler)
    {
        mLatestLoggedInSocialNetworkHandler = commonsocialnetworkhandler;
    }

    static 
    {
        Context context = AppCore.getInstance().getAppContext();
        boolean flag;
        if (context != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        SOCIAL_FACEBOOK_NAME = context.getResources().getString(com.biznessapps.layout.R.string.facebook);
        SOCIAL_TWITTER_NAME = context.getResources().getString(com.biznessapps.layout.R.string.twitter);
        SOCIAL_GOOGLE_PLUS_NAME = context.getResources().getString(com.biznessapps.layout.R.string.google_plus);
        SOCIAL_EMAIL_NAME = context.getResources().getString(com.biznessapps.layout.R.string.email);
    }
}
