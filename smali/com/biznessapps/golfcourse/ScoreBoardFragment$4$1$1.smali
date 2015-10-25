.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Lcom/biznessapps/common/social/ui/OnSharingCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->onCaptured(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;)V
    .locals 0

    .prologue
    .line 356
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharingCanceled()V
    .locals 3

    .prologue
    .line 369
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->sharing_canceled:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public onSharingCompleted(I)V
    .locals 3
    .param p1, "shareType"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->sharing_completed:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public onSharingError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "shareType"    # I
    .param p2, "errorType"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1$1;->this$2:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;

    iget-object v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$4;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v2, Lcom/biznessapps/layout/R$string;->something_went_wrong:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    return-void
.end method
