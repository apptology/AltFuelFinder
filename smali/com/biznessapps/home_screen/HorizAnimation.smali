.class public Lcom/biznessapps/home_screen/HorizAnimation;
.super Landroid/view/animation/Animation;
.source "HorizAnimation.java"


# instance fields
.field final startWidth:I

.field final targetWidth:I

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;F)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "targetWidthInPersents"    # F

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/biznessapps/home_screen/HorizAnimation;->view:Landroid/view/View;

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/biznessapps/home_screen/HorizAnimation;->targetWidth:I

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/home_screen/HorizAnimation;->startWidth:I

    .line 16
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 20
    iget v1, p0, Lcom/biznessapps/home_screen/HorizAnimation;->startWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/biznessapps/home_screen/HorizAnimation;->targetWidth:I

    iget v3, p0, Lcom/biznessapps/home_screen/HorizAnimation;->startWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 21
    .local v0, "newWidth":I
    iget-object v1, p0, Lcom/biznessapps/home_screen/HorizAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 22
    iget-object v1, p0, Lcom/biznessapps/home_screen/HorizAnimation;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 23
    return-void
.end method

.method public initialize(IIII)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 27
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 28
    return-void
.end method

.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x1

    return v0
.end method
