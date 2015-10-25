.class final Lcom/paypal/android/sdk/payments/P;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/paypal/android/sdk/payments/LoginActivity;Landroid/widget/EditText;)V
    .locals 0

    iput-object p2, p0, Lcom/paypal/android/sdk/payments/P;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 15

    const v5, 0x461c3c00    # 9999.0f

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/paypal/android/sdk/payments/P;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v0, p0, Lcom/paypal/android/sdk/payments/P;->a:Landroid/widget/EditText;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v11, 0x1

    move v12, v5

    move v13, v6

    move v14, v4

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method
