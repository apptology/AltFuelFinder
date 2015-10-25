.class Lcom/biznessapps/fragments/single/PreviewAppFragment$2;
.super Ljava/lang/Object;
.source "PreviewAppFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/single/PreviewAppFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/PreviewAppFragment;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 68
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # getter for: Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$200(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    # getter for: Lcom/biznessapps/fragments/single/PreviewAppFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$300(Lcom/biznessapps/fragments/single/PreviewAppFragment;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    sub-int v1, v2, v3

    .line 69
    .local v1, "heightDiff":I
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    invoke-virtual {v2}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    .line 71
    .local v0, "contentViewTop":I
    if-gt v1, v0, :cond_0

    .line 72
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    const/4 v3, 0x0

    # invokes: Lcom/biznessapps/fragments/single/PreviewAppFragment;->setRootBg(Z)V
    invoke-static {v2, v3}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$400(Lcom/biznessapps/fragments/single/PreviewAppFragment;Z)V

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/fragments/single/PreviewAppFragment$2;->this$0:Lcom/biznessapps/fragments/single/PreviewAppFragment;

    const/4 v3, 0x1

    # invokes: Lcom/biznessapps/fragments/single/PreviewAppFragment;->setRootBg(Z)V
    invoke-static {v2, v3}, Lcom/biznessapps/fragments/single/PreviewAppFragment;->access$400(Lcom/biznessapps/fragments/single/PreviewAppFragment;Z)V

    goto :goto_0
.end method
