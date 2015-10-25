.class Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$MyScroller;
.super Landroid/widget/Scroller;
.source "ParallaxViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyScroller"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;


# direct methods
.method public constructor <init>(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$MyScroller;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    .line 134
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {p0, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    .line 135
    return-void
.end method


# virtual methods
.method public startScroll(IIIII)V
    .locals 6
    .param p1, "startX"    # I
    .param p2, "startY"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I
    .param p5, "d"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager$MyScroller;->this$0:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    # getter for: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->pager:Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$400(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;

    move-result-object v0

    # invokes: Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->getDuration()I
    invoke-static {v0}, Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;->access$500(Lcom/biznessapps/widgets/animation/parallax/ParallaxViewPager;)I

    move-result v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 140
    return-void
.end method
