.class Lcom/biznessapps/fan_wall/NewFanWallActivity$6;
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
    .line 282
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$6;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$6;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    const/4 v1, 0x3

    # setter for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->usedTabType:I
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$502(Lcom/biznessapps/fan_wall/NewFanWallActivity;I)I

    .line 286
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$6;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControls()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$600(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    .line 287
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$6;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->openPhotosContainer()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$900(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    .line 288
    return-void
.end method
