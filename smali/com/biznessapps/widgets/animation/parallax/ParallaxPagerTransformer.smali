.class public Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;
.super Ljava/lang/Object;
.source "ParallaxPagerTransformer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private border:I

.field private id:I

.field private speed:F


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->border:I

    .line 13
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->speed:F

    .line 16
    iput p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->id:I

    .line 17
    return-void
.end method


# virtual methods
.method public setBorder(I)V
    .locals 0
    .param p1, "px"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->border:I

    .line 40
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->speed:F

    .line 44
    return-void
.end method

.method public transformPage(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 21
    iget v3, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->id:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 22
    .local v0, "parallaxView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 23
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p2, v3

    if-lez v3, :cond_0

    cmpg-float v3, p2, v5

    if-gez v3, :cond_0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 25
    .local v2, "width":F
    mul-float v3, p2, v2

    iget v4, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->speed:F

    mul-float/2addr v3, v4

    neg-float v3, v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/biznessapps/widgets/animation/parallax/ParallaxPagerTransformer;->border:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 27
    .local v1, "sc":F
    const/4 v3, 0x0

    cmpl-float v3, p2, v3

    if-nez v3, :cond_1

    .line 28
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleX(F)V

    .line 29
    invoke-virtual {p1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 36
    .end local v1    # "sc":F
    .end local v2    # "width":F
    :cond_0
    :goto_0
    return-void

    .line 31
    .restart local v1    # "sc":F
    .restart local v2    # "width":F
    :cond_1
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    goto :goto_0
.end method
