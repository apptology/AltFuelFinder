// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.biznessapps.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.StateListDrawable;
import android.location.Location;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.text.Html;
import android.text.SpannableString;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.view.inputmethod.InputMethodManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import com.biznessapps.api.ActivitySelector;
import com.biznessapps.api.AppCore;
import com.biznessapps.api.AppHttpUtils;
import com.biznessapps.api.ImageFetcherAccessor;
import com.biznessapps.api.UiSettings;
import com.biznessapps.common.activities.CommonFragmentActivity;
import com.biznessapps.common.components.LocationFinder;
import com.biznessapps.common.entities.AppSettings;
import com.biznessapps.common.entities.CommonListEntity;
import com.biznessapps.common.entities.EmailCollectInfo;
import com.biznessapps.common.entities.NetworkResultEntity;
import com.biznessapps.more.Tab;
import com.biznessapps.utils.google.caching.ImageFetcher;
import com.biznessapps.widgets.CustomLeadingMarginSpan;
import com.biznessapps.widgets.SmartWebView;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import java.io.File;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.biznessapps.utils:
//            StringUtils, ApiUtils, CommonUtils

public class ViewUtils
{
    public static class HideAnimationListener
        implements android.view.animation.Animation.AnimationListener
    {

        private View v;

        public void onAnimationEnd(Animation animation)
        {
            v.setVisibility(8);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

        public HideAnimationListener(View view)
        {
            v = null;
            v = view;
        }
    }


    public static final String DRAWABLE_PACKAGE = "drawable/";
    private static final float MAX_ALPHA_VALUE = 255F;
    private static final float MAX_ALPHA_VALUE_FROM_WEB_PART = 100F;
    private static final float SHADOW_VALUE = 1.2F;
    private static final int VIEW_PADDING = 5;

    public ViewUtils()
    {
    }

    public static int addAlpha(int i, int j)
    {
        return Color.argb(j, Color.red(i), Color.green(i), Color.blue(i));
    }

    public static void addUpDownGestureListener(View view, Runnable runnable, Context context)
    {
        view.setOnTouchListener(new android.view.View.OnTouchListener(new GestureDetector(new android.view.GestureDetector.SimpleOnGestureListener(runnable) {

            final Runnable val$whatToRun;

            public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
            {
                if (motionevent != null && motionevent1 != null && motionevent1.getY() - motionevent.getY() > 100F && Math.abs(f1) > 30F)
                {
                    whatToRun.run();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                whatToRun = runnable;
                super();
            }
        })) {

            final GestureDetector val$gestureListener;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                return gestureListener.onTouchEvent(motionevent);
            }

            
            {
                gestureListener = gesturedetector;
                super();
            }
        });
    }

    public static void call(Activity activity, String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            if (AppCore.getInstance().isPhoneDisabled())
            {
                showDialog(activity, activity.getString(com.biznessapps.layout.R.string.phone_number), s);
                return;
            } else
            {
                s = new Intent("android.intent.action.DIAL", Uri.parse((new StringBuilder()).append("tel:").append(s).toString()));
                s.setFlags(0x10000000);
                activity.startActivity(s);
                return;
            }
        } else
        {
            showDialog(activity, null, activity.getString(com.biznessapps.layout.R.string.phone_call_not_available));
            return;
        }
    }

    public static void canGoBack(List list)
    {
        for (list = list.iterator(); list.hasNext(); canGoBack(((WebView) ((SmartWebView)list.next())))) { }
    }

    public static boolean canGoBack(WebView webview)
    {
        boolean flag;
label0:
        {
            flag = false;
            if (webview != null)
            {
                flag = webview.canGoBack();
                if (!flag)
                {
                    break label0;
                }
                webview.goBack();
            }
            return flag;
        }
        webview.loadUrl("about:blank");
        return flag;
    }

    public static void changeDefaultCursorColor(TextView textview)
    {
        if (android.os.Build.VERSION.SDK_INT < 12)
        {
            break MISSING_BLOCK_LABEL_30;
        }
        Field field = android/widget/TextView.getDeclaredField("mCursorDrawableRes");
        field.setAccessible(true);
        field.set(textview, Integer.valueOf(0));
        return;
        textview;
        textview.printStackTrace();
        return;
    }

    public static boolean checkGpsEnabling(Activity activity)
    {
        boolean flag = true;
        if (!AppCore.getInstance().useStreamMode())
        {
            boolean flag1 = ((LocationManager)activity.getSystemService("location")).isProviderEnabled("gps");
            flag = flag1;
            if (!flag1)
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
                builder.setTitle(com.biznessapps.layout.R.string.gps_disabled_info).setMessage(com.biznessapps.layout.R.string.location_service_disabled).setCancelable(false).setPositiveButton(activity.getString(com.biznessapps.layout.R.string.ok), new android.content.DialogInterface.OnClickListener() {

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        dialoginterface.cancel();
                    }

                });
                builder.create().show();
                flag = flag1;
            }
        }
        return flag;
    }

    private static void choseFromLibrary(Activity activity)
    {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.GET_CONTENT");
        activity.startActivityForResult(Intent.createChooser(intent, activity.getString(com.biznessapps.layout.R.string.chose_from_library)), 3);
    }

    private static void choseFromLibrary(Fragment fragment)
    {
        Intent intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.GET_CONTENT");
        fragment.startActivityForResult(Intent.createChooser(intent, fragment.getString(com.biznessapps.layout.R.string.chose_from_library)), 3);
    }

    public static void closeKeyboard(Context context, EditText edittext)
    {
        ((InputMethodManager)context.getSystemService("input_method")).hideSoftInputFromWindow(edittext.getWindowToken(), 0);
    }

    public static void closeKeyboardAndClearFocus(Context context, EditText edittext)
    {
        edittext.clearFocus();
        closeKeyboard(context, edittext);
    }

    public static void email(Activity activity, String s, String s1, String s2, File file)
    {
        String s3 = s1;
        if (StringUtils.isEmpty(s1))
        {
            s3 = ApiUtils.getAppSubject(activity.getApplicationContext());
        }
        s1 = new Intent("android.intent.action.SEND_MULTIPLE");
        s1.setFlags(0x10000000);
        s1.setType("plain/text");
        if (StringUtils.isNotEmpty(s))
        {
            s1.putExtra("android.intent.extra.EMAIL", new String[] {
                s
            });
        }
        s1.putExtra("android.intent.extra.SUBJECT", s3);
        s1.putExtra("android.intent.extra.TEXT", s2);
        s = new ArrayList();
        s.add(Uri.fromFile(file));
        s1.putParcelableArrayListExtra("android.intent.extra.STREAM", s);
        activity.startActivity(Intent.createChooser(s1, activity.getResources().getString(com.biznessapps.layout.R.string.email)));
    }

    public static void email(Activity activity, String as[], String s)
    {
        email(activity, as, ApiUtils.getAppSubject(activity.getApplicationContext()), s);
    }

    public static void email(Activity activity, String as[], String s, String s1)
    {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        if (as != null && as.length > 0)
        {
            intent.putExtra("android.intent.extra.EMAIL", as);
        }
        if (StringUtils.isNotEmpty(s))
        {
            intent.putExtra("android.intent.extra.SUBJECT", s);
        }
        if (StringUtils.isNotEmpty(s1))
        {
            intent.putExtra("android.intent.extra.TEXT", s1);
        }
        intent.addFlags(0x10000000);
        activity.startActivity(Intent.createChooser(intent, "Email"));
    }

    public static StateListDrawable getBottomTabDrawable(int i, int j)
    {
        StateListDrawable statelistdrawable = new StateListDrawable();
        ColorDrawable colordrawable = new ColorDrawable(j);
        ColorDrawable colordrawable1 = new ColorDrawable(i);
        statelistdrawable.addState(new int[] {
            -0x10100a7, -0x10100a1
        }, colordrawable);
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, colordrawable1);
        statelistdrawable.addState(new int[] {
            0x10100a1
        }, colordrawable1);
        return statelistdrawable;
    }

    public static ColorStateList getBottomTextListener(int i, int j)
    {
        return new ColorStateList(new int[][] {
            new int[] {
                0x10100a7
            }, new int[] {
                0x10100a1
            }, new int[] {
                0xfefeff5f
            }, new int[] {
                0xfefeff59
            }
        }, new int[] {
            i, i, j, j
        });
    }

    public static int getColor(String s)
    {
        int i;
        try
        {
            i = Color.parseColor((new StringBuilder()).append("#").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return 0xff000000;
        }
        return i;
    }

    public static int getColor(String s, int i)
    {
        int j;
        try
        {
            j = Color.parseColor((new StringBuilder()).append("#").append(s).toString());
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            return i;
        }
        return j;
    }

    public static float getColorBrightness(int i)
    {
        float f = (float)Color.red(i) / 255F;
        float f1 = (float)Color.green(i) / 255F;
        float f2 = (float)Color.blue(i) / 255F;
        return (float)(0.29899999999999999D * (double)f + 0.58699999999999997D * (double)f1 + 0.114D * (double)f2);
    }

    public static String getExtraKey(Bundle bundle, String s, String s1)
    {
        String s2 = s1;
        if (bundle != null)
        {
            s2 = s1;
            if (bundle.containsKey(s))
            {
                s2 = bundle.getString(s);
            }
        }
        return s2;
    }

    public static ViewGroup getImageProgressBar(Context context)
    {
        LinearLayout linearlayout = new LinearLayout(context);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -2));
        linearlayout.setPadding(5, 5, 5, 5);
        linearlayout.setGravity(17);
        context = new ProgressBar(context);
        context.setLayoutParams(new android.view.ViewGroup.LayoutParams(100, 100));
        linearlayout.addView(context);
        return linearlayout;
    }

    public static Drawable getImageStateDrawable(Drawable drawable, int i, int j)
    {
        Drawable drawable1 = drawable.mutate();
        drawable = drawable.mutate();
        drawable1.setColorFilter(i, android.graphics.PorterDuff.Mode.SRC_IN);
        drawable.setColorFilter(j, android.graphics.PorterDuff.Mode.SRC_IN);
        StateListDrawable statelistdrawable = new StateListDrawable();
        statelistdrawable.addState(new int[] {
            -0x10100a7, -0x10100a1
        }, drawable);
        statelistdrawable.addState(new int[] {
            0x10100a7
        }, drawable1);
        statelistdrawable.addState(new int[] {
            0x10100a1
        }, drawable1);
        return statelistdrawable;
    }

    public static android.widget.TextView.OnEditorActionListener getOnEditorListener(Button button)
    {
        return new android.widget.TextView.OnEditorActionListener(button) {

            final Button val$buttonToClick;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
label0:
                {
                    boolean flag1 = false;
                    boolean flag;
                    if (i == 6)
                    {
                        i = 1;
                    } else
                    {
                        i = 0;
                    }
                    flag = flag1;
                    if (keyevent == null)
                    {
                        break label0;
                    }
                    flag = flag1;
                    if (keyevent.getAction() != 0)
                    {
                        break label0;
                    }
                    if (keyevent.getKeyCode() != 66)
                    {
                        flag = flag1;
                        if (keyevent.getKeyCode() != 23)
                        {
                            break label0;
                        }
                    }
                    flag = true;
                }
                if (i != 0 || flag)
                {
                    buttonToClick.performClick();
                }
                return true;
            }

            
            {
                buttonToClick = button;
                super();
            }
        };
    }

    public static android.view.View.OnKeyListener getOnEnterKeyListener(Runnable runnable)
    {
        return new android.view.View.OnKeyListener(runnable) {

            final Runnable val$runnable;

            public boolean onKey(View view, int i, KeyEvent keyevent)
            {
                if (keyevent.getAction() == 0 && i == 66)
                {
                    runnable.run();
                }
                return false;
            }

            
            {
                runnable = runnable1;
                super();
            }
        };
    }

    public static int getOpacity(float f)
    {
        return (int)(2.55F * f);
    }

    public static ViewGroup getProgressBar(Activity activity)
    {
        LinearLayout linearlayout = new LinearLayout(activity);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -2));
        linearlayout.setPadding(5, 5, 5, 5);
        linearlayout.setGravity(17);
        linearlayout.setBackgroundResource(com.biznessapps.layout.R.drawable.progress_bar_bg);
        ProgressBar progressbar = new ProgressBar(activity);
        progressbar.setLayoutParams(new android.view.ViewGroup.LayoutParams(30, 30));
        linearlayout.addView(progressbar);
        activity = new TextView(activity);
        activity.setText(com.biznessapps.layout.R.string.loading);
        activity.setTextColor(0xffcccccc);
        activity.setTextSize(15F);
        activity.setShadowLayer(1.2F, 1.2F, 1.2F, com.biznessapps.layout.R.color.red_black);
        activity.setPadding(5, 0, 5, 0);
        activity.setSingleLine(true);
        activity.setEllipsize(android.text.TextUtils.TruncateAt.END);
        linearlayout.addView(activity);
        return linearlayout;
    }

    public static ViewGroup getProgressBar(Activity activity, int i)
    {
        LinearLayout linearlayout = new LinearLayout(activity);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -2));
        linearlayout.setPadding(5, 5, 5, 5);
        linearlayout.setGravity(17);
        linearlayout.setBackgroundResource(com.biznessapps.layout.R.drawable.progress_bar_bg);
        ProgressBar progressbar = new ProgressBar(activity);
        progressbar.setLayoutParams(new android.view.ViewGroup.LayoutParams(20, 20));
        linearlayout.addView(progressbar);
        activity = new TextView(activity);
        activity.setText(i);
        activity.setTextColor(0xffcccccc);
        activity.setShadowLayer(1.2F, 1.2F, 1.2F, com.biznessapps.layout.R.color.red_black);
        activity.setPadding(5, 0, 5, 0);
        activity.setSingleLine(true);
        activity.setEllipsize(android.text.TextUtils.TruncateAt.END);
        linearlayout.addView(activity);
        return linearlayout;
    }

    public static ProgressDialog getProgressDialog(Context context)
    {
        return getProgressDialog(context, com.biznessapps.layout.R.string.loading);
    }

    public static ProgressDialog getProgressDialog(Context context, int i)
    {
        return getProgressDialog(context, i, false);
    }

    public static ProgressDialog getProgressDialog(Context context, int i, boolean flag)
    {
        ProgressDialog progressdialog = new ProgressDialog(context);
        progressdialog.setMessage(context.getResources().getString(i));
        progressdialog.setIndeterminate(true);
        progressdialog.setCancelable(flag);
        return progressdialog;
    }

    public static String getStaticMapUrl(String s, String s1)
    {
        return String.format("http://maps.googleapis.com/maps/api/staticmap?center=%s,%s&zoom=14&size=200x200&sensor=false", new Object[] {
            s, s1
        });
    }

    public static GradientDrawable getTitleBg(int i)
    {
        int j = Color.argb(150, Color.red(i), Color.green(i), Color.blue(i));
        GradientDrawable gradientdrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.BOTTOM_TOP, new int[] {
            i, j
        });
        gradientdrawable.setCornerRadius(0.0F);
        return gradientdrawable;
    }

    public static CommonListEntity getWrappedItem(CommonListEntity commonlistentity, int i, UiSettings uisettings)
    {
        return getWrappedItem(commonlistentity, i, uisettings, true);
    }

    public static CommonListEntity getWrappedItem(CommonListEntity commonlistentity, int i, UiSettings uisettings, boolean flag)
    {
        if (uisettings.isHasColor())
        {
            int j;
            if (i % 2 == 0)
            {
                if (flag)
                {
                    i = uisettings.getOddRowColorTransparent();
                } else
                {
                    i = uisettings.getOddRowColor();
                }
                j = uisettings.getOddRowTextColor();
            } else
            {
                if (flag)
                {
                    i = uisettings.getEvenRowColorTransparent();
                } else
                {
                    i = uisettings.getEvenRowColor();
                }
                j = uisettings.getEvenRowTextColor();
            }
            commonlistentity.setItemColor(i);
            commonlistentity.setItemTextColor(j);
        }
        return commonlistentity;
    }

    public static CommonListEntity getWrappedItem(CommonListEntity commonlistentity, List list, UiSettings uisettings)
    {
        return getWrappedItem(commonlistentity, list.size(), uisettings, true);
    }

    public static CommonListEntity getWrappedItem(CommonListEntity commonlistentity, List list, UiSettings uisettings, boolean flag)
    {
        return getWrappedItem(commonlistentity, list.size(), uisettings, flag);
    }

    public static boolean hasExtraValue(Intent intent, String s)
    {
        return intent.getExtras() != null && intent.getExtras().containsKey(s) && StringUtils.isNotEmpty(intent.getExtras().getString(s));
    }

    public static boolean hasLongExtraValue(Intent intent, String s)
    {
        return intent.getExtras() != null && intent.getExtras().containsKey(s) && intent.getExtras().getLong(s, 0L) != 0L;
    }

    private static void initAds(Activity activity, ViewGroup viewgroup, boolean flag, String s, boolean flag1, boolean flag2)
    {
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
        if (flag2)
        {
            activity = new AdView(activity.getApplicationContext());
            activity.setAdUnitId(s);
            activity.setAdSize(AdSize.SMART_BANNER);
            activity.setLayoutParams(layoutparams);
            activity.loadAd((new com.google.android.gms.ads.AdRequest.Builder()).build());
        } else
        {
            activity = new PublisherAdView(activity.getApplicationContext());
            activity.setAdUnitId(s);
            activity.setAdSizes(new AdSize[] {
                AdSize.SMART_BANNER
            });
            activity.setLayoutParams(layoutparams);
            activity.loadAd((new com.google.android.gms.ads.doubleclick.PublisherAdRequest.Builder()).build());
        }
        if (android.os.Build.VERSION.SDK_INT >= 11 && flag1)
        {
            activity.setAlpha(0.5F);
        }
        if (flag)
        {
            if (viewgroup != null)
            {
                viewgroup.removeAllViews();
                viewgroup.addView(activity);
                viewgroup.setVisibility(0);
            }
        } else
        {
            viewgroup = (ViewGroup)viewgroup.findViewById(com.biznessapps.layout.R.id.ads_layout_container);
            if (viewgroup != null)
            {
                viewgroup.removeAllViews();
                viewgroup.addView(activity);
                viewgroup.setVisibility(0);
                return;
            }
        }
    }

    public static void initTitleBar(ViewGroup viewgroup, Intent intent, int i, int j, int k, float f, String s)
    {
label0:
        {
            if (viewgroup != null)
            {
                TextView textview = (TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.tab_title_text);
                if (textview != null)
                {
                    if (intent.getBooleanExtra("CHILDREN_TAB_LABEL_PRESENT", false))
                    {
                        intent = intent.getStringExtra("CHILDREN_TAB_LABEL");
                    } else
                    {
                        intent = intent.getStringExtra("TAB_LABEL");
                    }
                    if (StringUtils.isNotEmpty(intent))
                    {
                        textview.setText(Html.fromHtml(intent));
                    }
                    textview.setTextColor(i);
                    textview.setShadowLayer(1.2F, 1.2F, 1.2F, j);
                    textview.setVisibility(0);
                }
                viewgroup.setBackgroundColor(k);
                if (!StringUtils.isNotEmpty(s))
                {
                    break label0;
                }
                intent = new com.biznessapps.utils.google.caching.ImageWorker.TintContainer();
                intent.setTintColor(k);
                intent.setTintOpacity(f);
                AppCore.getInstance().getImageFetcherAccessor().getImageFetcher().loadImage(s, viewgroup, intent);
                if (s.contains("custom"))
                {
                    viewgroup = viewgroup.getLayoutParams();
                    if (viewgroup instanceof android.widget.FrameLayout.LayoutParams)
                    {
                        ((android.widget.FrameLayout.LayoutParams)viewgroup).gravity = 16;
                    } else
                    if (viewgroup instanceof android.widget.LinearLayout.LayoutParams)
                    {
                        ((android.widget.LinearLayout.LayoutParams)viewgroup).gravity = 16;
                    }
                    j = AppCore.getInstance().getDeviceWidth();
                    if (AppCore.getInstance().isTablet())
                    {
                        i = 8;
                    } else
                    {
                        i = 5;
                    }
                    i = j / i;
                    viewgroup.width = -1;
                }
            }
            return;
        }
        viewgroup.setBackgroundDrawable(getTitleBg(k));
    }

    public static View loadLayout(Context context, int i)
    {
        return ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(i, null);
    }

    public static void openChoosePhotoDialog(Activity activity, Runnable runnable)
    {
        openChoosePhotoDialog(activity, runnable, null);
    }

    public static void openChoosePhotoDialog(Activity activity, Runnable runnable, Fragment fragment)
    {
        Object obj1 = new android.app.AlertDialog.Builder(activity);
        Object obj = loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.email_photo_dialog);
        ((android.app.AlertDialog.Builder) (obj1)).setView(((View) (obj)));
        ((android.app.AlertDialog.Builder) (obj1)).setTitle(com.biznessapps.layout.R.string.choose_photo);
        obj1 = ((android.app.AlertDialog.Builder) (obj1)).create();
        Button button = (Button)((View) (obj)).findViewById(com.biznessapps.layout.R.id.take_photo_button);
        Button button1 = (Button)((View) (obj)).findViewById(com.biznessapps.layout.R.id.chose_from_library_button);
        obj = (Button)((View) (obj)).findViewById(com.biznessapps.layout.R.id.email_photo_cancel);
        button.setText(activity.getString(com.biznessapps.layout.R.string.take_photo));
        button1.setText(activity.getString(com.biznessapps.layout.R.string.chose_from_library));
        ((Button) (obj)).setText(activity.getString(com.biznessapps.layout.R.string.cancel));
        button.setOnClickListener(new android.view.View.OnClickListener(runnable, ((AlertDialog) (obj1))) {

            final AlertDialog val$dialog;
            final Runnable val$takePhotoRunnable;

            public void onClick(View view)
            {
                takePhotoRunnable.run();
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                takePhotoRunnable = runnable;
                dialog = alertdialog;
                super();
            }
        });
        button1.setOnClickListener(new android.view.View.OnClickListener(fragment, activity, ((AlertDialog) (obj1))) {

            final Activity val$activity;
            final AlertDialog val$dialog;
            final Fragment val$fragment;

            public void onClick(View view)
            {
                if (fragment != null)
                {
                    ViewUtils.choseFromLibrary(fragment);
                } else
                {
                    ViewUtils.choseFromLibrary(activity);
                }
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                fragment = fragment1;
                activity = activity1;
                dialog = alertdialog;
                super();
            }
        });
        ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener(((AlertDialog) (obj1))) {

            final AlertDialog val$dialog;

            public void onClick(View view)
            {
                if (dialog.isShowing())
                {
                    dialog.dismiss();
                }
            }

            
            {
                dialog = alertdialog;
                super();
            }
        });
        ((AlertDialog) (obj1)).show();
    }

    public static void openGoogleMap(Context context, String s, String s1)
    {
        String s2 = context.getString(com.biznessapps.layout.R.string.current_location);
        Object obj = (new StringBuilder()).append("geo:0,0?q=").append(s1).append(",").append(s).toString();
        s2 = (new StringBuilder()).append(((String) (obj))).append("(").append(s2).append(")").toString();
        obj = AppCore.getInstance().getLocationFinder().getCurrentLocation();
        if (obj != null)
        {
            s2 = String.format("http://maps.google.com/maps?saddr=%s,%s&daddr=%s,%s", new Object[] {
                Double.valueOf(((Location) (obj)).getLatitude()), Double.valueOf(((Location) (obj)).getLongitude()), s1, s
            });
        }
        s = new Intent("android.intent.action.VIEW", Uri.parse(s2));
        s.addCategory("android.intent.category.BROWSABLE");
        s.putExtra("com.android.browser.application_id", context.getPackageName());
        s.addFlags(0x10000000);
        s.addFlags(0x4000000);
        try
        {
            context.startActivity(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Context context)
        {
            return;
        }
    }

    public static void openLinkInBrowser(Context context, String s)
    {
        if (StringUtils.isNotEmpty(s))
        {
            String s1 = s;
            if (!s.startsWith("http://"))
            {
                s1 = s;
                if (!s.startsWith("https://"))
                {
                    s1 = (new StringBuilder()).append("http://").append(s).toString();
                }
            }
            s = new Intent("android.intent.action.VIEW");
            s.setData(Uri.parse(s1));
            s.setFlags(0x10000000);
            context.startActivity(s);
        }
    }

    public static void plubWebView(WebView webview)
    {
        if (webview != null)
        {
            webview.getSettings().setJavaScriptEnabled(true);
            webview.getSettings().setSupportZoom(true);
            webview.getSettings().setBuiltInZoomControls(true);
            webview.getSettings().setDomStorageEnabled(true);
            webview.getSettings().setDefaultTextEncodingName("utf-8");
        }
    }

    public static void plubWebViewWithoutZooming(WebView webview)
    {
        if (webview != null)
        {
            webview.getSettings().setJavaScriptEnabled(true);
            webview.getSettings().setSupportZoom(true);
            webview.getSettings().setBuiltInZoomControls(true);
            webview.getSettings().setLoadWithOverviewMode(true);
            webview.getSettings().setUseWideViewPort(true);
            webview.getSettings().setDomStorageEnabled(true);
            webview.getSettings().setDefaultTextEncodingName("utf-8");
        }
    }

    public static void setBottomTabStyle(TextView textview)
    {
        setBottomTabStyle(textview, false);
    }

    public static void setBottomTabStyle(TextView textview, boolean flag)
    {
        UiSettings uisettings = AppCore.getInstance().getAppUiSettings();
        int i;
        int j;
        int k;
        int l;
        if (flag)
        {
            i = addAlpha(uisettings.getNavigationTextColor(), 180);
        } else
        {
            i = uisettings.getNavigationTextColor();
        }
        k = uisettings.getNavigationBarColor();
        if (flag)
        {
            j = addAlpha(uisettings.getNavigationBarColor(), 180);
        } else
        {
            j = uisettings.getNavigationBarColor();
        }
        l = uisettings.getNavigationTextColor();
        textview.setTextColor(l);
        CommonUtils.overrideImageColor(l, textview.getCompoundDrawables()[1]);
        textview.setBackgroundDrawable(getBottomTabDrawable(i, j));
        textview.setTextColor(getBottomTextListener(k, l));
    }

    public static void setGlobalBackgroundColor(Drawable drawable, UiSettings uisettings)
    {
        if (drawable != null)
        {
            CommonUtils.overrideImageColor(uisettings.getGlobalBgColor(), drawable);
        }
    }

    public static void setGlobalBgColor(View view, UiSettings uisettings)
    {
        if (view != null)
        {
            view.setBackgroundColor(uisettings.getGlobalBgColor());
        }
    }

    public static void setOpacity(Drawable drawable, int i)
    {
        drawable.setAlpha(getOpacity(i));
    }

    public static void setRootBgColor(View view, UiSettings uisettings)
    {
label0:
        {
            if (view != null)
            {
                if (!uisettings.useBlurEffect())
                {
                    break label0;
                }
                Drawable adrawable[] = new Drawable[2];
                adrawable[0] = new ColorDrawable(uisettings.getGlobalBgColor());
                adrawable[1] = new ColorDrawable(-1);
                adrawable[1].setAlpha(80);
                view.setBackgroundDrawable((new LayerDrawable(adrawable)).getCurrent());
            }
            return;
        }
        view.setBackgroundColor(uisettings.getGlobalBgColor());
    }

    public static void setSpannableExtendedText(TextView textview, int i, String s)
    {
        s = new SpannableString(Html.fromHtml(s));
        s.setSpan(new CustomLeadingMarginSpan(4, i), 0, s.length(), 0);
        textview.setText(s);
    }

    public static void showAdsIfNeeded(Activity activity, ViewGroup viewgroup, boolean flag)
    {
        showAdsIfNeeded(activity, viewgroup, flag, false);
    }

    public static void showAdsIfNeeded(Activity activity, ViewGroup viewgroup, boolean flag, boolean flag1)
    {
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (StringUtils.isNotEmpty(appsettings.getAdsId()) && appsettings.useAds())
        {
            initAds(activity, viewgroup, flag, appsettings.getAdsId(), flag1, appsettings.isAdmob());
        }
    }

    public static void showCustomToast(Context context, String s)
    {
        ViewGroup viewgroup = (ViewGroup)loadLayout(context, com.biznessapps.layout.R.layout.custom_toast_layout);
        ((TextView)viewgroup.findViewById(com.biznessapps.layout.R.id.toast_textview)).setText(s);
        context = new Toast(context);
        context.setView(viewgroup);
        context.setGravity(17, 0, 0);
        context.setDuration(1);
        context.show();
    }

    public static void showDialog(Activity activity, int i)
    {
        showDialog(activity, activity.getString(i));
    }

    public static void showDialog(Activity activity, String s)
    {
        showDialog(activity, null, s);
    }

    public static void showDialog(Activity activity, String s, Runnable runnable)
    {
        showDialog(activity, s, runnable, true);
    }

    public static void showDialog(Activity activity, String s, Runnable runnable, boolean flag)
    {
        showDialog(activity, s, null, runnable, flag);
    }

    public static void showDialog(Activity activity, String s, String s1)
    {
        showDialog(activity, s, s1, ((Runnable) (null)));
    }

    public static void showDialog(Activity activity, String s, String s1, Runnable runnable)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
        if (StringUtils.isNotEmpty(s))
        {
            builder.setTitle(s);
        }
        if (StringUtils.isNotEmpty(s1))
        {
            builder.setMessage(s1);
        }
        s = builder.create();
        s.setCancelable(false);
        s.setButton(-1, activity.getString(com.biznessapps.layout.R.string.ok), new android.content.DialogInterface.OnClickListener(runnable) {

            final Runnable val$runnable;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (runnable != null)
                {
                    runnable.run();
                }
            }

            
            {
                runnable = runnable1;
                super();
            }
        });
        s.show();
    }

    public static void showDialog(Activity activity, String s, String s1, Runnable runnable, boolean flag)
    {
        showDialog(activity, s, s1, runnable, flag, activity.getString(com.biznessapps.layout.R.string.yes), activity.getString(com.biznessapps.layout.R.string.cancel));
    }

    public static void showDialog(Activity activity, String s, String s1, Runnable runnable, boolean flag, String s2, String s3)
    {
        activity = new android.app.AlertDialog.Builder(activity);
        if (StringUtils.isNotEmpty(s))
        {
            activity.setTitle(s);
        }
        if (StringUtils.isNotEmpty(s1))
        {
            activity.setMessage(s1);
        }
        activity = activity.create();
        activity.setCancelable(false);
        activity.setButton(-1, s2, new android.content.DialogInterface.OnClickListener(runnable) {

            final Runnable val$runnable;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                runnable.run();
            }

            
            {
                runnable = runnable1;
                super();
            }
        });
        if (flag)
        {
            activity.setButton(-2, s3, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    dialoginterface.dismiss();
                }

            });
        }
        activity.show();
    }

    public static void showEmailCollectPropmtIfNeeded(Activity activity, String s)
    {
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        Object obj = appsettings.getEmailCollectInfo();
        if (obj != null && ((EmailCollectInfo) (obj)).showForTab(s))
        {
            s = new android.app.AlertDialog.Builder(activity);
            Object obj1 = loadLayout(activity.getApplicationContext(), com.biznessapps.layout.R.layout.email_collect_layout);
            s.setView(((View) (obj1)));
            s.setTitle(activity.getString(com.biznessapps.layout.R.string.collect_email_title));
            if (StringUtils.isNotEmpty(((EmailCollectInfo) (obj)).getBody()))
            {
                s.setMessage(((EmailCollectInfo) (obj)).getBody());
            }
            obj = (EditText)((View) (obj1)).findViewById(com.biznessapps.layout.R.id.email_edit_text);
            changeDefaultCursorColor(((TextView) (obj)));
            s.setPositiveButton(com.biznessapps.layout.R.string.okay, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

            });
            s.setNegativeButton(com.biznessapps.layout.R.string.cancel, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

            });
            s = s.create();
            s.setCancelable(false);
            s.show();
            obj1 = s.getButton(-1);
            ((Button) (obj1)).setText(activity.getString(com.biznessapps.layout.R.string.okay));
            ((Button) (obj1)).setOnClickListener(new android.view.View.OnClickListener(((EditText) (obj)), appsettings, s, activity) {

                final AppSettings val$appSettings;
                final AlertDialog val$dialog;
                final EditText val$emailEditText;
                final Activity val$holdActivity;

                public void onClick(View view)
                {
                    view = emailEditText.getText().toString();
                    appSettings.setEmailCollectInfo(null);
                    if (StringUtils.isCorrectEmail(view))
                    {
                        (new Thread(view. new Runnable() {

                            final _cls6 this$0;
                            final String val$email;

                            public void run()
                            {
                                AppHttpUtils.executeGetSyncRequest(String.format("collect_email.php?app_id=%s&action=%s&email=%s", new Object[] {
                                    AppCore.getInstance().getAppSettings().getAppId(), "submit", email
                                }), true);
                            }

            
            {
                this$0 = final__pcls6;
                email = String.this;
                super();
            }
                        })).start();
                        if (dialog != null)
                        {
                            dialog.dismiss();
                        }
                    } else
                    {
                        if (emailEditText.getTag() == null)
                        {
                            view = holdActivity.getString(com.biznessapps.layout.R.string.email_is_not_correct);
                            emailEditText.setTag(view);
                            ViewUtils.showCustomToast(holdActivity.getApplicationContext(), view);
                            return;
                        }
                        if (dialog != null)
                        {
                            dialog.dismiss();
                            return;
                        }
                    }
                }

            
            {
                emailEditText = edittext;
                appSettings = appsettings;
                dialog = alertdialog;
                holdActivity = activity;
                super();
            }
            });
            obj = s.getButton(-2);
            ((Button) (obj)).setText(activity.getString(com.biznessapps.layout.R.string.cancel));
            ((Button) (obj)).setOnClickListener(new android.view.View.OnClickListener(appsettings, s) {

                final AppSettings val$appSettings;
                final AlertDialog val$dialog;

                public void onClick(View view)
                {
                    appSettings.setEmailCollectInfo(null);
                    (new Thread(new Runnable() {

                        final _cls7 this$0;

                        public void run()
                        {
                            AppHttpUtils.executeGetSyncRequest(String.format("collect_email.php?app_id=%s&action=%s&email=%s", new Object[] {
                                AppCore.getInstance().getAppSettings().getAppId(), "cancel", ""
                            }), true);
                        }

            
            {
                this$0 = _cls7.this;
                super();
            }
                    })).start();
                    if (dialog != null)
                    {
                        dialog.dismiss();
                    }
                }

            
            {
                appSettings = appsettings;
                dialog = alertdialog;
                super();
            }
            });
        }
    }

    public static void showErrorToast(Activity activity, NetworkResultEntity networkresultentity)
    {
        Context context = activity.getApplicationContext();
        if (networkresultentity.getErrorCode() == -5)
        {
            showCustomToast(context, activity.getString(com.biznessapps.layout.R.string.network_error));
            return;
        }
        if (networkresultentity.getErrorCode() == -4)
        {
            showCustomToast(context, activity.getString(com.biznessapps.layout.R.string.error_occured));
            return;
        } else
        {
            showCustomToast(context, activity.getString(com.biznessapps.layout.R.string.unknown_error));
            return;
        }
    }

    public static void showKeyboard(Activity activity, View view, boolean flag)
    {
        if (view == null)
        {
            return;
        }
        InputMethodManager inputmethodmanager = (InputMethodManager)activity.getSystemService("input_method");
        if (flag)
        {
            activity.getWindow().setSoftInputMode(4);
            inputmethodmanager.showSoftInput(view, 2);
            return;
        } else
        {
            activity.getWindow().setSoftInputMode(2);
            inputmethodmanager.hideSoftInputFromWindow(view.getWindowToken(), 2);
            return;
        }
    }

    public static void showKeyboard(Context context, EditText edittext)
    {
        ((InputMethodManager)context.getSystemService("input_method")).showSoftInput(edittext, 2);
    }

    public static void showMailingListPropmt(CommonFragmentActivity commonfragmentactivity)
    {
        Context context = commonfragmentactivity.getApplicationContext();
        Object obj = context.getSharedPreferences("ba.application.settings", 0);
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (((SharedPreferences) (obj)).getBoolean("mailing_dialog", true) && appsettings != null && appsettings.isMailingListPrompt())
        {
            ((SharedPreferences) (obj)).edit().putBoolean("mailing_dialog", false).commit();
            obj = new android.app.AlertDialog.Builder(commonfragmentactivity);
            ((android.app.AlertDialog.Builder) (obj)).setTitle(com.biznessapps.layout.R.string.mailing_list);
            ((android.app.AlertDialog.Builder) (obj)).setMessage(com.biznessapps.layout.R.string.mailing_list_question);
            ((android.app.AlertDialog.Builder) (obj)).setPositiveButton(com.biznessapps.layout.R.string.yes, new android.content.DialogInterface.OnClickListener(context, commonfragmentactivity, appsettings) {

                final AppSettings val$appSettings;
                final Context val$context;
                final CommonFragmentActivity val$holdActivity;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    Intent intent = new Intent(context, ActivitySelector.getActivityClass("MailingListViewController"));
                    intent.putExtra("TAB_LABEL", holdActivity.getIntent().getStringExtra("TAB_LABEL"));
                    intent.putExtra("TAB_FRAGMENT", "MailingListViewController");
                    Tab tab = appSettings.getMailingTab();
                    intent.putExtra("TAB_SPECIAL_ID", tab.getTabId());
                    intent.putExtra("TAB_LABEL", tab.getLabel());
                    holdActivity.startActivity(intent);
                    if (dialoginterface != null)
                    {
                        dialoginterface.dismiss();
                    }
                }

            
            {
                context = context1;
                holdActivity = commonfragmentactivity;
                appSettings = appsettings;
                super();
            }
            });
            ((android.app.AlertDialog.Builder) (obj)).setNegativeButton(com.biznessapps.layout.R.string.no, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if (dialoginterface != null)
                    {
                        dialoginterface.dismiss();
                    }
                }

            });
            ((android.app.AlertDialog.Builder) (obj)).create().show();
        }
    }

    public static void showMoreTitleBar(ViewGroup viewgroup, Intent intent, UiSettings uisettings)
    {
        Tab tab = AppCore.getInstance().getAppSettings().getMoreTab();
        if (tab.hasCustomDesign())
        {
            initTitleBar(viewgroup, intent, getColor(tab.getNavigBarTextColor()), getColor(tab.getNavigBarTextShadowColor()), getColor(tab.getNavigBarColor()), tab.getNavTintOpacity(), tab.getGlobalHeaderUrl());
            return;
        } else
        {
            showTitleBar(viewgroup, intent, uisettings);
            return;
        }
    }

    public static void showNetwortErrorToast(Activity activity)
    {
        showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.network_error));
    }

    public static void showNoDataToast(Activity activity)
    {
        showCustomToast(activity.getApplicationContext(), activity.getString(com.biznessapps.layout.R.string.nothing_found));
    }

    public static void showOfflineCachingPropmt(CommonFragmentActivity commonfragmentactivity)
    {
        SharedPreferences sharedpreferences = commonfragmentactivity.getApplicationContext().getSharedPreferences("ba.application.settings", 0);
        AppSettings appsettings = AppCore.getInstance().getAppSettings();
        if (sharedpreferences.getBoolean("offline_caching_dialog", true) && appsettings != null && appsettings.isOfflineCachingPrompt())
        {
            commonfragmentactivity = new android.app.AlertDialog.Builder(commonfragmentactivity);
            commonfragmentactivity.setTitle(com.biznessapps.layout.R.string.offline_caching_dialog_title);
            commonfragmentactivity.setMessage(com.biznessapps.layout.R.string.offline_caching_dialog_message);
            commonfragmentactivity.setPositiveButton(com.biznessapps.layout.R.string.yes, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    AppCore.getInstance().setUseOfflineMode(true);
                    if (dialoginterface != null)
                    {
                        dialoginterface.dismiss();
                    }
                }

            });
            commonfragmentactivity.setNegativeButton(com.biznessapps.layout.R.string.no, new android.content.DialogInterface.OnClickListener() {

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    AppCore.getInstance().setUseOfflineMode(false);
                    if (dialoginterface != null)
                    {
                        dialoginterface.dismiss();
                    }
                }

            });
            commonfragmentactivity = commonfragmentactivity.create();
            commonfragmentactivity.setCancelable(false);
            commonfragmentactivity.show();
            sharedpreferences.edit().putBoolean("offline_caching_dialog", false).commit();
        }
    }

    public static void showShortToast(Activity activity, int i)
    {
        String s = activity.getString(i);
        showCustomToast(activity.getApplicationContext(), s);
    }

    public static void showTitleBar(ViewGroup viewgroup, Intent intent, UiSettings uisettings)
    {
        initTitleBar(viewgroup, intent, uisettings.getNavigationTextColor(), uisettings.getNavigationTextShadowColor(), uisettings.getNavigationBarColor(), uisettings.getNavTintOpacity(), uisettings.getGlobalHeaderUrl());
    }

    public static void showWarningDialog(Activity activity, int i)
    {
        showWarningDialog(activity, activity.getString(i));
    }

    public static void showWarningDialog(Activity activity, String s)
    {
        activity = new android.app.AlertDialog.Builder(activity);
        activity.setTitle(s);
        activity.setPositiveButton(com.biznessapps.layout.R.string.okay, new android.content.DialogInterface.OnClickListener() {

            public void onClick(DialogInterface dialoginterface, int i)
            {
                if (dialoginterface != null)
                {
                    dialoginterface.dismiss();
                }
            }

        });
        activity = activity.create();
        activity.setCancelable(false);
        activity.show();
    }

    public static void showWebViewData(Activity activity, String s, int i)
    {
        activity = new Dialog(activity);
        activity.setContentView(com.biznessapps.layout.R.layout.dialog);
        activity.setTitle(i);
        activity.setCancelable(true);
        WebView webview = (WebView)activity.findViewById(com.biznessapps.layout.R.id.webview);
        webview.setWebViewClient(new WebViewClient(webview) {

            final WebView val$webView;

            public void onPageFinished(WebView webview1, String s1)
            {
                webView.setVisibility(0);
                webView.requestFocus(130);
            }

            
            {
                webView = webview;
                super();
            }
        });
        webview.getSettings().setJavaScriptEnabled(true);
        webview.getSettings().setSupportMultipleWindows(true);
        webview.getSettings().setDomStorageEnabled(true);
        webview.loadUrl(s);
        activity.show();
    }

    public static transient void updateButtonsState(UiSettings uisettings, Button abutton[])
    {
        if (abutton.length > 1)
        {
            int i = 0;
            while (i < abutton.length) 
            {
                Button button = abutton[i];
                if (i == 0)
                {
                    button.setTextColor(uisettings.getButtonTextColor());
                    CommonUtils.overrideImageColor(uisettings.getButtonBgColor(), button.getBackground());
                } else
                {
                    button.setTextColor(uisettings.getButtonBgColor());
                    CommonUtils.overrideImageColor(uisettings.getButtonTextColor(), button.getBackground());
                }
                i++;
            }
        }
    }

    public static void updateSearchBarWithColor(int i, ImageView imageview, EditText edittext)
    {
        edittext.setTextColor(i);
        edittext.setHintTextColor(i);
        CommonUtils.overrideImageColor(i, imageview.getDrawable());
        CommonUtils.overrideImageColor(i, edittext.getCompoundDrawables()[0]);
    }

    public static transient void updateTextViewIconState(TextView atextview[])
    {
        UiSettings uisettings = AppCore.getInstance().getAppUiSettings();
        int k = uisettings.getNavigationBarColor();
        int l = uisettings.getNavigationTextColor();
        int i1 = atextview.length;
        int i = 0;
        while (i < i1) 
        {
            TextView textview = atextview[i];
            int j;
            if (textview.isSelected())
            {
                j = k;
            } else
            {
                j = l;
            }
            CommonUtils.overrideImageColor(j, textview.getCompoundDrawables()[1]);
            i++;
        }
    }

    public static void updateTurnOnOffViewState(boolean flag, ImageView imageview, ImageView imageview1, UiSettings uisettings)
    {
        android.widget.FrameLayout.LayoutParams layoutparams = (android.widget.FrameLayout.LayoutParams)imageview.getLayoutParams();
        int i;
        if (flag)
        {
            i = 5;
        } else
        {
            i = 3;
        }
        layoutparams.gravity = i;
        layoutparams.gravity = layoutparams.gravity | 0x10;
        imageview.setLayoutParams(layoutparams);
        if (!flag);
        imageview.setVisibility(0);
        if (flag)
        {
            imageview1.setImageResource(com.biznessapps.layout.R.drawable.turn_on);
            CommonUtils.overrideImageColor(uisettings.getButtonBgColor(), imageview1.getDrawable());
        } else
        {
            imageview1.setImageBitmap(null);
        }
        CommonUtils.overrideImageColor(uisettings.getButtonBgColor(), imageview1.getBackground());
    }

    public static List wrapWithItemSettings(List list, UiSettings uisettings)
    {
        CommonListEntity commonlistentity;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); getWrappedItem(commonlistentity, list.indexOf(commonlistentity), uisettings))
        {
            commonlistentity = (CommonListEntity)iterator.next();
        }

        return list;
    }


}
