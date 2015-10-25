.class Lcom/biznessapps/fan_wall/NewFanWallActivity$1;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "NewFanWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->initControls()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$1;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 2
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$1;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {p1}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v1

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->addComment(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$000(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)V

    .line 233
    return-void
.end method
