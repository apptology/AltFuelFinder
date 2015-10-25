// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package io.card.payment;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.OrientationEventListener;
import android.view.SurfaceView;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Toast;
import com.paypal.android.sdk.U;
import com.paypal.android.sdk.dK;
import com.paypal.android.sdk.de;
import com.paypal.android.sdk.df;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.lang.reflect.Constructor;
import java.util.Date;

// Referenced classes of package io.card.payment:
//            CardScanner, n, o, CameraUnavailableException, 
//            q, DataEntryActivity, c, DetectionInfo, 
//            d, b, CreditCard

public final class CardIOActivity extends Activity
{

    public static final String EXTRA_CAPTURED_CARD_IMAGE = "io.card.payment.capturedCardImage";
    public static final String EXTRA_GUIDE_COLOR = "io.card.payment.guideColor";
    public static final String EXTRA_HIDE_CARDIO_LOGO = "io.card.payment.hideLogo";
    public static final String EXTRA_KEEP_APPLICATION_THEME = "io.card.payment.keepApplicationTheme";
    public static final String EXTRA_LANGUAGE_OR_LOCALE = "io.card.payment.languageOrLocale";
    public static final String EXTRA_NO_CAMERA = "io.card.payment.noCamera";
    public static final String EXTRA_REQUIRE_CVV = "io.card.payment.requireCVV";
    public static final String EXTRA_REQUIRE_EXPIRY = "io.card.payment.requireExpiry";
    public static final String EXTRA_REQUIRE_POSTAL_CODE = "io.card.payment.requirePostalCode";
    public static final String EXTRA_RETURN_CARD_IMAGE = "io.card.payment.returnCardImage";
    public static final String EXTRA_SCAN_EXPIRY = "io.card.payment.scanExpiry";
    public static final String EXTRA_SCAN_INSTRUCTIONS = "io.card.payment.scanInstructions";
    public static final String EXTRA_SCAN_OVERLAY_LAYOUT_ID = "io.card.payment.scanOverlayLayoutId";
    public static final String EXTRA_SCAN_RESULT = "io.card.payment.scanResult";
    public static final String EXTRA_SUPPRESS_CONFIRMATION = "io.card.payment.suppressConfirmation";
    public static final String EXTRA_SUPPRESS_MANUAL_ENTRY = "io.card.payment.suppressManual";
    public static final String EXTRA_SUPPRESS_SCAN = "io.card.payment.suppressScan";
    public static final String EXTRA_USE_CARDIO_LOGO = "io.card.payment.useCardIOLogo";
    public static final String EXTRA_USE_PAYPAL_ACTIONBAR_ICON = "io.card.payment.intentSenderIsPayPal";
    public static final int RESULT_CARD_INFO = 0xca8d10;
    public static final int RESULT_CONFIRMATION_SUPPRESSED;
    public static final int RESULT_ENTRY_CANCELED;
    public static final int RESULT_SCAN_NOT_AVAILABLE;
    public static final int RESULT_SCAN_SUPPRESSED;
    static Bitmap a = null;
    private static int b;
    private static final String c = io/card/payment/CardIOActivity.getSimpleName();
    private static final long d[] = {
        0L, 70L, 10L, 40L
    };
    private static int e = 10;
    private static final int f = 10;
    private static int s = 0;
    private static boolean v;
    private n g;
    private OrientationEventListener h;
    private o i;
    private CreditCard j;
    private Rect k;
    private int l;
    private int m;
    private boolean n;
    private boolean o;
    private LinearLayout p;
    private RelativeLayout q;
    private FrameLayout r;
    private CardScanner t;
    private boolean u;

    public CardIOActivity()
    {
        n = false;
        o = false;
        u = false;
    }

    static CreditCard a(CardIOActivity cardioactivity, CreditCard creditcard)
    {
        cardioactivity.j = null;
        return null;
    }

    static n a(CardIOActivity cardioactivity)
    {
        return cardioactivity.g;
    }

    private void a(float f1)
    {
        if (p != null)
        {
            RotateAnimation rotateanimation = new RotateAnimation(0.0F, f1, p.getWidth() / 2, p.getHeight() / 2);
            rotateanimation.setDuration(0L);
            rotateanimation.setRepeatCount(0);
            rotateanimation.setFillAfter(true);
            p.setAnimation(rotateanimation);
        }
    }

    private void a(int i1, Intent intent)
    {
        setResult(i1, intent);
        a = null;
        finish();
    }

    static void a(CardIOActivity cardioactivity, int i1)
    {
        cardioactivity.b(i1);
    }

    private void a(Exception exception)
    {
        String s1 = de.a(df.r);
        Log.e("card.io", "Unkown exception - please send the stack trace to support@card.io", exception);
        exception = Toast.makeText(this, s1, 1);
        exception.setGravity(17, 0, -75);
        exception.show();
        u = true;
    }

    private void a(boolean flag)
    {
        boolean flag1;
        if (i != null && g != null && t.b(flag))
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1)
        {
            g.b(flag);
        }
    }

    static CreditCard b(CardIOActivity cardioactivity)
    {
        return cardioactivity.j;
    }

    private void b(int i1)
    {
        if (i1 >= 0 && t != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j1 = ((WindowManager)getSystemService("window")).getDefaultDisplay().getRotation();
        if (j1 == 0) goto _L4; else goto _L3
_L3:
        byte byte0;
        if (j1 == 1)
        {
            j1 = 90;
        } else
        {
label0:
            {
                if (j1 != 2)
                {
                    break label0;
                }
                j1 = 180;
            }
        }
_L6:
        j1 += i1;
        if (j1 > 360)
        {
            j1 -= 360;
        }
        byte0 = -1;
        if (j1 < 15 || j1 > 345)
        {
            m = 1;
            i1 = 0;
        } else
        if (j1 > 75 && j1 < 105)
        {
            m = 4;
            i1 = 90;
        } else
        if (j1 > 165 && j1 < 195)
        {
            i1 = 180;
            m = 2;
        } else
        {
            i1 = byte0;
            if (j1 > 255)
            {
                i1 = byte0;
                if (j1 < 285)
                {
                    m = 3;
                    i1 = 270;
                }
            }
        }
        if (i1 >= 0 && i1 != l)
        {
            (new StringBuilder("onOrientationChanged(")).append(i1).append(") calling setDeviceOrientation(").append(m).append(")");
            t.a(m);
            c(i1);
            if (i1 == 90)
            {
                a(270F);
                return;
            }
            break MISSING_BLOCK_LABEL_266;
        }
        if (true) goto _L1; else goto _L4
        if (j1 != 3) goto _L4; else goto _L5
_L5:
        j1 = 270;
          goto _L6
_L4:
        j1 = 0;
          goto _L6
        if (i1 == 270)
        {
            a(90F);
            return;
        }
        a(i1);
        return;
          goto _L6
    }

    static String c()
    {
        return c;
    }

    private void c(int i1)
    {
        SurfaceView surfaceview = i.a();
        if (surfaceview == null)
        {
            Log.wtf("card.io", "surface view is null.. recovering... rotation might be weird.");
            return;
        } else
        {
            k = t.a(surfaceview.getWidth(), surfaceview.getHeight());
            Rect rect = k;
            rect.top = rect.top + surfaceview.getTop();
            rect = k;
            int j1 = rect.bottom;
            rect.bottom = surfaceview.getTop() + j1;
            g.a(k, i1);
            l = i1;
            return;
        }
    }

    static void c(CardIOActivity cardioactivity)
    {
        cardioactivity.e();
    }

    public static boolean canReadCardWithCamera()
    {
        boolean flag;
        try
        {
            flag = io.card.payment.q.a();
        }
        catch (CameraUnavailableException cameraunavailableexception)
        {
            return false;
        }
        catch (RuntimeException runtimeexception)
        {
            Log.w(c, "RuntimeException accessing Util.hardwareSupported()");
            return false;
        }
        return flag;
    }

    static int d()
    {
        return f;
    }

    private void e()
    {
        Intent intent1 = getIntent();
        if (intent1 != null && intent1.getBooleanExtra("io.card.payment.suppressConfirmation", false))
        {
            Intent intent = new Intent(this, io/card/payment/DataEntryActivity);
            intent.putExtra("io.card.payment.scanResult", j);
            j = null;
            if (intent1.getBooleanExtra("io.card.payment.returnCardImage", false) && g != null && g.a() != null)
            {
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                g.a().compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bytearrayoutputstream);
                intent.putExtra("io.card.payment.capturedCardImage", bytearrayoutputstream.toByteArray());
            }
            a(RESULT_CONFIRMATION_SUPPRESSED, intent);
            return;
        } else
        {
            (new Handler()).post(new c(this));
            return;
        }
    }

    private boolean f()
    {
        j = null;
        if (!v && i == null)
        {
            throw new AssertionError();
        }
        CardScanner cardscanner = t;
        android.view.SurfaceHolder surfaceholder = i.a().getHolder();
        if (!o.a && surfaceholder == null)
        {
            throw new AssertionError();
        }
        boolean flag = cardscanner.a(surfaceholder);
        if (flag)
        {
            q.setVisibility(0);
        }
        return flag;
    }

    public static Bitmap getCapturedCardImage(Intent intent)
    {
        if (intent == null || !intent.hasExtra("io.card.payment.capturedCardImage"))
        {
            return null;
        } else
        {
            return BitmapFactory.decodeStream(new ByteArrayInputStream(intent.getByteArrayExtra("io.card.payment.capturedCardImage")), null, new android.graphics.BitmapFactory.Options());
        }
    }

    public static Date sdkBuildDate()
    {
        return new Date("06/04/2015 17:39:33 -0500");
    }

    public static String sdkVersion()
    {
        return "5.0.1";
    }

    final void a()
    {
        boolean flag;
        if (!t.e())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(flag);
    }

    final void a(int i1)
    {
        SurfaceView surfaceview = i.a();
        if (g != null)
        {
            g.a(new Rect(surfaceview.getLeft(), surfaceview.getTop(), surfaceview.getRight(), surfaceview.getBottom()));
        }
        m = 1;
        c(0);
        if (1 != m)
        {
            Log.wtf("card.io", "the orientation of the scanner doesn't match the orientation of the activity");
        }
        a(new DetectionInfo());
    }

    final void a(Bitmap bitmap, DetectionInfo detectioninfo)
    {
        float f1;
        try
        {
            ((Vibrator)getSystemService("vibrator")).vibrate(d, -1);
        }
        catch (SecurityException securityexception)
        {
            Log.e("card.io", "Could not activate vibration feedback. Please add <uses-permission android:name=\"android.permission.VIBRATE\" /> to your application's manifest.");
        }
        catch (Exception exception)
        {
            Log.w("card.io", "Exception while attempting to vibrate: ", exception);
        }
        t.c();
        q.setVisibility(4);
        if (detectioninfo.complete)
        {
            j = detectioninfo.a();
            g.a(j);
        }
        if (m == 1 || m == 2)
        {
            f1 = ((float)k.right / 428F) * 0.95F;
        } else
        {
            f1 = ((float)k.right / 428F) * 1.15F;
        }
        detectioninfo = new Matrix();
        (new StringBuilder("Scale factor: ")).append(f1);
        detectioninfo.postScale(f1, f1);
        detectioninfo = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), detectioninfo, false);
        g.a(detectioninfo);
        if (o)
        {
            bitmap = new ByteArrayOutputStream();
            detectioninfo.compress(android.graphics.Bitmap.CompressFormat.JPEG, 80, bitmap);
            detectioninfo = new Intent();
            if (getIntent() != null && getIntent().getBooleanExtra("io.card.payment.returnCardImage", false))
            {
                detectioninfo.putExtra("io.card.payment.capturedCardImage", bitmap.toByteArray());
            }
            a(RESULT_SCAN_SUPPRESSED, ((Intent) (detectioninfo)));
            return;
        } else
        {
            e();
            return;
        }
    }

    final void a(DetectionInfo detectioninfo)
    {
        g.a(detectioninfo);
    }

    final void b()
    {
        t.a(true);
    }

    public final Rect getTorchRect()
    {
        if (g == null)
        {
            return null;
        } else
        {
            return g.d();
        }
    }

    protected final void onActivityResult(int i1, int j1, Intent intent)
    {
        super.onActivityResult(i1, j1, intent);
        String.format("onActivityResult(requestCode:%d, resultCode:%d, ...", new Object[] {
            Integer.valueOf(i1), Integer.valueOf(j1)
        });
        if (j1 == RESULT_CARD_INFO || j1 == RESULT_ENTRY_CANCELED || u)
        {
            if (intent != null && intent.hasExtra("io.card.payment.scanResult"))
            {
                (new StringBuilder("data entry result: ")).append(intent.getParcelableExtra("io.card.payment.scanResult"));
            }
            a(j1, intent);
        } else
        if (q != null)
        {
            q.setVisibility(0);
            return;
        }
    }

    public final void onBackPressed()
    {
        n n1;
        if (!u)
        {
            n1 = g;
        }
        if (t != null)
        {
            super.onBackPressed();
        }
    }

    protected final void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        int i1 = s + 1;
        s = i1;
        if (i1 != 1)
        {
            String.format("INTERNAL WARNING: There are %d (not 1) CardIOActivity allocations!", new Object[] {
                Integer.valueOf(s)
            });
        }
        bundle = getIntent();
        bundle.getBooleanExtra("io.card.payment.keepApplicationTheme", false);
        de.a(bundle);
        o = bundle.getBooleanExtra("io.card.payment.suppressScan", false);
        String s1 = io.card.payment.q.a(getPackageManager().resolveActivity(bundle, 0x10000), io/card/payment/CardIOActivity);
        if (s1 != null)
        {
            throw new RuntimeException(s1);
        }
        n = bundle.getBooleanExtra("io.card.payment.suppressManual", false);
        if (!bundle.getBooleanExtra("io.card.payment.noCamera", false)) goto _L2; else goto _L1
_L1:
        u = true;
_L9:
        if (u) goto _L4; else goto _L3
_L3:
        requestWindowFeature(1);
        k = new Rect();
        m = 1;
        if (!bundle.getBooleanExtra("io.card.payment.cameraBypassTestMode", false)) goto _L6; else goto _L5
_L5:
        if (!getPackageName().contentEquals("io.card.development"))
        {
            Log.e(c, (new StringBuilder()).append(getPackageName()).append(" is not correct").toString());
            throw new IllegalStateException("illegal access of private extra");
        }
          goto _L7
        bundle;
        a(bundle);
_L4:
        if (u && n)
        {
            a(RESULT_SCAN_NOT_AVAILABLE, ((Intent) (null)));
        }
        return;
_L2:
        if (io.card.payment.q.a()) goto _L9; else goto _L8
_L8:
        df df1 = df.p;
        String s3 = de.a(df1);
        Log.w("card.io", (new StringBuilder()).append(df1).append(": ").append(s3).toString());
        u = true;
          goto _L9
        Object obj;
        obj;
        Object obj1 = df.q;
        String s4 = de.a(((df) (obj1)));
        Log.e("card.io", (new StringBuilder()).append(obj1).append(": ").append(s4).toString());
        obj1 = Toast.makeText(this, s4, 1);
        ((Toast) (obj1)).setGravity(17, 0, -75);
        ((Toast) (obj1)).show();
        u = true;
          goto _L9
        obj1;
        a(((Exception) (obj1)));
          goto _L9
_L7:
        t = (CardScanner)Class.forName("io.card.payment.CardScannerTester").getConstructor(new Class[] {
            getClass(), Integer.TYPE
        }).newInstance(new Object[] {
            this, Integer.valueOf(m)
        });
_L16:
        t.b();
        r = new FrameLayout(this);
        r.setBackgroundColor(0xff000000);
        r.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        bundle = new FrameLayout(this);
        bundle.setId(1);
        t.getClass();
        t.getClass();
        i = new o(this, null, 640, 480);
        i.setLayoutParams(new android.widget.FrameLayout.LayoutParams(-1, -1, 48));
        bundle.addView(i);
        g = new n(this, null, io.card.payment.q.a(this));
        g.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        if (getIntent() == null) goto _L11; else goto _L10
_L10:
        int j1;
        boolean flag = getIntent().getBooleanExtra("io.card.payment.useCardIOLogo", false);
        g.c(flag);
        j1 = getIntent().getIntExtra("io.card.payment.guideColor", 0);
        int k1;
        if (j1 == 0)
        {
            break MISSING_BLOCK_LABEL_1151;
        }
        k1 = 0xff000000 | j1;
        if (j1 == k1)
        {
            break MISSING_BLOCK_LABEL_656;
        }
        Log.w("card.io", "Removing transparency from provided guide color.");
        g.a(k1);
_L17:
        String s2;
        boolean flag1 = getIntent().getBooleanExtra("io.card.payment.hideLogo", false);
        g.a(flag1);
        s2 = getIntent().getStringExtra("io.card.payment.scanInstructions");
        if (s2 == null) goto _L11; else goto _L12
_L12:
        g.a(s2);
_L11:
        bundle.addView(g);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(10);
        layoutparams.addRule(2, 2);
        r.addView(bundle, layoutparams);
        q = new RelativeLayout(this);
        q.setGravity(80);
        bundle = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        layoutparams.addRule(12);
        q.setLayoutParams(bundle);
        q.setId(2);
        q.setGravity(85);
        if (!n)
        {
            bundle = new Button(this);
            bundle.setId(3);
            bundle.setText(de.a(df.m));
            bundle.setTextSize(12F);
            bundle.setOnClickListener(new d(this));
            q.addView(bundle);
            dK.a(bundle, false, this);
            bundle.setTextSize(14F);
            bundle.setMinimumHeight(dK.a("42dip", this));
            android.widget.RelativeLayout.LayoutParams layoutparams1 = (android.widget.RelativeLayout.LayoutParams)bundle.getLayoutParams();
            layoutparams1.width = -2;
            layoutparams1.height = -2;
            layoutparams1.addRule(12);
            dK.a(bundle, "16dip", null, "16dip", null);
            dK.b(bundle, "4dip", "4dip", "4dip", "4dip");
        }
        bundle = new android.widget.RelativeLayout.LayoutParams(-1, -2);
        bundle.addRule(12);
        j1 = (int)(getResources().getDisplayMetrics().density * 15F + 0.5F);
        bundle.setMargins(0, j1, 0, j1);
        r.addView(q, bundle);
        if (getIntent() == null) goto _L14; else goto _L13
_L13:
        if (p != null)
        {
            r.removeView(p);
            p = null;
        }
        j1 = getIntent().getIntExtra("io.card.payment.scanOverlayLayoutId", -1);
        if (j1 == -1) goto _L14; else goto _L15
_L15:
        p = new LinearLayout(this);
        p.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        getLayoutInflater().inflate(j1, p);
        r.addView(p);
_L14:
        setContentView(r);
        h = new b(this, this, 2);
          goto _L4
_L6:
        t = new CardScanner(this, m);
          goto _L16
        g.a(0xff00ff00);
          goto _L17
    }

    protected final void onDestroy()
    {
        g = null;
        s--;
        if (t != null)
        {
            t.d();
            t = null;
        }
        super.onDestroy();
    }

    protected final void onPause()
    {
        super.onPause();
        if (h != null)
        {
            h.disable();
        }
        a(false);
        if (t != null)
        {
            t.c();
        } else
        if (!u)
        {
            Log.wtf("card.io", "cardScanner is null in onPause()");
            return;
        }
    }

    protected final void onResume()
    {
        super.onResume();
        if (u)
        {
            e();
            return;
        }
        io.card.payment.q.b();
        getWindow().addFlags(1024);
        getWindow().addFlags(128);
        U.b(this);
        setRequestedOrientation(1);
        h.enable();
        if (!f())
        {
            Log.e(c, "Could not connect to camera.");
            String s1 = de.a(df.r);
            Log.e("card.io", (new StringBuilder("error display: ")).append(s1).toString());
            Toast.makeText(this, s1, 1).show();
            e();
        } else
        {
            a(false);
        }
        b(l);
    }

    static 
    {
        int i1;
        boolean flag;
        if (!io/card/payment/CardIOActivity.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        v = flag;
        b = 0xca8d10;
        b = 0xca8d11;
        i1 = b;
        b = i1 + 1;
        RESULT_ENTRY_CANCELED = i1;
        i1 = b;
        b = i1 + 1;
        RESULT_SCAN_NOT_AVAILABLE = i1;
        i1 = b;
        b = i1 + 1;
        RESULT_SCAN_SUPPRESSED = i1;
        i1 = b;
        b = i1 + 1;
        RESULT_CONFIRMATION_SUPPRESSED = i1;
        e = 11;
    }
}
