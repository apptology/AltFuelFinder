.class Lcom/biznessapps/golfcourse/SmartTableView$1;
.super Ljava/lang/Object;
.source "SmartTableView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/golfcourse/SmartTableView;->fitViewToContents(Lcom/biznessapps/golfcourse/OnTableResizeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/SmartTableView;

.field final synthetic val$contentHeight:I

.field final synthetic val$contentWidth:I

.field final synthetic val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/SmartTableView;Lcom/biznessapps/golfcourse/OnTableResizeListener;II)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->this$0:Lcom/biznessapps/golfcourse/SmartTableView;

    iput-object p2, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;

    iput p3, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$contentWidth:I

    iput p4, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$contentHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$listener:Lcom/biznessapps/golfcourse/OnTableResizeListener;

    iget v1, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$contentWidth:I

    iget v2, p0, Lcom/biznessapps/golfcourse/SmartTableView$1;->val$contentHeight:I

    invoke-interface {v0, v1, v2}, Lcom/biznessapps/golfcourse/OnTableResizeListener;->onResized(II)V

    .line 93
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 86
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 82
    return-void
.end method
