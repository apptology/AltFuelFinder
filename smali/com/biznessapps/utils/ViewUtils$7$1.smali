.class Lcom/biznessapps/utils/ViewUtils$7$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ViewUtils$7;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ViewUtils$7;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$7$1;->this$0:Lcom/biznessapps/utils/ViewUtils$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 361
    const-string v0, "cancel"

    .line 362
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 363
    .local v1, "appId":Ljava/lang/String;
    const-string v4, "collect_email.php?app_id=%s&action=%s&email=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v0, v5, v8

    const/4 v6, 0x2

    const-string v7, ""

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "data":Ljava/lang/String;
    return-void
.end method
