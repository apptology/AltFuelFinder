.class Lcom/biznessapps/widgets/TouchImageView$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/biznessapps/widgets/TouchImageView;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p2, "x1"    # Lcom/biznessapps/widgets/TouchImageView$1;

    .prologue
    .line 738
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView$GestureListener;-><init>(Lcom/biznessapps/widgets/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 772
    const/4 v6, 0x0

    .line 773
    .local v6, "consumed":Z
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 776
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->state:Lcom/biznessapps/widgets/TouchImageView$State;
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$600(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$State;

    move-result-object v1

    sget-object v3, Lcom/biznessapps/widgets/TouchImageView$State;->NONE:Lcom/biznessapps/widgets/TouchImageView$State;

    if-ne v1, v3, :cond_1

    .line 777
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$700(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->minScale:F
    invoke-static {v3}, Lcom/biznessapps/widgets/TouchImageView;->access$800(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->maxScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$900(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v2

    .line 778
    .local v2, "targetZoom":F
    :goto_0
    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;-><init>(Lcom/biznessapps/widgets/TouchImageView;FFFZ)V

    .line 779
    .local v0, "doubleTap":Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/biznessapps/widgets/TouchImageView;->access$500(Lcom/biznessapps/widgets/TouchImageView;Ljava/lang/Runnable;)V

    .line 780
    const/4 v6, 0x1

    .line 782
    .end local v0    # "doubleTap":Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;
    .end local v2    # "targetZoom":F
    :cond_1
    return v6

    .line 777
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->minScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$800(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v2

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 790
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 758
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->fling:Lcom/biznessapps/widgets/TouchImageView$Fling;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$400(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$Fling;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 763
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->fling:Lcom/biznessapps/widgets/TouchImageView$Fling;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$400(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$Fling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/widgets/TouchImageView$Fling;->cancelFling()V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    new-instance v1, Lcom/biznessapps/widgets/TouchImageView$Fling;

    iget-object v2, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    float-to-int v3, p3

    float-to-int v4, p4

    invoke-direct {v1, v2, v3, v4}, Lcom/biznessapps/widgets/TouchImageView$Fling;-><init>(Lcom/biznessapps/widgets/TouchImageView;II)V

    # setter for: Lcom/biznessapps/widgets/TouchImageView;->fling:Lcom/biznessapps/widgets/TouchImageView$Fling;
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/TouchImageView;->access$402(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$Fling;)Lcom/biznessapps/widgets/TouchImageView$Fling;

    .line 766
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->fling:Lcom/biznessapps/widgets/TouchImageView$Fling;
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$400(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$Fling;

    move-result-object v1

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/TouchImageView;->access$500(Lcom/biznessapps/widgets/TouchImageView;Ljava/lang/Runnable;)V

    .line 767
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 752
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/TouchImageView;->performLongClick()Z

    .line 753
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->doubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$300(Lcom/biznessapps/widgets/TouchImageView;)Landroid/view/GestureDetector$OnDoubleTapListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 746
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$GestureListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-virtual {v0}, Lcom/biznessapps/widgets/TouchImageView;->performClick()Z

    move-result v0

    goto :goto_0
.end method
