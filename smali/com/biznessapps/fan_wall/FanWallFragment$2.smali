.class Lcom/biznessapps/fan_wall/FanWallFragment$2;
.super Lcom/biznessapps/common/social/OnCommonSocialLoginListener;
.source "FanWallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanWallFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanWallFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanWallFragment;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$2;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-direct {p0, p2}, Lcom/biznessapps/common/social/OnCommonSocialLoginListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onLoginCompleted(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    .locals 1
    .param p1, "socialHandler"    # Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$2;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # invokes: Lcom/biznessapps/fan_wall/FanWallFragment;->addComment(Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V
    invoke-static {v0, p1}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$100(Lcom/biznessapps/fan_wall/FanWallFragment;Lcom/biznessapps/common/social/CommonSocialNetworkHandler;)V

    .line 146
    return-void
.end method
