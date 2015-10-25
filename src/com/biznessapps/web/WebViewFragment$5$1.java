// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.web;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.MailTo;
import android.net.Uri;
import android.view.View;
import android.webkit.HttpAuthHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.biznessapps.utils.ViewUtils;
import java.util.List;

// Referenced classes of package com.biznessapps.web:
//            WebViewFragment

class val.webView
    implements android.content.ickListener
{

    final val.webView this$1;
    final WebView val$webView;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.dismiss();
        val$webView.stopLoading();
    }

    is._cls0()
    {
        this$1 = final__pcls0;
        val$webView = WebView.this;
        super();
    }

    // Unreferenced inner class com/biznessapps/web/WebViewFragment$5

/* anonymous class */
    class WebViewFragment._cls5 extends WebViewClient
    {

        final WebViewFragment this$0;

        public void onPageFinished(WebView webview, String s)
        {
            WebViewFragment.access$500(WebViewFragment.this).setVisibility(8);
        }

        public void onReceivedHttpAuthRequest(WebView webview, final HttpAuthHandler handler, final String usernameInput, final String passwordInput)
        {
            Object obj = getHoldActivity();
            if (obj != null)
            {
                usernameInput = new EditText(((Activity) (obj)).getApplicationContext());
                usernameInput.setHint(com.biznessapps.layout.R.string.username);
                passwordInput = new EditText(((Activity) (obj)).getApplicationContext());
                passwordInput.setHint(com.biznessapps.layout.R.string.password);
                passwordInput.setInputType(129);
                obj = new LinearLayout(((Activity) (obj)).getApplicationContext());
                ((LinearLayout) (obj)).setOrientation(1);
                ((LinearLayout) (obj)).addView(usernameInput);
                ((LinearLayout) (obj)).addView(passwordInput);
                (new android.app.AlertDialog.Builder(getHoldActivity())).setTitle(com.biznessapps.layout.R.string.authentication).setView(((View) (obj))).setCancelable(false).setPositiveButton(com.biznessapps.layout.R.string.ok, new WebViewFragment._cls5._cls2()).setNegativeButton(com.biznessapps.layout.R.string.cancel, webview. new WebViewFragment._cls5._cls1()).show();
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
                    WebViewFragment.access$400(WebViewFragment.this, s, "dropbox_download_file.pdf");
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
            if (!WebViewFragment.access$000(WebViewFragment.this).contains(s2) && !s2.contains("=&c=0"))
            {
                WebViewFragment.access$000(WebViewFragment.this).add(s2);
            }
            if (WebViewFragment.access$200(WebViewFragment.this) != null && !WebViewFragment.access$000(WebViewFragment.this).contains(WebViewFragment.access$200(WebViewFragment.this)))
            {
                WebViewFragment.access$000(WebViewFragment.this).add(WebViewFragment.access$200(WebViewFragment.this));
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

        // Unreferenced inner class com/biznessapps/web/WebViewFragment$5$2

/* anonymous class */
        class WebViewFragment._cls5._cls2
            implements android.content.DialogInterface.OnClickListener
        {

            final WebViewFragment._cls5 this$1;
            final HttpAuthHandler val$handler;
            final EditText val$passwordInput;
            final EditText val$usernameInput;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                handler.proceed(usernameInput.getText().toString(), passwordInput.getText().toString());
                dialoginterface.dismiss();
            }

                    
                    {
                        this$1 = WebViewFragment._cls5.this;
                        handler = httpauthhandler;
                        usernameInput = edittext;
                        passwordInput = edittext1;
                        super();
                    }
        }

    }

}
