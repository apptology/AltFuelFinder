.class public Lnet/simonvt/menudrawer/LeftStaticDrawer;
.super Lnet/simonvt/menudrawer/StaticDrawer;
.source "LeftStaticDrawer.java"


# instance fields
.field private mIndicatorTop:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/StaticDrawer;-><init>(Landroid/app/Activity;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/StaticDrawer;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/StaticDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/StaticDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method


# virtual methods
.method protected drawIndicator(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v8, 0x0

    .line 49
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveView:Landroid/view/View;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveView:Landroid/view/View;

    invoke-virtual {p0, v9}, Lnet/simonvt/menudrawer/LeftStaticDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 50
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveView:Landroid/view/View;

    sget v10, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual {v9, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 51
    .local v5, "position":Ljava/lang/Integer;
    if-nez v5, :cond_1

    move v4, v8

    .line 53
    .local v4, "pos":I
    :goto_0
    iget v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActivePosition:I

    if-ne v4, v9, :cond_0

    .line 54
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveView:Landroid/view/View;

    iget-object v10, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 55
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveView:Landroid/view/View;

    iget-object v10, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v9, v10}, Lnet/simonvt/menudrawer/LeftStaticDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 57
    iget-boolean v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorAnimating:Z

    if-eqz v9, :cond_2

    .line 58
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int v1, v9, v10

    .line 60
    .local v1, "indicatorFinalTop":I
    iget v2, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorStartPos:I

    .line 61
    .local v2, "indicatorStartTop":I
    sub-int v0, v1, v2

    .line 62
    .local v0, "diff":I
    int-to-float v9, v0

    iget v10, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorOffset:F

    mul-float/2addr v9, v10

    float-to-int v7, v9

    .line 63
    .local v7, "startOffset":I
    add-int v9, v2, v7

    iput v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorTop:I

    .line 67
    .end local v0    # "diff":I
    .end local v1    # "indicatorFinalTop":I
    .end local v2    # "indicatorStartTop":I
    .end local v7    # "startOffset":I
    :goto_1
    iget v6, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mMenuSize:I

    .line 68
    .local v6, "right":I
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int v3, v6, v9

    .line 70
    .local v3, "left":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 71
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftStaticDrawer;->getHeight()I

    move-result v9

    invoke-virtual {p1, v3, v8, v6, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 72
    iget-object v8, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    int-to-float v9, v3

    iget v10, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorTop:I

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 76
    .end local v3    # "left":I
    .end local v4    # "pos":I
    .end local v5    # "position":Ljava/lang/Integer;
    .end local v6    # "right":I
    :cond_0
    return-void

    .line 51
    .restart local v5    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_0

    .line 65
    .restart local v4    # "pos":I
    :cond_2
    iget-object v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    iget-object v11, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sub-int/2addr v10, v11

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iput v9, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorTop:I

    goto :goto_1
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mIndicatorTop:I

    return v0
.end method

.method protected initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/StaticDrawer;->initDrawer(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    sget-object v0, Lnet/simonvt/menudrawer/Position;->LEFT:Lnet/simonvt/menudrawer/Position;

    iput-object v0, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    .line 35
    return-void
.end method

.method public setDropShadowColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 39
    const v1, 0xffffff

    and-int v0, p1, v1

    .line 40
    .local v0, "endColor":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/LeftStaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftStaticDrawer;->invalidate()V

    .line 45
    return-void
.end method
