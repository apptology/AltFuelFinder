.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnTableResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->onResized(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResized(II)V
    .locals 3
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    .line 257
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScoreBoardView:Lcom/biznessapps/golfcourse/SmartTableView;
    invoke-static {v0}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/SmartTableView;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;

    iget v1, v1, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$tableScrollX:I

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;

    iget v2, v2, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$tableScrollY:I

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/golfcourse/SmartTableView;->setScrollPosition(II)V

    .line 259
    iget-object v0, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1$1;->this$1:Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;

    iget-object v0, v0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$1;->val$dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 260
    return-void
.end method
