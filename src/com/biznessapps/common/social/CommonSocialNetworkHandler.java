// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.common.social;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import java.net.URL;

// Referenced classes of package com.biznessapps.common.social:
//            SocialNetworkManager, OnSocialActionCompletedListener, OnSocialLoginListener, OnSocialLogoutListener, 
//            OnSocialPublishListener, OnSocialStatusChangeListener, OnSocialListener

public abstract class CommonSocialNetworkHandler
{

    private static final int SOCIAL_ACTION_LOGIN = 0;
    private static final int SOCIAL_ACTION_LOGOFF = 1;
    private static final int SOCIAL_ACTION_OTHERS = 3;
    private static final int SOCIAL_ACTION_PUBLISH = 2;
    protected Context mContext;
    protected OnSocialActionCompletedListener mDefaultSocialActionCompletedListener;
    protected OnSocialLoginListener mDefaultSocialLoginListener;
    protected OnSocialLogoutListener mDefaultSocialLogoutListener;
    protected OnSocialPublishListener mDefaultSocialPublishListener;
    protected boolean mEnableProgressShown;
    protected ProgressDialog mLoginoffProgressDialog;
    protected ProgressDialog mOtherProgressDialog;
    protected ProgressDialog mPublishProgressDialog;
    private OnSocialActionCompletedListener mSocialActionCompletedListener;
    private OnSocialLoginListener mSocialLoginListener;
    private OnSocialLogoutListener mSocialLogoutListener;
    protected String mSocialName;
    private OnSocialPublishListener mSocialPublishListener;
    private OnSocialStatusChangeListener mSocialStatusChangeListener;
    protected int mSocialType;

    public CommonSocialNetworkHandler(Context context, int i, String s)
    {
        mEnableProgressShown = true;
        mDefaultSocialLoginListener = new OnSocialLoginListener() {

            final CommonSocialNetworkHandler this$0;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                dismissProgressDialog(0);
                if (mSocialLoginListener != null)
                {
                    mSocialLoginListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                mSocialLoginListener = null;
            }

            public void onLoginCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                dismissProgressDialog(0);
                SocialNetworkManager.getInstance(mContext).updateLoggedInSocialHandler(CommonSocialNetworkHandler.this);
                if (mSocialLoginListener != null)
                {
                    mSocialLoginListener.onLoginCompleted(commonsocialnetworkhandler);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onLoginCompleted(commonsocialnetworkhandler);
                }
                mSocialLoginListener = null;
            }

            
            {
                this$0 = CommonSocialNetworkHandler.this;
                super();
            }
        };
        mDefaultSocialLogoutListener = new OnSocialLogoutListener() {

            final CommonSocialNetworkHandler this$0;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                dismissProgressDialog(1);
                if (mSocialLogoutListener != null)
                {
                    mSocialLogoutListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                mSocialLoginListener = null;
            }

            public void onLogoffCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                dismissProgressDialog(1);
                SocialNetworkManager.getInstance(mContext).updateLoggedInSocialHandler(null);
                if (mSocialLogoutListener != null)
                {
                    mSocialLogoutListener.onLogoffCompleted(commonsocialnetworkhandler);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onLogoffCompleted(commonsocialnetworkhandler);
                }
                mSocialLogoutListener = null;
            }

            
            {
                this$0 = CommonSocialNetworkHandler.this;
                super();
            }
        };
        mDefaultSocialPublishListener = new OnSocialPublishListener() {

            final CommonSocialNetworkHandler this$0;

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                dismissProgressDialog(2);
                if (mSocialPublishListener != null)
                {
                    mSocialPublishListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                mSocialPublishListener = null;
            }

            public void onPublishCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                dismissProgressDialog(2);
                if (mSocialPublishListener != null)
                {
                    mSocialPublishListener.onPublishCompleted(commonsocialnetworkhandler);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onPublishCompleted(commonsocialnetworkhandler);
                }
                mSocialPublishListener = null;
            }

            
            {
                this$0 = CommonSocialNetworkHandler.this;
                super();
            }
        };
        mDefaultSocialActionCompletedListener = new OnSocialActionCompletedListener() {

            final CommonSocialNetworkHandler this$0;

            public void onActionCompleted(CommonSocialNetworkHandler commonsocialnetworkhandler)
            {
                dismissProgressDialog(3);
                if (mSocialActionCompletedListener != null)
                {
                    mSocialActionCompletedListener.onActionCompleted(commonsocialnetworkhandler);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onActionCompleted(commonsocialnetworkhandler);
                }
                mSocialActionCompletedListener = null;
            }

            public void onError(CommonSocialNetworkHandler commonsocialnetworkhandler, String s1, String s2)
            {
                dismissProgressDialog(3);
                if (mSocialActionCompletedListener != null)
                {
                    mSocialActionCompletedListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                if (mSocialStatusChangeListener != null)
                {
                    mSocialStatusChangeListener.onError(commonsocialnetworkhandler, s1, s2);
                }
                mSocialActionCompletedListener = null;
            }

            
            {
                this$0 = CommonSocialNetworkHandler.this;
                super();
            }
        };
        mContext = context;
        mSocialType = i;
        mSocialName = s;
        SocialNetworkManager.registerSocialNetworkHandler(this);
    }

    private ProgressDialog createDialog(int i, String s)
    {
        ProgressDialog progressdialog1 = getDialog(i);
        ProgressDialog progressdialog = progressdialog1;
        if (progressdialog1 == null)
        {
            progressdialog = new ProgressDialog(mContext);
            progressdialog.setProgressStyle(0);
            progressdialog.setIndeterminate(true);
            progressdialog.setMessage(s);
            setDialog(i, progressdialog);
        }
        return progressdialog;
    }

    private void dismissProgressDialog(int i)
    {
        ProgressDialog progressdialog = getDialog(i);
        if (progressdialog != null)
        {
            progressdialog.dismiss();
            setDialog(i, null);
        }
    }

    private ProgressDialog getDialog(int i)
    {
        switch (i)
        {
        default:
            return null;

        case 0: // '\0'
        case 1: // '\001'
            return mLoginoffProgressDialog;

        case 2: // '\002'
            return mPublishProgressDialog;

        case 3: // '\003'
            return mOtherProgressDialog;
        }
    }

    private void setDialog(int i, ProgressDialog progressdialog)
    {
        switch (i)
        {
        default:
            return;

        case 0: // '\0'
        case 1: // '\001'
            mLoginoffProgressDialog = progressdialog;
            return;

        case 2: // '\002'
            mPublishProgressDialog = progressdialog;
            return;

        case 3: // '\003'
            mOtherProgressDialog = progressdialog;
            break;
        }
    }

    public abstract int getCharacterLimit();

    public OnSocialListener getCurrentRegisteredSocialListener()
    {
        if (mSocialLoginListener != null)
        {
            return mDefaultSocialLoginListener;
        }
        if (mSocialLogoutListener != null)
        {
            return mSocialLogoutListener;
        }
        if (mSocialPublishListener != null)
        {
            return mDefaultSocialPublishListener;
        }
        if (mSocialActionCompletedListener != null)
        {
            return mDefaultSocialActionCompletedListener;
        } else
        {
            return null;
        }
    }

    public String getSocialName()
    {
        return mSocialName;
    }

    public int getSocialType()
    {
        return mSocialType;
    }

    public abstract String getUserID();

    public abstract String getUserName();

    public abstract String getUserProfileURL();

    public boolean isAvailable()
    {
        return true;
    }

    public abstract boolean isLoggedIn();

    public boolean like(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        mSocialActionCompletedListener = onsocialactioncompletedlistener;
        if (mEnableProgressShown)
        {
            createDialog(3, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialActionCompletedListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            return false;
        } else
        {
            return true;
        }
    }

    public boolean login(OnSocialLoginListener onsocialloginlistener)
    {
        mSocialLoginListener = onsocialloginlistener;
        if (mEnableProgressShown)
        {
            createDialog(0, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialLoginListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            return false;
        } else
        {
            return true;
        }
    }

    public boolean logout(OnSocialLogoutListener onsociallogoutlistener)
    {
        boolean flag = true;
        mSocialLogoutListener = onsociallogoutlistener;
        if (mEnableProgressShown)
        {
            createDialog(1, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialLogoutListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            flag = false;
        }
        return flag;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onPause(Context context)
    {
    }

    public void onResume(Context context)
    {
        mContext = context;
    }

    public boolean publishImage(String s, String s1, Bitmap bitmap, OnSocialPublishListener onsocialpublishlistener)
    {
        mSocialPublishListener = onsocialpublishlistener;
        if (mEnableProgressShown)
        {
            createDialog(2, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialPublishListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            return false;
        } else
        {
            return true;
        }
    }

    public boolean publishText(String s, OnSocialPublishListener onsocialpublishlistener)
    {
        mSocialPublishListener = onsocialpublishlistener;
        if (mEnableProgressShown)
        {
            createDialog(2, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialPublishListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            return false;
        } else
        {
            return true;
        }
    }

    public boolean publishURL(URL url, OnSocialPublishListener onsocialpublishlistener)
    {
        mSocialPublishListener = onsocialpublishlistener;
        if (mEnableProgressShown)
        {
            createDialog(2, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialPublishListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            return false;
        } else
        {
            return true;
        }
    }

    public void setAttachedActivtiy(Activity activity)
    {
        mContext = activity;
    }

    public void setOnSocialStatusChangeListener(OnSocialStatusChangeListener onsocialstatuschangelistener)
    {
        mSocialStatusChangeListener = onsocialstatuschangelistener;
    }

    public void showProgress(boolean flag)
    {
        mEnableProgressShown = flag;
    }

    public boolean unlike(OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        mSocialActionCompletedListener = onsocialactioncompletedlistener;
        if (mEnableProgressShown)
        {
            createDialog(3, mContext.getResources().getString(com.biznessapps.layout.R.string.loading)).show();
        }
        if (!isAvailable())
        {
            mDefaultSocialActionCompletedListener.onError(this, mContext.getResources().getString(com.biznessapps.layout.R.string.not_available), mContext.getResources().getString(com.biznessapps.layout.R.string.not_available));
            return false;
        } else
        {
            return true;
        }
    }




/*
    static OnSocialLoginListener access$102(CommonSocialNetworkHandler commonsocialnetworkhandler, OnSocialLoginListener onsocialloginlistener)
    {
        commonsocialnetworkhandler.mSocialLoginListener = onsocialloginlistener;
        return onsocialloginlistener;
    }

*/




/*
    static OnSocialLogoutListener access$302(CommonSocialNetworkHandler commonsocialnetworkhandler, OnSocialLogoutListener onsociallogoutlistener)
    {
        commonsocialnetworkhandler.mSocialLogoutListener = onsociallogoutlistener;
        return onsociallogoutlistener;
    }

*/



/*
    static OnSocialPublishListener access$402(CommonSocialNetworkHandler commonsocialnetworkhandler, OnSocialPublishListener onsocialpublishlistener)
    {
        commonsocialnetworkhandler.mSocialPublishListener = onsocialpublishlistener;
        return onsocialpublishlistener;
    }

*/



/*
    static OnSocialActionCompletedListener access$502(CommonSocialNetworkHandler commonsocialnetworkhandler, OnSocialActionCompletedListener onsocialactioncompletedlistener)
    {
        commonsocialnetworkhandler.mSocialActionCompletedListener = onsocialactioncompletedlistener;
        return onsocialactioncompletedlistener;
    }

*/
}
