.class Lcom/biznessapps/widgets/wheel/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/biznessapps/widgets/wheel/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/wheel/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/wheel/WheelView;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/wheel/WheelView;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$102(Lcom/biznessapps/widgets/wheel/WheelView;I)I

    .line 127
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/wheel/WheelView;->invalidate()V

    .line 128
    return-void
.end method

.method public onJustify()V
    .locals 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v0}, Lcom/biznessapps/widgets/wheel/WheelView;->access$100(Lcom/biznessapps/widgets/wheel/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;
    invoke-static {v0}, Lcom/biznessapps/widgets/wheel/WheelView;->access$200(Lcom/biznessapps/widgets/wheel/WheelView;)Lcom/biznessapps/widgets/wheel/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$100(Lcom/biznessapps/widgets/wheel/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/widgets/wheel/WheelScroller;->scroll(II)V

    .line 134
    :cond_0
    return-void
.end method

.method public onScroll(I)V
    .locals 3
    .param p1, "distance"    # I

    .prologue
    .line 113
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # invokes: Lcom/biznessapps/widgets/wheel/WheelView;->doScroll(I)V
    invoke-static {v1, p1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$000(Lcom/biznessapps/widgets/wheel/WheelView;I)V

    .line 115
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->getHeight()I

    move-result v0

    .line 116
    .local v0, "height":I
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$100(Lcom/biznessapps/widgets/wheel/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_1

    .line 117
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # setter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1, v0}, Lcom/biznessapps/widgets/wheel/WheelView;->access$102(Lcom/biznessapps/widgets/wheel/WheelView;I)I

    .line 118
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;
    invoke-static {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$200(Lcom/biznessapps/widgets/wheel/WheelView;)Lcom/biznessapps/widgets/wheel/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/wheel/WheelScroller;->stopScrolling()V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$100(Lcom/biznessapps/widgets/wheel/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    neg-int v2, v0

    # setter for: Lcom/biznessapps/widgets/wheel/WheelView;->scrollingOffset:I
    invoke-static {v1, v2}, Lcom/biznessapps/widgets/wheel/WheelView;->access$102(Lcom/biznessapps/widgets/wheel/WheelView;I)I

    .line 121
    iget-object v1, p0, Lcom/biznessapps/widgets/wheel/WheelView$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelView;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelView;->scroller:Lcom/biznessapps/widgets/wheel/WheelScroller;
    invoke-static {v1}, Lcom/biznessapps/widgets/wheel/WheelView;->access$200(Lcom/biznessapps/widgets/wheel/WheelView;)Lcom/biznessapps/widgets/wheel/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/wheel/WheelScroller;->stopScrolling()V

    goto :goto_0
.end method

.method public onStarted()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method
