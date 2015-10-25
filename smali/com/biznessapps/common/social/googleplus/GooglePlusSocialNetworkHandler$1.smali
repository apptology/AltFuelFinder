.class Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "GooglePlusSocialNetworkHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

.field final synthetic val$listener:Lcom/biznessapps/common/social/OnSocialPublishListener;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    iput-object p3, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->val$text:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->val$listener:Lcom/biznessapps/common/social/OnSocialPublishListener;

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
    .line 298
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mDefaultSocialLoginListener:Lcom/biznessapps/common/social/OnSocialLoginListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->access$000(Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;)Lcom/biznessapps/common/social/OnSocialLoginListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/biznessapps/common/social/OnSocialLoginListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 3
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    # getter for: Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->mPlusClient:Lcom/google/android/gms/plus/PlusClient;
    invoke-static {v0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->access$100(Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;)Lcom/google/android/gms/plus/PlusClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/PlusClient;->isConnected()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 305
    iget-object v0, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->this$0:Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    iget-object v1, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler$1;->val$listener:Lcom/biznessapps/common/social/OnSocialPublishListener;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    .line 306
    return-void
.end method
