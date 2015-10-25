.class Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "TwitterSocialNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->publishImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iput-object p3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$800(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 6
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 232
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mIsLoggedIn:Z
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Z

    move-result v2

    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 236
    :try_start_0
    const-string v2, "biz"

    const-string v3, ".twitter"

    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 237
    .local v1, "tempFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->deleteOnExit()V

    .line 238
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->val$bitmap:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 239
    new-instance v2, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v4, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v4}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$600(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;-><init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;Lcom/biznessapps/common/social/OnSocialPublishListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->val$description:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "tempFile":Ljava/io/File;
    :goto_0
    return-void

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/io/IOException;
    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$4;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->mDefaultSocialPublishListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v2}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;->access$700(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, p1, v3, v4}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
