.class Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;
.super Ljava/lang/Object;
.source "TwitterSocialNetworkHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;Ljava/lang/Exception;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;

    iput-object p2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;

    # getter for: Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->mListener:Lcom/biznessapps/common/social/OnSocialPublishListener;
    invoke-static {v0}, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->access$900(Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;)Lcom/biznessapps/common/social/OnSocialPublishListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;->this$1:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;

    iget-object v1, v1, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage;->this$0:Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler;

    iget-object v2, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/common/social/twitter/TwitterSocialNetworkHandler$PostImage$1;->val$e:Ljava/lang/Exception;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/biznessapps/common/social/OnSocialPublishListener;->onError(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    return-void
.end method
