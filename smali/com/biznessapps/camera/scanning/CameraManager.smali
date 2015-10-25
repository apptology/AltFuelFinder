.class public final Lcom/biznessapps/camera/scanning/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"


# static fields
.field private static final MIN_FRAME_HEIGHT:I = 0xf0

.field private static final MIN_FRAME_WIDTH:I = 0xf0

.field private static final TAG:Ljava/lang/String;

.field private static cameraManager:Lcom/biznessapps/camera/scanning/CameraManager;


# instance fields
.field private final autoFocusCallback:Lcom/biznessapps/camera/scanning/AutoFocusCallback;

.field private camera:Landroid/hardware/Camera;

.field private final configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

.field private framingRect:Landroid/graphics/Rect;

.field private framingRectInPreview:Landroid/graphics/Rect;

.field private initialized:Z

.field private final previewCallback:Lcom/biznessapps/camera/scanning/PreviewCallback;

.field private previewing:Z

.field private final useOneShotPreviewCallback:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/biznessapps/camera/scanning/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/camera/scanning/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    invoke-direct {v0, p1}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->useOneShotPreviewCallback:Z

    .line 73
    new-instance v0, Lcom/biznessapps/camera/scanning/PreviewCallback;

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    iget-boolean v2, p0, Lcom/biznessapps/camera/scanning/CameraManager;->useOneShotPreviewCallback:Z

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/camera/scanning/PreviewCallback;-><init>(Lcom/biznessapps/camera/scanning/CameraConfigurationManager;Z)V

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewCallback:Lcom/biznessapps/camera/scanning/PreviewCallback;

    .line 74
    new-instance v0, Lcom/biznessapps/camera/scanning/AutoFocusCallback;

    invoke-direct {v0}, Lcom/biznessapps/camera/scanning/AutoFocusCallback;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->autoFocusCallback:Lcom/biznessapps/camera/scanning/AutoFocusCallback;

    .line 75
    return-void
.end method

.method public static get()Lcom/biznessapps/camera/scanning/CameraManager;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/biznessapps/camera/scanning/CameraManager;->cameraManager:Lcom/biznessapps/camera/scanning/CameraManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/biznessapps/camera/scanning/CameraManager;->cameraManager:Lcom/biznessapps/camera/scanning/CameraManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/biznessapps/camera/scanning/CameraManager;

    invoke-direct {v0, p0}, Lcom/biznessapps/camera/scanning/CameraManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/biznessapps/camera/scanning/CameraManager;->cameraManager:Lcom/biznessapps/camera/scanning/CameraManager;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method public buildLuminanceSource([BII)Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;
    .locals 11
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/biznessapps/camera/scanning/CameraManager;->getFramingRectInPreview()Landroid/graphics/Rect;

    move-result-object v10

    .line 226
    .local v10, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->getPreviewFormat()I

    move-result v8

    .line 227
    .local v8, "previewFormat":I
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    invoke-virtual {v0}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->getPreviewFormatString()Ljava/lang/String;

    move-result-object v9

    .line 228
    .local v9, "previewFormatString":Ljava/lang/String;
    packed-switch v8, :pswitch_data_0

    .line 240
    const-string v0, "yuv420p"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    new-instance v0, Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    :goto_0
    return-object v0

    .line 235
    :pswitch_0
    new-instance v0, Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;

    iget v4, v10, Landroid/graphics/Rect;->left:I

    iget v5, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/biznessapps/camera/scanning/PlanarYUVLuminanceSource;-><init>([BIIIIII)V

    goto :goto_0

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported picture format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public closeDriver()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcom/biznessapps/camera/scanning/FlashlightManager;->disableFlashlight()V

    .line 105
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    .line 108
    :cond_0
    return-void
.end method

.method public getFramingRect()Landroid/graphics/Rect;
    .locals 8

    .prologue
    const/16 v6, 0xf0

    .line 176
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    invoke-virtual {v5}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 177
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRect:Landroid/graphics/Rect;

    if-nez v5, :cond_3

    .line 178
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v5, :cond_0

    .line 179
    const/4 v5, 0x0

    .line 194
    :goto_0
    return-object v5

    .line 181
    :cond_0
    iget v5, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v4, v5, 0x4

    .line 182
    .local v4, "width":I
    if-ge v4, v6, :cond_1

    .line 183
    const/16 v4, 0xf0

    .line 185
    :cond_1
    iget v5, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v5, v5, 0x3

    div-int/lit8 v0, v5, 0x4

    .line 186
    .local v0, "height":I
    if-ge v0, v6, :cond_2

    .line 187
    const/16 v0, 0xf0

    .line 189
    :cond_2
    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v4

    div-int/lit8 v1, v5, 0x2

    .line 190
    .local v1, "leftOffset":I
    iget v5, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v0

    div-int/lit8 v3, v5, 0x2

    .line 191
    .local v3, "topOffset":I
    new-instance v5, Landroid/graphics/Rect;

    add-int v6, v1, v4

    add-int v7, v3, v0

    invoke-direct {v5, v1, v3, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v5, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRect:Landroid/graphics/Rect;

    .line 192
    sget-object v5, Lcom/biznessapps/camera/scanning/CameraManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calculated framing rect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v0    # "height":I
    .end local v1    # "leftOffset":I
    .end local v3    # "topOffset":I
    .end local v4    # "width":I
    :cond_3
    iget-object v5, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRect:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public getFramingRectInPreview()Landroid/graphics/Rect;
    .locals 5

    .prologue
    .line 202
    iget-object v3, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    if-nez v3, :cond_0

    .line 203
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/biznessapps/camera/scanning/CameraManager;->getFramingRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 204
    .local v1, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->getCameraResolution()Landroid/graphics/Point;

    move-result-object v0

    .line 205
    .local v0, "cameraResolution":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    invoke-virtual {v3}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->getScreenResolution()Landroid/graphics/Point;

    move-result-object v2

    .line 206
    .local v2, "screenResolution":Landroid/graphics/Point;
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->left:I

    .line 207
    iget v3, v1, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->x:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->right:I

    .line 208
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 209
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Point;->y:I

    div-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 210
    iput-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    .line 212
    .end local v0    # "cameraResolution":Landroid/graphics/Point;
    .end local v1    # "rect":Landroid/graphics/Rect;
    .end local v2    # "screenResolution":Landroid/graphics/Point;
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/camera/scanning/CameraManager;->framingRectInPreview:Landroid/graphics/Rect;

    return-object v3
.end method

.method public openDriver(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_2

    .line 85
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    .line 86
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 91
    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->initialized:Z

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->initialized:Z

    .line 93
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->initFromCameraParameters(Landroid/hardware/Camera;)V

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->configManager:Lcom/biznessapps/camera/scanning/CameraConfigurationManager;

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/biznessapps/camera/scanning/CameraConfigurationManager;->setDesiredCameraParameters(Landroid/hardware/Camera;)V

    .line 97
    :cond_2
    return-void
.end method

.method public requestAutoFocus(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->autoFocusCallback:Lcom/biznessapps/camera/scanning/AutoFocusCallback;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/camera/scanning/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 164
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->autoFocusCallback:Lcom/biznessapps/camera/scanning/AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 166
    :cond_0
    return-void
.end method

.method public requestPreviewFrame(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "message"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewCallback:Lcom/biznessapps/camera/scanning/PreviewCallback;

    invoke-virtual {v0, p1, p2}, Lcom/biznessapps/camera/scanning/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 146
    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->useOneShotPreviewCallback:Z

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewCallback:Lcom/biznessapps/camera/scanning/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewCallback:Lcom/biznessapps/camera/scanning/PreviewCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    goto :goto_0
.end method

.method public startPreview()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewing:Z

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewing:Z

    .line 118
    :cond_0
    return-void
.end method

.method public stopPreview()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewing:Z

    if-eqz v0, :cond_1

    .line 125
    iget-boolean v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->useOneShotPreviewCallback:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 129
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewCallback:Lcom/biznessapps/camera/scanning/PreviewCallback;

    invoke-virtual {v0, v2, v1}, Lcom/biznessapps/camera/scanning/PreviewCallback;->setHandler(Landroid/os/Handler;I)V

    .line 130
    iget-object v0, p0, Lcom/biznessapps/camera/scanning/CameraManager;->autoFocusCallback:Lcom/biznessapps/camera/scanning/AutoFocusCallback;

    invoke-virtual {v0, v2, v1}, Lcom/biznessapps/camera/scanning/AutoFocusCallback;->setHandler(Landroid/os/Handler;I)V

    .line 131
    iput-boolean v1, p0, Lcom/biznessapps/camera/scanning/CameraManager;->previewing:Z

    .line 133
    :cond_1
    return-void
.end method
