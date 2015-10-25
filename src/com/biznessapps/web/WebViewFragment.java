// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.web;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.MailTo;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.HttpAuthHandler;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.CachingManager;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.fragments.CommonFragment;
import com.biznessapps.utils.CommonUtils;
import com.biznessapps.utils.HardwareUtils;
import com.biznessapps.utils.StringUtils;
import com.biznessapps.utils.ViewUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WebViewFragment extends CommonFragment
{

    private static final int FILECHOOSER_RESULTCODE = 1;
    private static final String IMAGE_BROWSER = "Image Browser";
    private List customAppCodes;
    private List customUrls;
    private List historyUrls;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListener;
    private com.biznessapps.common.activities.CommonFragmentActivity.BackPressed onBackPressedListenerForHtml5;
    private View progressBar;
    private ValueCallback uploadMessage;
    private String url;
    private String webData;
    private WebView webView;

    public WebViewFragment()
    {
        historyUrls = new ArrayList();
        customUrls = new ArrayList();
        customAppCodes = new ArrayList();
        customUrls.add("http://cevadesign.ro/magic.html");
        customUrls.add("http://cevadesign.ro/magic-fm.html");
        customUrls.add("youtube.com");
        customUrls.add("http://snd.sc/");
        customUrls.add("soundcloud.com");
        customUrls.add(".mp3");
        customUrls.add("m3u");
        customUrls.add("vimeo.com");
        customUrls.add("peaceloveworld.com");
        customUrls.add("benswann.com");
        customUrls.add("graymere.com");
        customUrls.add("agcanada.com");
        customUrls.add("onrealm.org");
        customUrls.add("friendamo.com");
        customUrls.add("https://www.zeetequila.com/products");
        customUrls.add("https://www.zeetequila.com/products");
        customAppCodes.add("saintjoseph");
        onBackPressedListener = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final WebViewFragment this$0;

            public boolean onBackPressed()
            {
                int i = historyUrls.size();
                boolean flag;
                int j;
                boolean flag1;
                if (!"about:blank".equalsIgnoreCase(webView.getUrl()))
                {
                    historyUrls.remove(webView.getUrl());
                } else
                {
                    historyUrls.remove(webData);
                }
                j = historyUrls.size();
                if (historyUrls.size() == 1 && i == j)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (webView != null && webView.canGoBack() || flag)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (flag1)
                {
                    webView.goBack();
                }
                if (historyUrls.size() == 1 && historyUrls.contains(webData))
                {
                    loadContent();
                }
                return !historyUrls.isEmpty() && !flag;
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        };
        onBackPressedListenerForHtml5 = new com.biznessapps.common.activities.CommonFragmentActivity.BackPressed() {

            final WebViewFragment this$0;

            public boolean onBackPressed()
            {
                return ViewUtils.canGoBack(webView);
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        };
    }

    private void downloadDropboxFile(String s, String s1)
    {
        if (HardwareUtils.getExternalPath() != null)
        {
            DownloadManager downloadmanager = (DownloadManager)getApplicationContext().getSystemService("download");
            File file = new File(HardwareUtils.getExternalPath(), getApplicationContext().getPackageName());
            if (!file.exists())
            {
                file.mkdir();
            }
            android.app.DownloadManager.Request request = new android.app.DownloadManager.Request(Uri.parse(s));
            s = new File(file, s1);
            int i = 0;
            for (; s.exists(); s = new File(file, String.format("%s(%d).%s", new Object[] {
    s1.substring(0, s1.lastIndexOf('.')), Integer.valueOf(i), s1.substring(s1.lastIndexOf('.') + 1)
})))
            {
                i++;
            }

            request.setDestinationUri(Uri.fromFile(s));
            request.setNotificationVisibility(1);
            downloadmanager.enqueue(request);
        }
    }

    private void initControls(ViewGroup viewgroup)
    {
        webView = (WebView)viewgroup.findViewById(com.biznessapps.layout.R.id.webview);
        viewgroup = (ImageButton)viewgroup.findViewById(com.biznessapps.layout.R.id.webview_back_button);
        viewgroup.setOnClickListener(new android.view.View.OnClickListener() {

            final WebViewFragment this$0;

            public void onClick(View view)
            {
                getHoldActivity().finish();
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        });
        CommonUtils.setColorWithoutMutation(settings.getNavigationTextColor(), viewgroup.getBackground());
        webView.setDownloadListener(new DownloadListener() {

            final WebViewFragment this$0;

            public void onDownloadStart(String s, String s1, String s2, String s3, long l)
            {
                s1 = new Intent("android.intent.action.VIEW");
                s1.setType(s3);
                s1.setData(Uri.parse(s));
                startActivity(s1);
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        });
        webData = getIntent().getStringExtra("WEB_DATA");
        if (!AppCore.getInstance().isAnyConnectionAvailable())
        {
            ViewUtils.showNetwortErrorToast(getHoldActivity());
            return;
        }
        if (getIntent().getStringExtra("URL") == null)
        {
            break MISSING_BLOCK_LABEL_599;
        }
        progressBar.setVisibility(0);
        boolean flag = getIntent().getBooleanExtra("USE_NATIVE_BROWSER", false);
        url = getIntent().getExtras().getString("URL").trim();
        webView.setWebViewClient(new WebViewClient() {

            final WebViewFragment this$0;

            public void onPageFinished(WebView webview, String s)
            {
                progressBar.setVisibility(8);
            }

            public void onReceivedHttpAuthRequest(WebView webview, final HttpAuthHandler handler, final String usernameInput, String s)
            {
                Object obj = getHoldActivity();
                if (obj != null)
                {
                    usernameInput = new EditText(((Activity) (obj)).getApplicationContext());
                    usernameInput.setHint(com.biznessapps.layout.R.string.username);
                    s = new EditText(((Activity) (obj)).getApplicationContext());
                    s.setHint(com.biznessapps.layout.R.string.password);
                    s.setInputType(129);
                    obj = new LinearLayout(((Activity) (obj)).getApplicationContext());
                    ((LinearLayout) (obj)).setOrientation(1);
                    ((LinearLayout) (obj)).addView(usernameInput);
                    ((LinearLayout) (obj)).addView(s);
                    (new android.app.AlertDialog.Builder(getHoldActivity())).setTitle(com.biznessapps.layout.R.string.authentication).setView(((View) (obj))).setCancelable(false).setPositiveButton(com.biznessapps.layout.R.string.ok, s. new android.content.DialogInterface.OnClickListener() {

                        final _cls5 this$1;
                        final HttpAuthHandler val$handler;
                        final EditText val$passwordInput;
                        final EditText val$usernameInput;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            handler.proceed(usernameInput.getText().toString(), passwordInput.getText().toString());
                            dialoginterface.dismiss();
                        }

            
            {
                this$1 = final__pcls5;
                handler = httpauthhandler;
                usernameInput = edittext;
                passwordInput = EditText.this;
                super();
            }
                    }).setNegativeButton(com.biznessapps.layout.R.string.cancel, webview. new android.content.DialogInterface.OnClickListener() {

                        final _cls5 this$1;
                        final WebView val$webView;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            dialoginterface.dismiss();
                            webView.stopLoading();
                        }

            
            {
                this$1 = final__pcls5;
                webView = WebView.this;
                super();
            }
                    }).show();
                }
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s == null)
                {
                    return false;
                }
                if (s.contains("https://dl.dropboxusercontent.com/content_link"))
                {
                    if (android.os.Build.VERSION.SDK_INT >= 11)
                    {
                        downloadDropboxFile(s, "dropbox_download_file.pdf");
                    }
                    return true;
                }
                if (s.contains("mailto:"))
                {
                    Object obj = MailTo.parse(s);
                    webview = getHoldActivity();
                    s = ((MailTo) (obj)).getTo();
                    String s1 = ((MailTo) (obj)).getSubject();
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
                        startActivity(webview);
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
                        startActivity(new Intent("android.intent.action.DIAL", Uri.parse(s)));
                    }
                    // Misplaced declaration of an exception variable
                    catch (WebView webview)
                    {
                        ViewUtils.showShortToast(getHoldActivity(), com.biznessapps.layout.R.string.phone_call_not_available);
                        return true;
                    }
                    return true;
                }
                if (!s.endsWith(".pdf")) goto _L2; else goto _L1
_L1:
                String s2 = (new StringBuilder()).append("https://docs.google.com/gview?embedded%3Dtrue&url=").append(s).toString();
_L4:
                if (!historyUrls.contains(s2) && !s2.contains("=&c=0"))
                {
                    historyUrls.add(s2);
                }
                if (webData != null && !historyUrls.contains(webData))
                {
                    historyUrls.add(webData);
                }
                return super.shouldOverrideUrlLoading(webview, s2);
_L2:
                if (s.contains("market://"))
                {
                    break; /* Loop/switch isn't completed */
                }
                s2 = s;
                if (!s.contains("intent://")) goto _L4; else goto _L3
_L3:
                try
                {
                    webview = new Intent("android.intent.action.VIEW");
                    webview.setData(Uri.parse(s));
                    startActivity(webview);
                }
                // Misplaced declaration of an exception variable
                catch (WebView webview)
                {
                    return true;
                }
                return true;
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        });
        if (getIntent().getBooleanExtra("SHOW_WEB_ORIGINAL_SIZE", false) || url.contains("wufoo.com"))
        {
            ViewUtils.plubWebView(webView);
        } else
        {
            ViewUtils.plubWebViewWithoutZooming(webView);
        }
        webView.setWebChromeClient(new WebChromeClient() {

            final WebViewFragment this$0;

            public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
            {
                callback.invoke(s, true, false);
            }

            public void openFileChooser(ValueCallback valuecallback)
            {
                uploadMessage = valuecallback;
                valuecallback = new Intent("android.intent.action.GET_CONTENT");
                valuecallback.addCategory("android.intent.category.OPENABLE");
                valuecallback.setType("*/*");
                startActivityForResult(Intent.createChooser(valuecallback, "Image Browser"), 1);
            }

            public void openFileChooser(ValueCallback valuecallback, String s)
            {
                openFileChooser(valuecallback);
            }

            public void openFileChooser(ValueCallback valuecallback, String s, String s1)
            {
                openFileChooser(valuecallback);
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        });
        if (isOpenInNativeBrowser(url, cacher().getAppCode()) || flag)
        {
            if (url.contains("youtube.com") && url.startsWith("//www"))
            {
                url = (new StringBuilder()).append("http:").append(url).toString();
            }
            viewgroup = new Intent("android.intent.action.VIEW");
            viewgroup.setData(Uri.parse(url));
            startActivity(viewgroup);
            getHoldActivity().finish();
            return;
        }
        if (!url.contains("rtsp://")) goto _L2; else goto _L1
_L1:
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse(url.substring(url.indexOf("rtsp://")))));
        getHoldActivity().finish();
_L4:
        webView.loadUrl(url);
        return;
_L2:
        if (!url.endsWith(".pdf") || url.contains("dropbox"))
        {
            break; /* Loop/switch isn't completed */
        }
        url = (new StringBuilder()).append("https://docs.google.com/gview?embedded%3Dtrue&url=").append(url).toString();
        if (true) goto _L4; else goto _L3
_L3:
        int i;
        if (!url.contains("youtube") || !url.contains("v="))
        {
            continue; /* Loop/switch isn't completed */
        }
        i = url.indexOf("v=");
        if (i == -1) goto _L4; else goto _L5
_L5:
        viewgroup = url.substring(i);
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse((new StringBuilder()).append("http://youtube.com/watch?").append(viewgroup).toString()));
            startActivity(intent);
        }
        // Misplaced declaration of an exception variable
        catch (ViewGroup viewgroup)
        {
            viewgroup.printStackTrace();
        }
        getHoldActivity().finish();
        return;
        if (!url.contains(".pls")) goto _L4; else goto _L6
_L6:
        (new AsyncTask() {

            final WebViewFragment this$0;

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected transient List doInBackground(Void avoid[])
            {
                return CommonUtils.getUrlsFromPlsStream(url);
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((List)obj);
            }

            protected void onPostExecute(List list)
            {
                if (list != null && !list.isEmpty())
                {
                    list = (String)list.get(0);
                    Intent intent1 = new Intent("android.intent.action.VIEW");
                    intent1.setData(Uri.parse(list));
                    startActivity(intent1);
                    getHoldActivity().finish();
                }
            }

            
            {
                this$0 = WebViewFragment.this;
                super();
            }
        }).execute(new Void[0]);
        return;
        if (StringUtils.isNotEmpty(webData))
        {
            historyUrls.add(webData);
            loadContent();
            return;
        } else
        {
            ViewUtils.showCustomToast(getApplicationContext(), getString(com.biznessapps.layout.R.string.nothing_found));
            getHoldActivity().finish();
            return;
        }
    }

    private boolean isOpenInNativeBrowser(String s, String s1)
    {
        for (Iterator iterator = customUrls.iterator(); iterator.hasNext();)
        {
            String s2 = (String)iterator.next();
            if (s.equalsIgnoreCase(s2) || s.contains(s2))
            {
                return true;
            }
        }

        for (s = customAppCodes.iterator(); s.hasNext();)
        {
            if (((String)s.next()).equalsIgnoreCase(s1))
            {
                return true;
            }
        }

        return false;
    }

    private void loadContent()
    {
        if (StringUtils.isNotEmpty(webData))
        {
            ViewUtils.plubWebView(webView);
            webView.loadDataWithBaseURL(null, webData, "text/html", "utf-8", null);
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 1 || uploadMessage == null)
        {
            return;
        }
        if (intent == null || j != -1)
        {
            intent = null;
        } else
        {
            intent = intent.getData();
        }
        uploadMessage.onReceiveValue(intent);
        uploadMessage = null;
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        root = (ViewGroup)layoutinflater.inflate(com.biznessapps.layout.R.layout.webview_layout, null);
        initSettingsData();
        progressBar = ViewUtils.getProgressBar(getHoldActivity());
        progressBar.setVisibility(8);
        getHoldActivity().getProgressBarContainer().addView(progressBar);
        ViewUtils.setRootBgColor(root, settings);
        initControls(root);
        if (StringUtils.isNotEmpty(url))
        {
            getHoldActivity().addBackPressedListener(onBackPressedListenerForHtml5);
        } else
        {
            getHoldActivity().addBackPressedListener(onBackPressedListener);
        }
        CommonUtils.sendAnalyticsEvent(getAnalyticData());
        openCustomDialogs();
        return root;
    }

    public void onDestroy()
    {
        CommonFragmentActivity commonfragmentactivity = getHoldActivity();
        if (commonfragmentactivity != null)
        {
            commonfragmentactivity.removeBackPressedListener(onBackPressedListenerForHtml5);
            commonfragmentactivity.removeBackPressedListener(onBackPressedListener);
        }
        super.onDestroy();
    }








/*
    static ValueCallback access$602(WebViewFragment webviewfragment, ValueCallback valuecallback)
    {
        webviewfragment.uploadMessage = valuecallback;
        return valuecallback;
    }

*/

}
