.class Lcom/biznessapps/fan_wall/NewFanWallActivity$11;
.super Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;
.source "NewFanWallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->loadContent()V
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
    .line 382
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$11;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$11;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$11;->getActivity()Landroid/app/Activity;

    move-result-object v1

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->updateControlsWithData(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$1300(Lcom/biznessapps/fan_wall/NewFanWallActivity;Landroid/app/Activity;)V

    .line 386
    return-void
.end method
