.class final Lcom/biznessapps/camera/scanning/DecodeHandler;
.super Landroid/os/Handler;
.source "DecodeHandler.java"


# instance fields
.field private final activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

.field private final multiFormatReader:Lcom/google/zxing/MultiFormatReader;


# direct methods
.method constructor <init>(Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;Ljava/util/Hashtable;)V
    .locals 1
    .param p1, "activity"    # Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;",
            "Ljava/util/Hashtable",
            "<",
            "Lcom/google/zxing/DecodeHintType;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "hints":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/google/zxing/DecodeHintType;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    new-instance v0, Lcom/google/zxing/MultiFormatReader;

    invoke-direct {v0}, Lcom/google/zxing/MultiFormatReader;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    .line 41
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v0, p2}, Lcom/google/zxing/MultiFormatReader;->setHints(Ljava/util/Map;)V

    .line 42
    iput-object p1, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    .line 43
    return-void
.end method

.method private decode([BII)V
    .locals 7
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 66
    const/4 v3, 0x0

    .line 67
    .local v3, "rawResult":Lcom/google/zxing/Result;
    invoke-static {}, Lcom/biznessapps/camera/scanning/CameraManager;->get()Lcom/biznessapps/camera/scanning/CameraManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2, p3}, Lcom/biznessapps/camera/scanning/CameraManager;->buildLuminanceSource([BII)Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;

    move-result-object v4

    .line 69
    .local v4, "source":Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;
    new-instance v0, Lcom/google/zxing/BinaryBitmap;

    new-instance v5, Lcom/google/zxing/common/HybridBinarizer;

    invoke-direct {v5, v4}, Lcom/google/zxing/common/HybridBinarizer;-><init>(Lcom/google/zxing/LuminanceSource;)V

    invoke-direct {v0, v5}, Lcom/google/zxing/BinaryBitmap;-><init>(Lcom/google/zxing/Binarizer;)V

    .line 71
    .local v0, "bitmap":Lcom/google/zxing/BinaryBitmap;
    :try_start_0
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v5, v0}, Lcom/google/zxing/MultiFormatReader;->decodeWithState(Lcom/google/zxing/BinaryBitmap;)Lcom/google/zxing/Result;
    :try_end_0
    .catch Lcom/google/zxing/ReaderException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 75
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v5}, Lcom/google/zxing/MultiFormatReader;->reset()V

    .line 78
    :goto_0
    if-eqz v3, :cond_0

    .line 79
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    invoke-virtual {v5}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$id;->decode_succeeded:I

    invoke-static {v5, v6, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 80
    .local v2, "message":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 81
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v5, "barcode_bitmap"

    invoke-virtual {v4}, Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;->renderCroppedGreyscaleBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 88
    .end local v1    # "bundle":Landroid/os/Bundle;
    :goto_1
    return-void

    .line 72
    .end local v2    # "message":Landroid/os/Message;
    :catch_0
    move-exception v5

    .line 75
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v5}, Lcom/google/zxing/MultiFormatReader;->reset()V

    goto :goto_0

    :catchall_0
    move-exception v5

    iget-object v6, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->multiFormatReader:Lcom/google/zxing/MultiFormatReader;

    invoke-virtual {v6}, Lcom/google/zxing/MultiFormatReader;->reset()V

    throw v5

    .line 85
    :cond_0
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/DecodeHandler;->activity:Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;

    invoke-virtual {v5}, Lcom/biznessapps/camera/scanning/AbstractCaptureActivity;->getHandler()Landroid/os/Handler;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$id;->decode_failed:I

    invoke-static {v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 86
    .restart local v2    # "message":Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 50
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/biznessapps/layout/R$id;->decode:I

    if-ne v0, v1, :cond_1

    .line 51
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/camera/scanning/DecodeHandler;->decode([BII)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sget v1, Lcom/biznessapps/layout/R$id;->quit:I

    if-ne v0, v1, :cond_0

    .line 53
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    goto :goto_0
.end method
