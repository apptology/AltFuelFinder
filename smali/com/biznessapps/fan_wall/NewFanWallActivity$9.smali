.class Lcom/biznessapps/fan_wall/NewFanWallActivity$9;
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
    .line 367
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$9;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$9;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->handleInBackground()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$1100(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V

    .line 371
    return-void
.end method
