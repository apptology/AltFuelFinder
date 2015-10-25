.class Lcom/biznessapps/common/social/ui/ShareComponent$14$1;
.super Ljava/lang/Object;
.source "ShareComponent.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/ShareComponent$PostCommentListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/social/ui/ShareComponent$14;->onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/social/ui/ShareComponent$14;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/social/ui/ShareComponent$14;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/biznessapps/common/social/ui/ShareComponent$14$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommentEntered(Ljava/lang/String;)V
    .locals 2
    .param p1, "comment"    # Ljava/lang/String;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/biznessapps/common/social/ui/ShareComponent$14$1;->this$0:Lcom/biznessapps/common/social/ui/ShareComponent$14;

    iget-object v0, v0, Lcom/biznessapps/common/social/ui/ShareComponent$14;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/common/social/ui/ShareComponent$14$1$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/common/social/ui/ShareComponent$14$1$1;-><init>(Lcom/biznessapps/common/social/ui/ShareComponent$14$1;)V

    invoke-virtual {v0, p1, v1}, Lcom/biznessapps/common/social/googleplus/GooglePlusSocialNetworkHandler;->publishText(Ljava/lang/String;Lcom/biznessapps/common/social/OnSocialPublishListener;)Z

    .line 554
    return-void
.end method
