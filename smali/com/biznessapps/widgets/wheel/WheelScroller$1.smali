.class Lcom/biznessapps/widgets/wheel/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/wheel/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/wheel/WheelScroller;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/wheel/WheelScroller;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/biznessapps/widgets/wheel/WheelScroller$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelScroller$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelScroller;

    # setter for: Lcom/biznessapps/widgets/wheel/WheelScroller;->lastScrollY:I
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelScroller;->access$002(Lcom/biznessapps/widgets/wheel/WheelScroller;I)I

    .line 149
    const v9, 0x7fffffff

    .line 150
    .local v9, "maxY":I
    const v10, -0x7fffffff

    .line 151
    .local v10, "minY":I
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelScroller$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelScroller;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/biznessapps/widgets/wheel/WheelScroller;->access$100(Lcom/biznessapps/widgets/wheel/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/biznessapps/widgets/wheel/WheelScroller$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelScroller;

    # getter for: Lcom/biznessapps/widgets/wheel/WheelScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/biznessapps/widgets/wheel/WheelScroller;->access$000(Lcom/biznessapps/widgets/wheel/WheelScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 152
    iget-object v0, p0, Lcom/biznessapps/widgets/wheel/WheelScroller$1;->this$0:Lcom/biznessapps/widgets/wheel/WheelScroller;

    # invokes: Lcom/biznessapps/widgets/wheel/WheelScroller;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/widgets/wheel/WheelScroller;->access$200(Lcom/biznessapps/widgets/wheel/WheelScroller;I)V

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 144
    const/4 v0, 0x1

    return v0
.end method
