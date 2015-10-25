.class Lcom/biznessapps/fan_wall/NewFanWallActivity$3;
.super Ljava/lang/Object;
.source "NewFanWallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->initLoadMoreButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    .line 254
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # getter for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z
    invoke-static {v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$100(Lcom/biznessapps/fan_wall/NewFanWallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # += operator for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->nearByOffset:I
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$212(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)I

    .line 259
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadContent()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$400(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    .line 260
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$3;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # += operator for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->recentOffset:I
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$312(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)I

    goto :goto_0
.end method
