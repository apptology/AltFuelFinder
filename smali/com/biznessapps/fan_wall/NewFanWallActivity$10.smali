.class Lcom/biznessapps/fan_wall/NewFanWallActivity$10;
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

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    iput-object p2, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Lcom/biznessapps/api/LoadDataTaskExternal$LoadDataRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 377
    iget-object v1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {p0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;->getDataToParse()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;->val$url:Ljava/lang/String;

    # invokes: Lcom/biznessapps/fan_wall/NewFanWallActivity;->tryParseData(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2, v3}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$1200(Lcom/biznessapps/fan_wall/NewFanWallActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 378
    .local v0, "isCorrectData":Z
    invoke-virtual {p0, v0}, Lcom/biznessapps/fan_wall/NewFanWallActivity$10;->setCorrectData(Z)V

    .line 379
    return-void
.end method
