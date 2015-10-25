.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnTableResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment;->captureScoreBoardScreen(Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

.field final synthetic val$dialog:Landroid/app/ProgressDialog;

.field final synthetic val$listener:Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;

.field final synthetic val$tableScrollX:I

.field final synthetic val$tableScrollY:I


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;IILandroid/app/ProgressDialog;Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    iput p2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$tableScrollX:I

    iput p3, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$tableScrollY:I

    iput-object p4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    iput-object p5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$listener:Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResized(II)V
    .locals 9
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v6, 0x0

    .line 235
    const/4 v3, 0x0

    .line 238
    .local v3, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    # setter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mCapturedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$002(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 239
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mCapturedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$000(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    .local v0, "c":Landroid/graphics/Canvas;
    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 242
    invoke-virtual {v0, v6, v6, p1, p2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 243
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/SmartTableView;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v6}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/SmartTableView;->getTop()I

    move-result v6

    iget-object v7, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v7}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/golfcourse/SmartTableView;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v8}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/golfcourse/SmartTableView;->getBottom()I

    move-result v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/biznessapps/golfcourse/SmartTableView;->layout(IIII)V

    .line 244
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/biznessapps/golfcourse/SmartTableView;->draw(Landroid/graphics/Canvas;)V

    .line 247
    :try_start_0
    const-string v4, "biz-"

    const-string v5, ".png"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 248
    .local v1, "capturedFile":Ljava/io/File;
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mCapturedBitmap:Landroid/graphics/Bitmap;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$000(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Landroid/graphics/Bitmap;

    move-result-object v4

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5, v6, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 249
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 254
    .end local v1    # "capturedFile":Ljava/io/File;
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;)V

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/SmartTableView;->restoreViewToScreen(Lcom/biznessapps/golfcourse/OnTableResizeListener;)V

    .line 263
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$listener:Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;

    invoke-interface {v4, v3}, Lcom/biznessapps/golfcourse/OnScoreBoardCaptureListener;->onCaptured(Landroid/net/Uri;)V

    .line 264
    return-void

    .line 250
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
