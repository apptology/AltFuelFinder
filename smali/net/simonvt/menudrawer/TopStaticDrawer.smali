.class public Lnet/simonvt/menudrawer/TopStaticDrawer;
.super Lnet/simonvt/menudrawer/StaticDrawer;
.source "TopStaticDrawer.java"


# instance fields
.field private mIndicatorLeft:I


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
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveView:Landroid/view/View;

    if-eqz v10, :cond_0

    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveView:Landroid/view/View;

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/TopStaticDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 50
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveView:Landroid/view/View;

    sget v11, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual {v10, v11}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 51
    .local v7, "position":Ljava/lang/Integer;
    if-nez v7, :cond_1

    const/4 v6, 0x0

    .line 53
    .local v6, "pos":I
    :goto_0
    iget v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActivePosition:I

    if-ne v6, v10, :cond_0

    .line 54
    iget v5, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mMenuSize:I

    .line 55
    .local v5, "menuHeight":I
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 57
    .local v2, "indicatorHeight":I
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveView:Landroid/view/View;

    iget-object v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v11}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 58
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveView:Landroid/view/View;

    iget-object v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v10, v11}, Lnet/simonvt/menudrawer/TopStaticDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 59
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 61
    .local v4, "indicatorWidth":I
    sub-int v3, v5, v2

    .line 62
    .local v3, "indicatorTop":I
    iget-boolean v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorAnimating:Z

    if-eqz v10, :cond_2

    .line 63
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x2

    add-int v1, v10, v11

    .line 64
    .local v1, "finalLeft":I
    iget v8, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorStartPos:I

    .line 65
    .local v8, "startLeft":I
    sub-int v0, v1, v8

    .line 66
    .local v0, "diff":I
    int-to-float v10, v0

    iget v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorOffset:F

    mul-float/2addr v10, v11

    float-to-int v9, v10

    .line 67
    .local v9, "startOffset":I
    add-int v10, v8, v9

    iput v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorLeft:I

    .line 72
    .end local v0    # "diff":I
    .end local v1    # "finalLeft":I
    .end local v8    # "startLeft":I
    .end local v9    # "startOffset":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 73
    iget v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorLeft:I

    iget v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorLeft:I

    add-int/2addr v11, v4

    invoke-virtual {p1, v10, v3, v11, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 74
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    iget v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorLeft:I

    int-to-float v11, v11

    int-to-float v12, v3

    const/4 v13, 0x0

    invoke-virtual {p1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 78
    .end local v2    # "indicatorHeight":I
    .end local v3    # "indicatorTop":I
    .end local v4    # "indicatorWidth":I
    .end local v5    # "menuHeight":I
    .end local v6    # "pos":I
    .end local v7    # "position":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 51
    .restart local v7    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_0

    .line 69
    .restart local v2    # "indicatorHeight":I
    .restart local v3    # "indicatorTop":I
    .restart local v4    # "indicatorWidth":I
    .restart local v5    # "menuHeight":I
    .restart local v6    # "pos":I
    :cond_2
    iget-object v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v11, v4

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    iput v10, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorLeft:I

    goto :goto_1
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mIndicatorLeft:I

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
    sget-object v0, Lnet/simonvt/menudrawer/Position;->TOP:Lnet/simonvt/menudrawer/Position;

    iput-object v0, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

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

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/TopStaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopStaticDrawer;->invalidate()V

    .line 45
    return-void
.end method
