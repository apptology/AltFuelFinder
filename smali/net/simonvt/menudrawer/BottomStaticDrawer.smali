.class public Lnet/simonvt/menudrawer/BottomStaticDrawer;
.super Lnet/simonvt/menudrawer/StaticDrawer;
.source "BottomStaticDrawer.java"


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
    .locals 21
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 49
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BottomStaticDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v17, v0

    sget v18, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    .line 51
    .local v14, "position":Ljava/lang/Integer;
    if-nez v14, :cond_1

    const/4 v13, 0x0

    .line 53
    .local v13, "pos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActivePosition:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-ne v13, v0, :cond_0

    .line 54
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/BottomStaticDrawer;->getHeight()I

    move-result v7

    .line 55
    .local v7, "height":I
    move-object/from16 v0, p0

    iget v12, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mMenuSize:I

    .line 56
    .local v12, "menuHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 58
    .local v9, "indicatorHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BottomStaticDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 62
    .local v11, "indicatorWidth":I
    sub-int v10, v7, v12

    .line 63
    .local v10, "indicatorTop":I
    add-int v8, v10, v9

    .line 64
    .local v8, "indicatorBottom":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorAnimating:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 65
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v18, v18, v11

    div-int/lit8 v18, v18, 0x2

    add-int v6, v17, v18

    .line 66
    .local v6, "finalLeft":I
    move-object/from16 v0, p0

    iget v15, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorStartPos:I

    .line 67
    .local v15, "startLeft":I
    sub-int v5, v6, v15

    .line 68
    .local v5, "diff":I
    int-to-float v0, v5

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorOffset:F

    move/from16 v18, v0

    mul-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    .line 69
    .local v16, "startOffset":I
    add-int v17, v15, v16

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorLeft:I

    .line 74
    .end local v5    # "diff":I
    .end local v6    # "finalLeft":I
    .end local v15    # "startLeft":I
    .end local v16    # "startOffset":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 75
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorLeft:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorLeft:I

    move/from16 v18, v0

    add-int v18, v18, v11

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v10, v2, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 77
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorLeft:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v10

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 81
    .end local v7    # "height":I
    .end local v8    # "indicatorBottom":I
    .end local v9    # "indicatorHeight":I
    .end local v10    # "indicatorTop":I
    .end local v11    # "indicatorWidth":I
    .end local v12    # "menuHeight":I
    .end local v13    # "pos":I
    .end local v14    # "position":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 51
    .restart local v14    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v13

    goto/16 :goto_0

    .line 71
    .restart local v7    # "height":I
    .restart local v8    # "indicatorBottom":I
    .restart local v9    # "indicatorHeight":I
    .restart local v10    # "indicatorTop":I
    .restart local v11    # "indicatorWidth":I
    .restart local v12    # "menuHeight":I
    .restart local v13    # "pos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Rect;->width()I

    move-result v18

    sub-int v18, v18, v11

    div-int/lit8 v18, v18, 0x2

    add-int v17, v17, v18

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorLeft:I

    goto :goto_1
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mIndicatorLeft:I

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
    sget-object v0, Lnet/simonvt/menudrawer/Position;->BOTTOM:Lnet/simonvt/menudrawer/Position;

    iput-object v0, p0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

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

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/BottomStaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomStaticDrawer;->invalidate()V

    .line 45
    return-void
.end method
