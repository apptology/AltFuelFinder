.class Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;
.super Ljava/lang/Object;
.source "ParallaxViewPager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->initManualFlipper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 97
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->detector:Landroid/support/v4/view/GestureDetectorCompat;
    invoke-static {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$100(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Landroid/support/v4/view/GestureDetectorCompat;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 99
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 101
    .local v0, "action":I
    iget-object v4, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_0
    # setter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->touchState:Z
    invoke-static {v4, v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$202(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;Z)Z

    .line 103
    if-nez v0, :cond_0

    .line 104
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->stopAutoFlipTimer()V

    .line 105
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # invokes: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->setManualDuration()V
    invoke-static {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$300(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)V

    .line 107
    :cond_0
    if-ne v0, v2, :cond_1

    .line 108
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$1;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    invoke-virtual {v1}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->startAutoFlipTimer()V

    .line 111
    :cond_1
    return v3

    :cond_2
    move v1, v3

    .line 101
    goto :goto_0
.end method
