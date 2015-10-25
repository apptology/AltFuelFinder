// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.util.Log;
import com.biznessapps.api.AppCore;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialLogoutListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.biznessapps.utils.StringUtils;
import com.facebook.FacebookRequestError;
import com.facebook.HttpMethod;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.SessionLoginBehavior;
import com.facebook.SessionState;
import com.facebook.SharedPreferencesTokenCachingStrategy;
import com.facebook.model.GraphUser;
import java.net.URL;
import java.util.List;
import junit.framework.Assert;

public class FacebookSocialNetworkHandler extends CommonSocialNetworkHandler
{

    private static final String CACHE_USER_ID_KEY = "FacebookUserId";
    private static final String CACHE_USER_NAME_KEY = "FacebookUserName";
    private static final String CACHE_USER_PROFILE_URL = "FacebookProfileURL";
    public static final int CHARACTER_LIMIT = 5000;
    private static final String LOG_TAG = "social_facebook";
    private static FacebookSocialNetworkHandler sInstance;
    private String FACEBOOK_APP_ID;
    private boolean mIsLogging;
    private String mPendingPermissions[];
    private Session mSession;
    private com.facebook.Session.StatusCallback mSessionStatusCallback;
    private SharedPreferencesTokenCachingStrategy mTokenCache;
    private String mUserID;
    private String mUserName;

    public FacebookSocialNetworkHandler(Context context)
    {
        super(context, 1, SocialNetworkManager.SOCIAL_FACEBOOK_NAME);
        FACEBOOK_APP_ID = "";
        mIsLogging = false;
        mSessionStatusCallback = new com.facebook.Session.StatusCallback() ;
        sInstance = this;
        initTokenStorage();
        initUI();
        setFacebookAppId(AppCore.getInstance().getAppSettings().getFacebookAppId());
    }

    private boolean _login(SessionLoginBehavior sessionloginbehavior, String as[])
    {
        if (mIsLogging)
        {
            Log.d("social_facebook", "Still on the logging");
            mDefaultSocialLoginListener.onError(this, "Concurrent Logging", "Still on the logging");
            return false;
        }
        mIsLogging = true;
        mPendingPermissions = as;
        if (isSessionActive())
        {
            applyPermission(as);
            if (mUserName != null && mUserID != null)
            {
                mIsLogging = false;
                mDefaultSocialLoginListener.onLoginCompleted(this);
                return true;
            } else
            {
                fetchMe(new OnSocialActionCompletedListener() );
                return true;
            }
        }
        if (!(mContext instanceof Activity))
        {
            Log.e("social_facebook", "Activity should be attached before calling facebook api");
            mIsLogging = false;
            mDefaultSocialLoginListener.onError(this, "Context is not activity", "Activity should be attached before calling facebook api");
            return false;
        } else
        {
            safeCreateSession(true);
            sessionloginbehavior = new OpenRequest((Activity)mContext);
            sessionloginbehavior.setLoginBehavior(SessionLoginBehavior.SUPPRESS_SSO);
            sessionloginbehavior.setRequestCode(64206);
            mSession.openForRead(sessionloginbehavior);
            return true;
        }
    }

    private void applyPermission(String as[])
    {
        boolean flag;
        if (mSession != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        if (!isSubsetOf(as, mSession.getPermissions()))
        {
            Assert.assertTrue(mContext instanceof Activity);
            as = new NewPermissionsRequest((Activity)mContext, as);
            mSession.requestNewPublishPermissions(as);
        }
        mPendingPermissions = null;
    }

    private void clear()
    {
        mTokenCache.clear();
        restore();
    }

    private void fetchMe(final OnSocialActionCompletedListener listener)
    {
        if (isSessionActive())
        {
            boolean flag;
            if (mSession != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            Assert.assertTrue(flag);
            Request.newMeRequest(mSession, new com.facebook.Request.GraphUserCallback() {

                final FacebookSocialNetworkHandler this$0;
                final OnSocialActionCompletedListener val$listener;

                public void onCompleted(GraphUser graphuser, Response response)
                {
                    mIsLogging = false;
                    if (response != null)
                    {
                        if (response.getRequest().getSession() == mSession)
                        {
                            update(graphuser);
                            if (listener != null)
                            {
                                listener.onActionCompleted(FacebookSocialNetworkHandler.this);
                            }
                        }
                    } else
                    if (listener != null)
                    {
                        listener.onError(FacebookSocialNetworkHandler.this, null, null);
                        return;
                    }
                }

            
            {
                this$0 = FacebookSocialNetworkHandler.this;
                listener = onsocialactioncompletedlistener;
                super();
            }
            }).executeAsync();
        } else
        {
            listener.onError(this, null, null);
        }
        mIsLogging = false;
    }

    public static FacebookSocialNetworkHandler getInstance(Context context)
    {
        if (sInstance == null)
        {
            sInstance = SocialNetworkManager.getInstance(context).getFacebookSocialNetworkHandler();
        }
        if (!(context instanceof Activity))
        {
            return sInstance;
        } else
        {
            SocialNetworkManager.getInstance(context).setAttachedActivity((Activity)context);
            return sInstance;
        }
    }

    private void initTokenStorage()
    {
        mTokenCache = new SharedPreferencesTokenCachingStrategy(mContext);
        restore();
    }

    private void initUI()
    {
    }

    private boolean isSubsetOf(String as[], List list)
    {
        if (as != null)
        {
            if (list == null)
            {
                return false;
            }
            int j = as.length;
            int i = 0;
            while (i < j) 
            {
                if (!list.contains(as[i]))
                {
                    return false;
                }
                i++;
            }
        }
        return true;
    }

    private void restore()
    {
        Bundle bundle = mTokenCache.load();
        mUserID = bundle.getString("FacebookUserId");
        mUserName = bundle.getString("FacebookUserName");
    }

    private void safeCreateSession(boolean flag)
    {
        while (StringUtils.isEmpty(FACEBOOK_APP_ID) || !flag && mSession != null) 
        {
            return;
        }
        mSession = (new com.facebook.Session.Builder(mContext)).setTokenCachingStrategy(mTokenCache).setApplicationId(FACEBOOK_APP_ID).build();
        mSession.addCallback(mSessionStatusCallback);
    }

    private void update(GraphUser graphuser)
    {
        if (graphuser == null)
        {
            return;
        } else
        {
            mUserID = graphuser.getId();
            mUserName = graphuser.getName();
            graphuser = mTokenCache.load();
            graphuser.putString("FacebookUserId", mUserID);
            graphuser.putString("FacebookUserName", mUserName);
            graphuser.putString("FacebookProfileURL", String.format("http://graph.facebook.com/%s/picture", new Object[] {
                mUserID
            }));
            mTokenCache.save(graphuser);
            return;
        }
    }

    public String getAccessToken()
    {
        if (!isLoggedIn())
        {
            return null;
        }
        boolean flag;
        if (mSession != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        Assert.assertTrue(mSession.isOpened());
        return mSession.getAccessToken();
    }

    public int getCharacterLimit()
    {
        return 5000;
    }

    public String getUserID()
    {
        return mUserID;
    }

    public String getUserName()
    {
        return mUserName;
    }

    public String getUserProfileURL()
    {
        return String.format("http://graph.facebook.com/%s/picture", new Object[] {
            getUserID()
        });
    }

    public boolean isLoggedIn()
    {
        boolean flag1 = false;
        safeCreateSession(false);
        boolean flag = flag1;
        if (mSession != null)
        {
            flag = flag1;
            if (!StringUtils.isEmpty(mSession.getAccessToken()))
            {
                flag = true;
            }
        }
        return flag;
    }

    public boolean isSessionActive()
    {
        safeCreateSession(false);
        return mSession.isOpened();
    }

    public boolean like(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (!super.like(onsocialactioncompletedlistener))
        {
            return false;
        } else
        {
            Log.e("social_facebook", "Not implemented Yet.");
            return false;
        }
    }

    public boolean login(OnSocialLoginListener onsocialloginlistener)
    {
        return login(onsocialloginlistener, null);
    }

    public boolean login(OnSocialLoginListener onsocialloginlistener, String as[])
    {
        if (!super.login(onsocialloginlistener))
        {
            return false;
        } else
        {
            return _login(SessionLoginBehavior.SUPPRESS_SSO, as);
        }
    }

    public boolean logout(OnSocialLogoutListener onsociallogoutlistener)
    {
        if (!super.logout(onsociallogoutlistener))
        {
            return false;
        }
        if (mSession != null)
        {
            mSession.closeAndClearTokenInformation();
        }
        mPendingPermissions = null;
        mDefaultSocialLogoutListener.onLogoffCompleted(this);
        return false;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (mSession != null)
        {
            mSession.onActivityResult((Activity)mContext, i, j, intent);
        }
    }

    public boolean publishImage(String s, final String description, final Bitmap bitmap, OnSocialPublishListener onsocialpublishlistener)
    {
        while (!super.publishImage(s, description, bitmap, onsocialpublishlistener) || bitmap == null || bitmap.isRecycled()) 
        {
            return false;
        }
        login(new OnSocialLoginListener() , new String[] {
            "publish_actions"
        });
        return true;
    }

    public boolean publishText(final String text, OnSocialPublishListener onsocialpublishlistener)
    {
        if (!publishText(text, onsocialpublishlistener))
        {
            return false;
        } else
        {
            login(new OnSocialLoginListener() , new String[] {
                "publish_actions"
            });
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

    public void setFacebookAppId(String s)
    {
        FACEBOOK_APP_ID = s;
        safeCreateSession(true);
    }

    public boolean unlike(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (!unlike(onsocialactioncompletedlistener))
        {
            return false;
        } else
        {
            Log.e("social_facebook", "Not implemented Yet.");
            return false;
        }
    }




















/*
    static boolean access$902(FacebookSocialNetworkHandler facebooksocialnetworkhandler, boolean flag)
    {
        facebooksocialnetworkhandler.mIsLogging = flag;
        return flag;
    }

*/

    // Unreferenced inner class com/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$1$1

/* anonymous class */

    // Unreferenced inner class com/biznessapps/common/social/facebook/FacebookSocialNetworkHandler$2$1

/* anonymous class */
}
