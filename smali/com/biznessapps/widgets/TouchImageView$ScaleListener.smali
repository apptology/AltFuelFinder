.class Lcom/biznessapps/widgets/TouchImageView$ScaleListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/TouchImageView;


# direct methods
.method private constructor <init>(Lcom/biznessapps/widgets/TouchImageView;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/widgets/TouchImageView;
    .param p2, "x1"    # Lcom/biznessapps/widgets/TouchImageView$1;

    .prologue
    .line 873
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;-><init>(Lcom/biznessapps/widgets/TouchImageView;)V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    const/4 v5, 0x1

    .line 882
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->scaleImage(DFFZ)V
    invoke-static/range {v0 .. v5}, Lcom/biznessapps/widgets/TouchImageView;->access$2200(Lcom/biznessapps/widgets/TouchImageView;DFFZ)V

    .line 887
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$2100(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->touchImageViewListener:Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;
    invoke-static {v0}, Lcom/biznessapps/widgets/TouchImageView;->access$2100(Lcom/biznessapps/widgets/TouchImageView;)Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/biznessapps/widgets/TouchImageView$OnTouchImageViewListener;->onMove()V

    .line 890
    :cond_0
    return v5
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    sget-object v1, Lcom/biznessapps/widgets/TouchImageView$State;->ZOOM:Lcom/biznessapps/widgets/TouchImageView$State;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->setState(Lcom/biznessapps/widgets/TouchImageView$State;)V
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/TouchImageView;->access$1200(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$State;)V

    .line 877
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 7
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 895
    invoke-super {p0, p1}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 896
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    sget-object v3, Lcom/biznessapps/widgets/TouchImageView$State;->NONE:Lcom/biznessapps/widgets/TouchImageView$State;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->setState(Lcom/biznessapps/widgets/TouchImageView$State;)V
    invoke-static {v1, v3}, Lcom/biznessapps/widgets/TouchImageView;->access$1200(Lcom/biznessapps/widgets/TouchImageView;Lcom/biznessapps/widgets/TouchImageView$State;)V

    .line 897
    const/4 v6, 0x0

    .line 898
    .local v6, "animateToZoomBoundary":Z
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$700(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v2

    .line 899
    .local v2, "targetZoom":F
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$700(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->maxScale:F
    invoke-static {v3}, Lcom/biznessapps/widgets/TouchImageView;->access$900(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v3

    cmpl-float v1, v1, v3

    if-lez v1, :cond_2

    .line 900
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->maxScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$900(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v2

    .line 901
    const/4 v6, 0x1

    .line 908
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 909
    new-instance v0, Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;

    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->viewWidth:I
    invoke-static {v3}, Lcom/biznessapps/widgets/TouchImageView;->access$1300(Lcom/biznessapps/widgets/TouchImageView;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget-object v4, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->viewHeight:I
    invoke-static {v4}, Lcom/biznessapps/widgets/TouchImageView;->access$1600(Lcom/biznessapps/widgets/TouchImageView;)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;-><init>(Lcom/biznessapps/widgets/TouchImageView;FFFZ)V

    .line 910
    .local v0, "doubleTap":Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # invokes: Lcom/biznessapps/widgets/TouchImageView;->compatPostOnAnimation(Ljava/lang/Runnable;)V
    invoke-static {v1, v0}, Lcom/biznessapps/widgets/TouchImageView;->access$500(Lcom/biznessapps/widgets/TouchImageView;Ljava/lang/Runnable;)V

    .line 912
    .end local v0    # "doubleTap":Lcom/biznessapps/widgets/TouchImageView$DoubleTapZoom;
    :cond_1
    return-void

    .line 903
    :cond_2
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->normalizedScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$700(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v1

    iget-object v3, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->minScale:F
    invoke-static {v3}, Lcom/biznessapps/widgets/TouchImageView;->access$800(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v3

    cmpg-float v1, v1, v3

    if-gez v1, :cond_0

    .line 904
    iget-object v1, p0, Lcom/biznessapps/widgets/TouchImageView$ScaleListener;->this$0:Lcom/biznessapps/widgets/TouchImageView;

    # getter for: Lcom/biznessapps/widgets/TouchImageView;->minScale:F
    invoke-static {v1}, Lcom/biznessapps/widgets/TouchImageView;->access$800(Lcom/biznessapps/widgets/TouchImageView;)F

    move-result v2

    .line 905
    const/4 v6, 0x1

    goto :goto_0
.end method
