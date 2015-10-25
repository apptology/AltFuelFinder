// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social.googleplus;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.biznessapps.common.social.CommonSocialNetworkHandler;
import com.biznessapps.common.social.OnCommonSocialLoginListener;
import com.biznessapps.common.social.OnSocialActionCompletedListener;
import com.biznessapps.common.social.OnSocialLoginListener;
import com.biznessapps.common.social.OnSocialLogoutListener;
import com.biznessapps.common.social.OnSocialPublishListener;
import com.biznessapps.common.social.SocialNetworkManager;
import com.facebook.SharedPreferencesTokenCachingStrategy;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.plus.PlusClient;
import com.google.android.gms.plus.model.people.Person;
import java.net.URL;
import junit.framework.Assert;

// Referenced classes of package com.biznessapps.common.social.googleplus:
//            GooglePlusUserInfo, MomentUtil

public class GooglePlusSocialNetworkHandler extends CommonSocialNetworkHandler
    implements com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks, com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener, com.google.android.gms.plus.PlusClient.OnAccessRevokedListener
{

    private static final String CACHE_KEY_GOOGLE_PROFILE_URL = "google_profile_url";
    private static final String CACHE_KEY_GOOGLE_USER_NAME = "google_user_name";
    public static final int CHARACTER_LIMIT = 5000;
    private static final String GOOGLE_SHARED_PREFERENCES_KEY = "prefs_google";
    private static final String LABEL_VIEW_ITEM = "VIEW_ITEM";
    private static final String PLUS_DEEP_LINK_ID = "/+/mobile/android/";
    private static final String PLUS_DEEP_LINK_URL = "https://developers.google.com/+/mobile/android/";
    private static final int REQUEST_CODE_GET_GOOGLE_PLAY_SERVICES = -3;
    private static final int REQUEST_CODE_PUBLISH = 10001;
    private static final int REQUEST_CODE_SIGN_IN = 10000;
    private static GooglePlusSocialNetworkHandler sInstance;
    private ConnectionResult mConnectionResult;
    private boolean mIsLogging;
    private PlusClient mPlusClient;
    private SharedPreferencesTokenCachingStrategy mTokenCache;
    public GooglePlusUserInfo mUserInfo;

    public GooglePlusSocialNetworkHandler(Context context)
    {
        super(context, 3, SocialNetworkManager.SOCIAL_GOOGLE_PLUS_NAME);
        mIsLogging = false;
        mTokenCache = new SharedPreferencesTokenCachingStrategy(mContext, "prefs_google");
        mUserInfo = loadUserInfo();
    }

    public static GooglePlusSocialNetworkHandler getInstance(Context context)
    {
        if (sInstance == null)
        {
            sInstance = SocialNetworkManager.getInstance(context).getGooglePlusSocialNetworkHandler();
        }
        SocialNetworkManager.getInstance(context).setAttachedActivity((Activity)context);
        return sInstance;
    }

    public boolean checkAvailable()
    {
        int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext);
        if (i == 0)
        {
            return true;
        } else
        {
            if (!GooglePlayServicesUtil.isUserRecoverableError(i));
            return false;
        }
    }

    public int getCharacterLimit()
    {
        return 5000;
    }

    public String getUserID()
    {
        return mUserInfo.userId;
    }

    public String getUserName()
    {
        return mUserInfo.userName;
    }

    public String getUserProfileURL()
    {
        return mUserInfo.profileUrl;
    }

    public boolean isAvailable()
    {
        return checkAvailable();
    }

    public boolean isLoggedIn()
    {
        return mPlusClient != null && mPlusClient.isConnected();
    }

    public boolean like(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (super.like(onsocialactioncompletedlistener));
        return false;
    }

    public GooglePlusUserInfo loadUserInfo()
    {
        GooglePlusUserInfo googleplususerinfo = new GooglePlusUserInfo();
        loadUserInfo(googleplususerinfo);
        return googleplususerinfo;
    }

    public void loadUserInfo(GooglePlusUserInfo googleplususerinfo)
    {
        Bundle bundle;
        boolean flag;
        if (googleplususerinfo != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        Assert.assertTrue(flag);
        bundle = mTokenCache.load();
        googleplususerinfo.userName = bundle.getString("google_user_name");
        googleplususerinfo.profileUrl = bundle.getString("google_profile_url");
    }

    public boolean login(OnSocialLoginListener onsocialloginlistener)
    {
        if (!super.login(onsocialloginlistener))
        {
            return false;
        }
        if (mIsLogging)
        {
            mDefaultSocialLoginListener.onError(this, "Error", "Concurrent Logging");
            return false;
        }
        Assert.assertTrue(mContext instanceof Activity);
        if (!mPlusClient.isConnected())
        {
            mIsLogging = true;
            if (mConnectionResult != null)
            {
                try
                {
                    mConnectionResult.startResolutionForResult((Activity)mContext, 10000);
                }
                // Misplaced declaration of an exception variable
                catch (OnSocialLoginListener onsocialloginlistener)
                {
                    mConnectionResult = null;
                    mPlusClient.connect();
                }
            }
        } else
        {
            mDefaultSocialLoginListener.onLoginCompleted(this);
        }
        return true;
    }

    public boolean logout(OnSocialLogoutListener onsociallogoutlistener)
    {
        if (!super.logout(onsociallogoutlistener))
        {
            return false;
        }
        if (mPlusClient.isConnected())
        {
            mPlusClient.revokeAccessAndDisconnect(this);
            mPlusClient.clearDefaultAccount();
            mUserInfo.userName = null;
            saveUserInfo(mUserInfo);
            mPlusClient.disconnect();
            mPlusClient.connect();
        }
        mDefaultSocialLogoutListener.onLogoffCompleted(this);
        return true;
    }

    public void onAccessRevoked(ConnectionResult connectionresult)
    {
        if (!connectionresult.isSuccess())
        {
            mPlusClient.disconnect();
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (i != 10000 && i != -3) goto _L2; else goto _L1
_L1:
        if (j != -1) goto _L4; else goto _L3
_L3:
        if (!mPlusClient.isConnected() && !mPlusClient.isConnecting())
        {
            mConnectionResult = null;
            mPlusClient.connect();
        }
_L6:
        return;
_L4:
        mIsLogging = false;
        mDefaultSocialLoginListener.onError(this, String.valueOf(j), String.valueOf(j));
        return;
_L2:
        if (i == 10001)
        {
            if (j == -1)
            {
                mDefaultSocialPublishListener.onPublishCompleted(this);
                return;
            } else
            {
                mDefaultSocialPublishListener.onError(this, String.valueOf(j), String.valueOf(j));
                return;
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void onConnected(Bundle bundle)
    {
        Assert.assertTrue(mPlusClient.isConnected());
        mIsLogging = false;
        mUserInfo.userName = mPlusClient.getAccountName();
        bundle = mPlusClient.getCurrentPerson();
        if (bundle != null)
        {
            mUserInfo.userId = bundle.getId();
            mUserInfo.userName = bundle.getDisplayName();
            mUserInfo.profileUrl = bundle.getImage().getUrl();
        }
        saveUserInfo(mUserInfo);
        mDefaultSocialLoginListener.onLoginCompleted(this);
    }

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        mConnectionResult = connectionresult;
        if (!mIsLogging)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        mConnectionResult.startResolutionForResult((Activity)mContext, 10000);
        return;
        connectionresult;
        mConnectionResult = null;
        mPlusClient.connect();
        return;
    }

    public void onDisconnected()
    {
        mPlusClient.connect();
    }

    public void onPause(Context context)
    {
        super.onPause(context);
        if (!mIsLogging)
        {
            mPlusClient.disconnect();
        }
    }

    public void onResume(Context context)
    {
        super.onResume(context);
        if (!mIsLogging)
        {
            mPlusClient = (new com.google.android.gms.plus.PlusClient.Builder(mContext, this, this)).setActions(MomentUtil.ACTIONS).setScopes(new String[] {
                "https://www.googleapis.com/auth/plus.login"
            }).build();
            mPlusClient.connect();
        }
    }

    public boolean publishText(String s, OnSocialPublishListener onsocialpublishlistener)
    {
        if (!super.publishText(s, onsocialpublishlistener))
        {
            return false;
        }
        if (mPlusClient.isConnected())
        {
            Assert.assertTrue(mContext instanceof Activity);
            onsocialpublishlistener = Uri.parse((new StringBuilder()).append("https://developers.google.com/+/mobile/android/").append("/?view=true").toString());
            String s1 = (new StringBuilder()).append("/+/mobile/android/").append("/?view=true").toString();
            com.google.android.gms.plus.PlusShare.Builder builder = new com.google.android.gms.plus.PlusShare.Builder((Activity)mContext, mPlusClient);
            builder.addCallToAction("VIEW_ITEM", onsocialpublishlistener, s1);
            builder.setContentUrl(Uri.parse("https://developers.google.com/+/mobile/android/"));
            builder.setContentDeepLinkId("/+/mobile/android/", null, null, null);
            builder.setText(s);
            ((Activity)mContext).startActivityForResult(builder.getIntent(), 10001);
        } else
        {
            login(new OnCommonSocialLoginListener(onsocialpublishlistener) );
        }
        return true;
    }

    public boolean publishURL(URL url, OnSocialPublishListener onsocialpublishlistener)
    {
        if (publishURL(url, onsocialpublishlistener));
        return false;
    }

    public void saveUserInfo(GooglePlusUserInfo googleplususerinfo)
    {
        Bundle bundle = mTokenCache.load();
        bundle.putString("google_user_name", googleplususerinfo.userName);
        bundle.putString("google_profile_url", googleplususerinfo.profileUrl);
        mTokenCache.save(bundle);
    }

    public boolean unlike(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        if (unlike(onsocialactioncompletedlistener));
        return false;
    }


}
