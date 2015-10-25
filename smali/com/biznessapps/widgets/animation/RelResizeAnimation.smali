.class public Lcom/biznessapps/widgets/animation/RelResizeAnimation;
.super Landroid/view/animation/Animation;
.source "RelResizeAnimation.java"


# instance fields
.field final startHeight:I

.field final targetHeight:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FI)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "targetHeightInPersents"    # F
    .param p3, "targetHeight"    # I

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->view:Landroid/view/View;

    .line 14
    iput p3, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->targetHeight:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->startHeight:I

    .line 17
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 21
    iget v1, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->startHeight:I

    int-to-float v1, v1

    iget v2, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->targetHeight:I

    iget v3, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->startHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 22
    .local v0, "newHeight":I
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/RelResizeAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 24
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 29
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
