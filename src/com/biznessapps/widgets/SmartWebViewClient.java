// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.widgets;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.MailTo;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.biznessapps.constants.AppConstants;
import com.biznessapps.utils.ViewUtils;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.biznessapps.widgets:
//            SmartWebView

public class SmartWebViewClient extends WebViewClient
    implements AppConstants
{

    private static final String NEW_TAB_PATTERN = "?newtab=yes";
    private Activity mActivity;
    private List mHistory;
    private boolean mPageStartedCalled;
    private boolean mShouldOverrideCalled;
    private SmartWebView mWebView;

    public SmartWebViewClient(Activity activity, SmartWebView smartwebview)
    {
        mHistory = new ArrayList();
        mPageStartedCalled = false;
        mShouldOverrideCalled = false;
        mActivity = activity;
        mWebView = smartwebview;
    }

    public boolean canGoBack()
    {
        return mHistory.size() > 1;
    }

    public boolean goBack()
    {
        mPageStartedCalled = false;
        mShouldOverrideCalled = false;
        if (mHistory.size() < 2)
        {
            return false;
        }
        mHistory.remove(mHistory.size() - 1);
        if (mHistory.size() == 1 && ((String)mHistory.get(0)).equals("about:blank"))
        {
            mHistory.clear();
            mWebView.loadInitialData();
            return false;
        } else
        {
            return true;
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        mPageStartedCalled = false;
        mShouldOverrideCalled = false;
        webview.loadUrl("javascript: var allLinks = document.getElementsByTagName('a'); if (allLinks) {var i;for (i=0; i<allLinks.length; i++) {var link = allLinks[i];var target = link.getAttribute('target'); if (target && target == '_blank') {link.setAttribute('target','_self');link.href = link.href + '?newtab=yes';}}}");
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        if (mPageStartedCalled)
        {
            mHistory.remove(mHistory.size() - 1);
        }
        if (!mHistory.contains(s))
        {
            mHistory.add(s);
        }
        mPageStartedCalled = true;
    }

    public final boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        mShouldOverrideCalled = true;
        if (s == null)
        {
            return false;
        }
        if (s.endsWith("?newtab=yes"))
        {
            webview = new Intent("android.intent.action.VIEW");
            webview.setData(Uri.parse(s.substring(0, s.length() - "?newtab=yes".length())));
            mActivity.startActivity(webview);
            return true;
        }
        if (!s.endsWith(".pdf")) goto _L2; else goto _L1
_L1:
        String s1 = (new StringBuilder()).append("https://docs.google.com/gview?embedded%3Dtrue&url=").append(s).toString();
_L4:
        if (!subUrlTrigger(webview, s1))
        {
            return super.shouldOverrideUrlLoading(webview, s1);
        } else
        {
            return true;
        }
_L2:
        if (s.contains("youtube.com") || s.contains("vimeo.com"))
        {
            webview = s;
            if (s.startsWith("//www"))
            {
                webview = (new StringBuilder()).append("http:").append(s).toString();
            }
            s = new Intent("android.intent.action.VIEW");
            s.setData(Uri.parse(webview));
            mActivity.startActivity(s);
            return true;
        }
        if (s.contains("mailto:"))
        {
            Object obj = MailTo.parse(s);
            webview = mActivity;
            s = ((MailTo) (obj)).getTo();
            s1 = ((MailTo) (obj)).getSubject();
            obj = ((MailTo) (obj)).getBody();
            ViewUtils.email(webview, new String[] {
                s
            }, s1, ((String) (obj)));
            return true;
        }
        if (s.contains("maps://"))
        {
            try
            {
                webview = new Intent("android.intent.action.VIEW");
                webview.setData(Uri.parse(s.replace("maps://", "http://")));
                mActivity.startActivity(webview);
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                return true;
            }
            return true;
        }
        if (s.contains("tel:"))
        {
            try
            {
                mActivity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse(s)));
            }
            // Misplaced declaration of an exception variable
            catch (WebView webview)
            {
                ViewUtils.showShortToast(mActivity, com.biznessapps.layout.R.string.phone_call_not_available);
                return true;
            }
            return true;
        }
        if (s.contains("market://"))
        {
            break; /* Loop/switch isn't completed */
        }
        s1 = s;
        if (!s.contains("intent://")) goto _L4; else goto _L3
_L3:
        try
        {
            webview = new Intent("android.intent.action.VIEW");
            webview.setData(Uri.parse(s));
            mActivity.startActivity(webview);
        }
        // Misplaced declaration of an exception variable
        catch (WebView webview)
        {
            return true;
        }
        return true;
    }

    protected boolean subUrlTrigger(WebView webview, String s)
    {
        return false;
    }
}
