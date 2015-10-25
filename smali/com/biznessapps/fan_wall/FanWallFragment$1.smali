.class Lcom/biznessapps/fan_wall/FanWallFragment$1;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanWallFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanWallFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanWallFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$1;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$1;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanWallFragment;->wasAnyCommentAdded:Z
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$000(Lcom/biznessapps/fan_wall/FanWallFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$1;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->setResult(I)V

    .line 96
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$1;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$1;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanWallFragment;->wasAnyCommentAdded:Z
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$000(Lcom/biznessapps/fan_wall/FanWallFragment;)Z

    move-result v0

    return v0
.end method
