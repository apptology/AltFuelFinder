// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.biznessapps.constants.AppConstants;

// Referenced classes of package com.biznessapps.widgets:
//            SmartWebViewClient

public class SmartWebView extends WebView
    implements AppConstants
{

    public static final String INTERNAL_CONTENTS_URL = "about:blank";
    private String mInitialEncoding;
    private String mInitialLoadData;
    private String mInitialMimeType;
    private SmartWebViewClient mWebViewClient;

    public SmartWebView(Context context)
    {
        super(context);
        init();
    }

    public SmartWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public SmartWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private void init()
    {
        getSettings().setJavaScriptEnabled(true);
        getSettings().setSupportZoom(true);
        getSettings().setBuiltInZoomControls(true);
        getSettings().setDomStorageEnabled(true);
        getSettings().setDefaultTextEncodingName("utf-8");
        mWebViewClient = new SmartWebViewClient((Activity)getContext(), this);
        setWebViewClient(mWebViewClient);
    }

    public boolean canGoBack()
    {
        return mWebViewClient.canGoBack();
    }

    public void goBack()
    {
        if (mWebViewClient.goBack())
        {
            super.goBack();
        }
    }

    public void loadData(String s, String s1, String s2)
    {
        super.loadDataWithBaseURL(null, s, s1, s2, "about:blank");
        mInitialLoadData = s;
        mInitialMimeType = s1;
        mInitialEncoding = s2;
    }

    public void loadDataWithBaseURL(String s, String s1, String s2, String s3, String s4)
    {
        String s5 = s4;
        if (s4 == null)
        {
            s5 = "about:blank";
        }
        super.loadDataWithBaseURL(s, s1, s2, s3, s5);
        mInitialLoadData = s1;
        mInitialMimeType = s2;
        mInitialEncoding = s3;
    }

    void loadInitialData()
    {
        loadDataWithBaseURL(null, mInitialLoadData, mInitialMimeType, mInitialEncoding, "about:blank");
    }
}
