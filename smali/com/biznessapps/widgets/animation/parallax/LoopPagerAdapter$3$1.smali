.class Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;
.super Ljava/lang/Object;
.source "LoopPagerAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->onImageLoaded(Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;


# direct methods
.method constructor <init>(Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 127
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 128
    .local v4, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 130
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getWidth()I

    move-result v8

    int-to-float v7, v8

    .line 131
    .local v7, "wv":F
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getHeight()I

    move-result v8

    int-to-float v2, v8

    .line 133
    .local v2, "hv":F
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v5, v8

    .line 134
    .local v5, "wi":F
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v1, v8

    .line 136
    .local v1, "hi":F
    move v6, v7

    .line 137
    .local v6, "width":F
    move v0, v2

    .line 139
    .local v0, "height":F
    div-float v8, v5, v7

    div-float v9, v1, v2

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    .line 140
    div-float v8, v2, v1

    div-float v9, v2, v1

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 141
    mul-float v8, v5, v2

    div-float v6, v8, v1

    .line 147
    :goto_0
    sub-float v8, v7, v6

    div-float/2addr v8, v10

    sub-float v9, v2, v0

    div-float/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 148
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    sget-object v9, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 149
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v8, v9, :cond_0

    .line 150
    const v3, 0x3faccccd    # 1.35f

    .line 151
    .local v3, "koef":F
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 152
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 155
    .end local v3    # "koef":F
    :cond_0
    iget-object v8, p0, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3$1;->this$1:Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;

    iget-object v8, v8, Lcom/biznessapps/widgets/animation/parallax/LoopPagerAdapter$3;->val$image:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 156
    return-void

    .line 143
    :cond_1
    div-float v8, v7, v5

    div-float v9, v7, v5

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 144
    mul-float v8, v1, v7

    div-float v0, v8, v5

    goto :goto_0
.end method
