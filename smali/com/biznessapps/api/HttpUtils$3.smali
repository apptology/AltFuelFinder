.class Lcom/biznessapps/api/HttpUtils$3;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/HttpUtils;->postFanCommentAsync(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/HttpUtils;

.field final synthetic val$appCode:Ljava/lang/String;

.field final synthetic val$callback:Lcom/biznessapps/api/AsyncCallback;

.field final synthetic val$comment:Ljava/lang/String;

.field final synthetic val$commentParentId:Ljava/lang/String;

.field final synthetic val$hasYoutubeFormat:Z

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$socialId:Ljava/lang/String;

.field final synthetic val$socialType:I

.field final synthetic val$tabId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils$3;->this$0:Lcom/biznessapps/api/HttpUtils;

    iput-object p2, p0, Lcom/biznessapps/api/HttpUtils$3;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    iput p3, p0, Lcom/biznessapps/api/HttpUtils$3;->val$socialType:I

    iput-object p4, p0, Lcom/biznessapps/api/HttpUtils$3;->val$socialId:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/api/HttpUtils$3;->val$hash:Ljava/lang/String;

    iput-object p6, p0, Lcom/biznessapps/api/HttpUtils$3;->val$tabId:Ljava/lang/String;

    iput-object p7, p0, Lcom/biznessapps/api/HttpUtils$3;->val$name:Ljava/lang/String;

    iput-object p8, p0, Lcom/biznessapps/api/HttpUtils$3;->val$comment:Ljava/lang/String;

    iput-object p9, p0, Lcom/biznessapps/api/HttpUtils$3;->val$appCode:Ljava/lang/String;

    iput-object p10, p0, Lcom/biznessapps/api/HttpUtils$3;->val$commentParentId:Ljava/lang/String;

    iput-boolean p11, p0, Lcom/biznessapps/api/HttpUtils$3;->val$hasYoutubeFormat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 186
    iget-object v0, p0, Lcom/biznessapps/api/HttpUtils$3;->this$0:Lcom/biznessapps/api/HttpUtils;

    iget-object v1, p0, Lcom/biznessapps/api/HttpUtils$3;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    iget v2, p0, Lcom/biznessapps/api/HttpUtils$3;->val$socialType:I

    iget-object v3, p0, Lcom/biznessapps/api/HttpUtils$3;->val$socialId:Ljava/lang/String;

    iget-object v4, p0, Lcom/biznessapps/api/HttpUtils$3;->val$hash:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/api/HttpUtils$3;->val$tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/api/HttpUtils$3;->val$name:Ljava/lang/String;

    iget-object v7, p0, Lcom/biznessapps/api/HttpUtils$3;->val$comment:Ljava/lang/String;

    iget-object v8, p0, Lcom/biznessapps/api/HttpUtils$3;->val$appCode:Ljava/lang/String;

    iget-object v9, p0, Lcom/biznessapps/api/HttpUtils$3;->val$commentParentId:Ljava/lang/String;

    iget-boolean v10, p0, Lcom/biznessapps/api/HttpUtils$3;->val$hasYoutubeFormat:Z

    # invokes: Lcom/biznessapps/api/HttpUtils;->postFanComment(Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static/range {v0 .. v10}, Lcom/biznessapps/api/HttpUtils;->access$200(Lcom/biznessapps/api/HttpUtils;Lcom/biznessapps/api/AsyncCallback;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 187
    return-void
.end method
