.class Lcom/biznessapps/golfcourse/SmartTableView$2;
.super Ljava/lang/Object;
.source "SmartTableView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/SmartTableView;->restoreViewToScreen(Lcom/biznessapps/golfcourse/OnTableResizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/SmartTableView;

.field final synthetic val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/SmartTableView;Lcom/biznessapps/golfcourse/OnTableResizeListener;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableView$2;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    iput-object p2, p0, Lcom/biznessapps/golfcourse/SmartTableView$2;->val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$2;->val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$2;->val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SmartTableView$2;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # getter for: Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/SmartTableView;->access$000(Lcom/biznessapps/golfcourse/SmartTableView;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SmartTableView$2;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    # getter for: Lcom/biznessapps/golfcourse/SmartTableView;->mVGRoot:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/SmartTableView;->access$000(Lcom/biznessapps/golfcourse/SmartTableView;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/biznessapps/golfcourse/OnTableResizeListener;->onResized(II)V

    .line 119
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 112
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 108
    return-void
.end method
