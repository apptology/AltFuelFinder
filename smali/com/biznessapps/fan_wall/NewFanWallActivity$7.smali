.class Lcom/biznessapps/fan_wall/NewFanWallActivity$7;
.super Ljava/lang/Object;
.source "NewFanWallActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->initListeners()V
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
    .line 290
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->checkGpsEnabling(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    const/4 v1, 0x1

    # setter for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$102(Lcom/biznessapps/fan_wall/NewFanWallActivity;Z)Z

    .line 295
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # getter for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->isNearByUsed:Z
    invoke-static {v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$100(Lcom/biznessapps/fan_wall/NewFanWallActivity;)Z

    move-result v1

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateButtonsState(Z)V
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$1000(Lcom/biznessapps/fan_wall/NewFanWallActivity;Z)V

    .line 296
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$7;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadContent()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$400(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    .line 298
    :cond_0
    return-void
.end method
