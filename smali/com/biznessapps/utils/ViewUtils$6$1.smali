.class Lcom/biznessapps/utils/ViewUtils$6$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/utils/ViewUtils$6;

.field final synthetic val$email:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/utils/ViewUtils$6;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 322
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$6$1;->this$0:Lcom/biznessapps/utils/ViewUtils$6;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$6$1;->val$email:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 326
    const-string v0, "submit"

    .line 327
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/AppSettings;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "appId":Ljava/lang/String;
    const-string v4, "collect_email.php?app_id=%s&action=%s&email=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    aput-object v0, v5, v8

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/biznessapps/utils/ViewUtils$6$1;->val$email:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 330
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3, v8}, Lcom/biznessapps/api/AppHttpUtils;->executeGetSyncRequest(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "data":Ljava/lang/String;
    return-void
.end method
