.class Lcom/biznessapps/api/HttpUtils$2;
.super Ljava/lang/Object;
.source "HttpUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/HttpUtils;->postCommentAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
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

.field final synthetic val$hash:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$imageData:[B

.field final synthetic val$latitude:D

.field final synthetic val$longitude:D

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$parentId:Ljava/lang/String;

.field final synthetic val$tabId:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;

.field final synthetic val$userType:I


# direct methods
.method constructor <init>(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
    .locals 1

    .prologue
    .line 169
    iput-object p1, p0, Lcom/biznessapps/api/HttpUtils$2;->this$0:Lcom/biznessapps/api/HttpUtils;

    iput-object p2, p0, Lcom/biznessapps/api/HttpUtils$2;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lcom/biznessapps/api/HttpUtils$2;->val$appCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/biznessapps/api/HttpUtils$2;->val$tabId:Ljava/lang/String;

    iput-object p5, p0, Lcom/biznessapps/api/HttpUtils$2;->val$id:Ljava/lang/String;

    iput p6, p0, Lcom/biznessapps/api/HttpUtils$2;->val$userType:I

    iput-object p7, p0, Lcom/biznessapps/api/HttpUtils$2;->val$userId:Ljava/lang/String;

    iput-object p8, p0, Lcom/biznessapps/api/HttpUtils$2;->val$name:Ljava/lang/String;

    iput-object p9, p0, Lcom/biznessapps/api/HttpUtils$2;->val$comment:Ljava/lang/String;

    iput-object p10, p0, Lcom/biznessapps/api/HttpUtils$2;->val$hash:Ljava/lang/String;

    iput-object p11, p0, Lcom/biznessapps/api/HttpUtils$2;->val$parentId:Ljava/lang/String;

    iput-wide p12, p0, Lcom/biznessapps/api/HttpUtils$2;->val$longitude:D

    iput-wide p14, p0, Lcom/biznessapps/api/HttpUtils$2;->val$latitude:D

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/biznessapps/api/HttpUtils$2;->val$imageData:[B

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/biznessapps/api/HttpUtils$2;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/api/HttpUtils$2;->this$0:Lcom/biznessapps/api/HttpUtils;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/biznessapps/api/HttpUtils$2;->val$url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/biznessapps/api/HttpUtils$2;->val$appCode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/biznessapps/api/HttpUtils$2;->val$tabId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/biznessapps/api/HttpUtils$2;->val$id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/biznessapps/api/HttpUtils$2;->val$userType:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/biznessapps/api/HttpUtils$2;->val$userId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/biznessapps/api/HttpUtils$2;->val$name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/biznessapps/api/HttpUtils$2;->val$comment:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/biznessapps/api/HttpUtils$2;->val$hash:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/biznessapps/api/HttpUtils$2;->val$parentId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/biznessapps/api/HttpUtils$2;->val$longitude:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/biznessapps/api/HttpUtils$2;->val$latitude:D

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/api/HttpUtils$2;->val$imageData:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/api/HttpUtils$2;->val$callback:Lcom/biznessapps/api/AsyncCallback;

    move-object/from16 v17, v0

    # invokes: Lcom/biznessapps/api/HttpUtils;->postComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V
    invoke-static/range {v1 .. v17}, Lcom/biznessapps/api/HttpUtils;->access$100(Lcom/biznessapps/api/HttpUtils;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD[BLcom/biznessapps/api/AsyncCallback;)V

    .line 174
    return-void
.end method
