.class Lcom/biznessapps/golfcourse/EditPlayerFragment$1;
.super Ljava/lang/Object;
.source "EditPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/EditPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/EditPlayerFragment;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 357
    if-eqz p2, :cond_1

    .line 358
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/golfcourse/EditPlayerListItem;

    .line 360
    .local v0, "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    iget-boolean v1, v0, Lcom/biznessapps/golfcourse/EditPlayerListItem;->isPickable:Z

    if-eqz v1, :cond_2

    .line 362
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/biznessapps/utils/ViewUtils;->showKeyboard(Landroid/app/Activity;Landroid/view/View;Z)V

    .line 364
    iget-object v1, v0, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    invoke-virtual {v1}, Lcom/biznessapps/common/components/WheelDelegate;->show()V

    .line 366
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v1

    iget-object v2, v0, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    if-eq v1, v2, :cond_0

    .line 367
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/components/WheelDelegate;->hide()V

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    iget-object v2, v0, Lcom/biznessapps/golfcourse/EditPlayerListItem;->picker:Lcom/biznessapps/common/components/WheelDelegate;

    # setter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$002(Lcom/biznessapps/golfcourse/EditPlayerFragment;Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/common/components/WheelDelegate;

    .line 377
    .end local v0    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    :cond_1
    :goto_0
    return-void

    .line 371
    .restart local v0    # "item":Lcom/biznessapps/golfcourse/EditPlayerListItem;
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 372
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/EditPlayerFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/common/components/WheelDelegate;->hide()V

    .line 373
    iget-object v1, p0, Lcom/biznessapps/golfcourse/EditPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/EditPlayerFragment;

    const/4 v2, 0x0

    # setter for: Lcom/biznessapps/golfcourse/EditPlayerFragment;->mLatestPicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v1, v2}, Lcom/biznessapps/golfcourse/EditPlayerFragment;->access$002(Lcom/biznessapps/golfcourse/EditPlayerFragment;Lcom/biznessapps/common/components/WheelDelegate;)Lcom/biznessapps/common/components/WheelDelegate;

    goto :goto_0
.end method
