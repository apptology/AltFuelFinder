.class Lcom/biznessapps/fan_wall/FanWallFragment$6;
.super Lcom/biznessapps/api/AsyncCallback;
.source "FanWallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/FanWallFragment;->getResultCallback()Lcom/biznessapps/api/AsyncCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/api/AsyncCallback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/FanWallFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/FanWallFragment;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-direct {p0}, Lcom/biznessapps/api/AsyncCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->error_occured:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/fan_wall/FanWallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 317
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 304
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/biznessapps/fan_wall/FanWallFragment$6;->onResult(Ljava/lang/String;)V

    return-void
.end method

.method public onResult(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 307
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    invoke-virtual {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->successfully_posted:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/fan_wall/FanWallFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # setter for: Lcom/biznessapps/fan_wall/FanWallFragment;->needToReload:Z
    invoke-static {v0, v3}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$402(Lcom/biznessapps/fan_wall/FanWallFragment;Z)Z

    .line 309
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # setter for: Lcom/biznessapps/fan_wall/FanWallFragment;->wasAnyCommentAdded:Z
    invoke-static {v0, v3}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$002(Lcom/biznessapps/fan_wall/FanWallFragment;Z)Z

    .line 310
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # getter for: Lcom/biznessapps/fan_wall/FanWallFragment;->commentTextView:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$200(Lcom/biznessapps/fan_wall/FanWallFragment;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p0, Lcom/biznessapps/fan_wall/FanWallFragment$6;->this$0:Lcom/biznessapps/fan_wall/FanWallFragment;

    # invokes: Lcom/biznessapps/fan_wall/FanWallFragment;->loadData()V
    invoke-static {v0}, Lcom/biznessapps/fan_wall/FanWallFragment;->access$500(Lcom/biznessapps/fan_wall/FanWallFragment;)V

    .line 312
    return-void
.end method
