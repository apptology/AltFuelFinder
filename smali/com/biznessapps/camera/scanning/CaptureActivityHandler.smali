.class public final Lcom/biznessapps/camera/scanning/CaptureActivityHandler;
.super Landroid/os/Handler;
.source "CaptureActivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

.field private final decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

.field private state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;Ljava/util/Vector;Ljava/lang/String;)V
    .locals 3
    .param p1, "activity"    # Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;
    .param p3, "characterSet"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;",
            "Ljava/util/Vector",
            "<",
            "Lcom/google/zxing/BarcodeFormat;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 56
    .local p2, "decodeFormats":Ljava/util/Vector;, "Ljava/util/Vector<Lcom/google/zxing/BarcodeFormat;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    .line 58
    new-instance v0, Lcom/biznessapps/camera/scanning/DecodeThread;

    new-instance v1, Lcom/biznessapps/camera/scanning/ViewfinderResultPointCallback;

    invoke-virtual {p1}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->getViewfinderView()Lcom/biznessapps/camera/scanning/ViewfinderView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/biznessapps/camera/scanning/ViewfinderResultPointCallback;-><init>(Lcom/biznessapps/camera/scanning/ViewfinderView;)V

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/biznessapps/camera/scanning/DecodeThread;-><init>(Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;Ljava/util/Vector;Ljava/lang/String;Lcom/google/zxing/ResultPointCallback;)V

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

    .line 60
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

    invoke-virtual {v0}, Lcom/biznessapps/camera/scanning/DecodeThread;->start()V

    .line 61
    sget-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 64
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/camera/scanning/CameraManager;->startPreview()V

    .line 65
    invoke-direct {p0}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->restartPreviewAndDecode()V

    .line 66
    return-void
.end method

.method private restartPreviewAndDecode()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    sget-object v1, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    if-ne v0, v1, :cond_0

    .line 130
    sget-object v0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 131
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

    invoke-virtual {v1}, Lcom/biznessapps/camera/scanning/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->decode:I

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/camera/scanning/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    .line 132
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$id;->auto_focus:I

    invoke-virtual {v0, p0, v1}, Lcom/biznessapps/camera/scanning/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 133
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    invoke-virtual {v0}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->drawViewfinder()V

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 73
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->auto_focus:I

    if-ne v4, v5, :cond_1

    .line 76
    iget-object v4, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    sget-object v5, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    if-ne v4, v5, :cond_0

    .line 77
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->auto_focus:I

    invoke-virtual {v4, p0, v5}, Lcom/biznessapps/camera/scanning/CameraManager;->requestAutoFocus(Landroid/os/Handler;I)V

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->restart_preview:I

    if-ne v4, v5, :cond_2

    .line 80
    sget-object v4, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got restart preview message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->restartPreviewAndDecode()V

    goto :goto_0

    .line 82
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->decode_succeeded:I

    if-ne v4, v5, :cond_4

    .line 83
    sget-object v4, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got decode succeeded message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v4, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->SUCCESS:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 85
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 86
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 88
    .local v0, "barcode":Landroid/graphics/Bitmap;
    :goto_1
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/google/zxing/Result;

    invoke-virtual {v5, v4, v0}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->handleDecode(Lcom/google/zxing/Result;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 86
    .end local v0    # "barcode":Landroid/graphics/Bitmap;
    :cond_3
    const-string v4, "barcode_bitmap"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    move-object v0, v4

    goto :goto_1

    .line 89
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->decode_failed:I

    if-ne v4, v5, :cond_5

    .line 91
    sget-object v4, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->PREVIEW:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    iput-object v4, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 92
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

    invoke-virtual {v5}, Lcom/biznessapps/camera/scanning/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$id;->decode:I

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/camera/scanning/CameraManager;->requestPreviewFrame(Landroid/os/Handler;I)V

    goto :goto_0

    .line 93
    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->return_scan_result:I

    if-ne v4, v5, :cond_6

    .line 94
    sget-object v4, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got return scan result message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    const/4 v6, -0x1

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/Intent;

    invoke-virtual {v5, v6, v4}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object v4, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    invoke-virtual {v4}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->finish()V

    goto :goto_0

    .line 97
    :cond_6
    iget v4, p1, Landroid/os/Message;->what:I

    sget v5, Lcom/biznessapps/layout/R$id;->launch_product_query:I

    if-ne v4, v5, :cond_0

    .line 98
    sget-object v4, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->TAG:Ljava/lang/String;

    const-string v5, "Got product query message"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .line 100
    .local v3, "url":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v4, 0x80000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 102
    iget-object v4, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    invoke-virtual {v4, v2}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public quitSynchronously()V
    .locals 3

    .prologue
    .line 110
    sget-object v1, Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;->DONE:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    iput-object v1, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->state:Lcom/biznessapps/camera/scanning/CaptureActivityHandler$State;

    .line 111
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/camera/scanning/CameraManager;->stopPreview()V

    .line 112
    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

    invoke-virtual {v1}, Lcom/biznessapps/camera/scanning/DecodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$id;->quit:I

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "quit":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->decodeThread:Lcom/biznessapps/camera/scanning/DecodeThread;

    invoke-virtual {v1}, Lcom/biznessapps/camera/scanning/DecodeThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    sget v1, Lcom/biznessapps/layout/R$id;->decode_succeeded:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->removeMessages(I)V

    .line 122
    sget v1, Lcom/biznessapps/layout/R$id;->decode_failed:I

    invoke-virtual {p0, v1}, Lcom/biznessapps/camera/scanning/CaptureActivityHandler;->removeMessages(I)V

    .line 123
    return-void

    .line 116
    :catch_0
    move-exception v1

    goto :goto_0
.end method
