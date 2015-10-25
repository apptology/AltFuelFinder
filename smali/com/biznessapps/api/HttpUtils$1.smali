.class Lcom/biznessapps/api/HttpUtils$1;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/HttpUtils;->sendPhotoAsync([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/HttpUtils;

.field final synthetic val$appCode:Ljava/lang/String;

.field final synthetic val$callback:Lcom/biznessapps/api/AsyncCallback;

.field final synthetic val$caption:Ljava/lang/String;

.field final synthetic val$data:[B

.field final synthetic val$eventId:Ljava/lang/String;

.field final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/HttpUtils;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils$1;->this$0:Lcom/biznessapps/api/HttpUtils;

    iput-object p2, p0, Lcom/biznessapps/api/HttpUtils$1;->val$data:[B

    iput-object p3, p0, Lcom/biznessapps/api/HttpUtils$1;->val$appCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/api/HttpUtils$1;->val$tabId:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/api/HttpUtils$1;->val$eventId:Ljava/lang/String;

    iput-object p6, p0, Lcom/biznessapps/api/HttpUtils$1;->val$caption:Ljava/lang/String;

    iput-object p7, p0, Lcom/biznessapps/api/HttpUtils$1;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 159
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$1;->this$0:Lcom/biznessapps/api/HttpUtils;

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils$1;->val$data:[B

    iget-object v2, p0, Lcom/biznessapps/api/HttpUtils$1;->val$appCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/biznessapps/api/HttpUtils$1;->val$tabId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/api/HttpUtils$1;->val$eventId:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/api/HttpUtils$1;->val$caption:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/api/HttpUtils$1;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    # invokes: Lcom/biznessapps/api/HttpUtils;->sendPhoto([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/biznessapps/api/HttpUtils;->access$000(Lcom/biznessapps/api/HttpUtils;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 160
    return-void
.end method
