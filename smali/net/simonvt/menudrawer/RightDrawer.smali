.class public Lnet/simonvt/menudrawer/RightDrawer;
.super Lnet/simonvt/menudrawer/HorizontalDrawer;
.source "RightDrawer.java"


# instance fields
.field private mIndicatorTop:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/HorizontalDrawer;-><init>(Landroid/app/Activity;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/HorizontalDrawer;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/HorizontalDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/HorizontalDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private offsetMenu(I)V
    .locals 9
    .param p1, "offsetPixels"    # I

    .prologue
    const/high16 v8, 0x3e800000    # 0.25f

    .line 74
    iget-boolean v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetMenu:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    if-eqz v6, :cond_0

    .line 75
    iget v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    .line 76
    .local v0, "menuWidth":I
    int-to-float v6, v0

    int-to-float v7, p1

    add-float/2addr v6, v7

    int-to-float v7, v0

    div-float v4, v6, v7

    .line 78
    .local v4, "openRatio":F
    sget-boolean v6, Lnet/simonvt/menudrawer/RightDrawer;->USE_TRANSLATIONS:Z

    if-eqz v6, :cond_2

    .line 79
    if-eqz p1, :cond_1

    .line 80
    int-to-float v6, v0

    mul-float/2addr v6, v4

    mul-float/2addr v6, v8

    float-to-int v2, v6

    .line 81
    .local v2, "offset":I
    iget-object v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    .line 95
    .end local v0    # "menuWidth":I
    .end local v2    # "offset":I
    .end local v4    # "openRatio":F
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v0    # "menuWidth":I
    .restart local v4    # "openRatio":F
    :cond_1
    iget-object v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    neg-int v7, v0

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v5

    .line 88
    .local v5, "width":I
    iget-object v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getRight()I

    move-result v3

    .line 89
    .local v3, "oldMenuRight":I
    int-to-float v6, v0

    mul-float/2addr v6, v4

    mul-float/2addr v6, v8

    float-to-int v6, v6

    add-int v1, v5, v6

    .line 90
    .local v1, "newRight":I
    sub-int v2, v1, v3

    .line 91
    .restart local v2    # "offset":I
    iget-object v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 92
    iget-object v7, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_3

    const/4 v6, 0x4

    :goto_1
    invoke-virtual {v7, v6}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method


# virtual methods
.method public closeMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/RightDrawer;->animateOffsetTo(IIZ)V

    .line 40
    return-void
.end method

.method protected drawDropShadow(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 99
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getHeight()I

    move-result v0

    .line 100
    .local v0, "height":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v3

    .line 101
    .local v3, "width":I
    add-int v1, v3, p2

    .line 102
    .local v1, "left":I
    iget v4, p0, Lnet/simonvt/menudrawer/RightDrawer;->mDropShadowSize:I

    add-int v2, v1, v4

    .line 104
    .local v2, "right":I
    iget-object v4, p0, Lnet/simonvt/menudrawer/RightDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    iget-object v4, p0, Lnet/simonvt/menudrawer/RightDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;I)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/RightDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 125
    .local v17, "position":Ljava/lang/Integer;
    if-nez v17, :cond_1

    const/16 v16, 0x0

    .line 127
    .local v16, "pos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActivePosition:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 128
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v19

    .line 129
    .local v19, "width":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    .line 130
    .local v14, "menuWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 132
    .local v11, "indicatorWidth":I
    add-int v5, v19, p2

    .line 133
    .local v5, "contentRight":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 135
    .local v15, "openRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/RightDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 138
    const/high16 v20, 0x3f800000    # 1.0f

    sget-object v21, Lnet/simonvt/menudrawer/RightDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v15

    invoke-interface/range {v21 .. v22}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v21

    sub-float v12, v20, v21

    .line 139
    .local v12, "interpolatedRatio":F
    int-to-float v0, v11

    move/from16 v20, v0

    mul-float v20, v20, v12

    move/from16 v0, v20

    float-to-int v13, v0

    .line 141
    .local v13, "interpolatedWidth":I
    add-int v9, v5, v13

    .line 142
    .local v9, "indicatorRight":I
    sub-int v8, v9, v11

    .line 144
    .local v8, "indicatorLeft":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v7, v20, v21

    .line 147
    .local v7, "indicatorFinalTop":I
    move-object/from16 v0, p0

    iget v10, v0, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorStartPos:I

    .line 148
    .local v10, "indicatorStartTop":I
    sub-int v6, v7, v10

    .line 149
    .local v6, "diff":I
    int-to-float v0, v6

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorOffset:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    .line 150
    .local v18, "startOffset":I
    add-int v20, v10, v18

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorTop:I

    .line 155
    .end local v6    # "diff":I
    .end local v7    # "indicatorFinalTop":I
    .end local v10    # "indicatorStartTop":I
    .end local v18    # "startOffset":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 156
    const/16 v20, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/RightDrawer;->getHeight()I

    move-result v21

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v5, v1, v9, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    int-to-float v0, v8

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorTop:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 161
    .end local v5    # "contentRight":I
    .end local v8    # "indicatorLeft":I
    .end local v9    # "indicatorRight":I
    .end local v11    # "indicatorWidth":I
    .end local v12    # "interpolatedRatio":F
    .end local v13    # "interpolatedWidth":I
    .end local v14    # "menuWidth":I
    .end local v15    # "openRatio":F
    .end local v16    # "pos":I
    .end local v17    # "position":Ljava/lang/Integer;
    .end local v19    # "width":I
    :cond_0
    return-void

    .line 125
    .restart local v17    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_0

    .line 152
    .restart local v5    # "contentRight":I
    .restart local v8    # "indicatorLeft":I
    .restart local v9    # "indicatorRight":I
    .restart local v11    # "indicatorWidth":I
    .restart local v12    # "interpolatedRatio":F
    .restart local v13    # "interpolatedWidth":I
    .restart local v14    # "menuWidth":I
    .restart local v15    # "openRatio":F
    .restart local v16    # "pos":I
    .restart local v19    # "width":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->height()I

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/RightDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v22

    sub-int v21, v21, v22

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorTop:I

    goto :goto_1
.end method

.method protected drawMenuOverlay(Landroid/graphics/Canvas;I)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getHeight()I

    move-result v0

    .line 111
    .local v0, "height":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v4

    .line 112
    .local v4, "width":I
    add-int v1, v4, p2

    .line 113
    .local v1, "left":I
    move v3, v4

    .line 114
    .local v3, "right":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 116
    .local v2, "openRatio":F
    iget-object v5, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v6, 0x0

    invoke-virtual {v5, v1, v6, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 117
    iget-object v5, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v6, 0x43390000    # 185.0f

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 118
    iget-object v5, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    return-void
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mIndicatorTop:I

    return v0
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 170
    iget v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    neg-int v0, v0

    div-int/lit8 v3, v0, 0x3

    .line 171
    .local v3, "dx":I
    iget-object v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    const/16 v5, 0x1388

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 172
    return-void
.end method

.method protected isContentTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 193
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetPixels:F

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDownAllowDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 198
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v1

    .line 199
    .local v1, "width":I
    iget v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mInitialMotionX:F

    float-to-int v0, v2

    .line 201
    .local v0, "initialMotionX":I
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuVisible:Z

    if-nez v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mTouchSize:I

    sub-int v2, v1, v2

    if-ge v0, v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuVisible:Z

    if-eqz v2, :cond_2

    int-to-float v2, v0

    int-to-float v3, v1

    iget v4, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetPixels:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v5, 0x0

    .line 54
    sub-int v2, p4, p2

    .line 55
    .local v2, "width":I
    sub-int v0, p5, p3

    .line 56
    .local v0, "height":I
    iget v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetPixels:F

    float-to-int v1, v3

    .line 58
    .local v1, "offsetPixels":I
    iget-object v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v4, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    sub-int v4, v2, v4

    invoke-virtual {v3, v4, v5, v2, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 59
    invoke-direct {p0, v1}, Lnet/simonvt/menudrawer/RightDrawer;->offsetMenu(I)V

    .line 61
    sget-boolean v3, Lnet/simonvt/menudrawer/RightDrawer;->USE_TRANSLATIONS:Z

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v3, v5, v5, v2, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v4, v2, v1

    invoke-virtual {v3, v1, v5, v4, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMoveAllowDrag(Landroid/view/MotionEvent;F)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "diff"    # F

    .prologue
    .line 207
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v1

    .line 208
    .local v1, "width":I
    iget v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mInitialMotionX:F

    float-to-int v0, v2

    .line 210
    .local v0, "initialMotionX":I
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuVisible:Z

    if-nez v2, :cond_0

    iget v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mTouchSize:I

    sub-int v2, v1, v2

    if-lt v0, v2, :cond_0

    const/4 v2, 0x0

    cmpg-float v2, p2, v2

    if-ltz v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuVisible:Z

    if-eqz v2, :cond_2

    int-to-float v2, v0

    int-to-float v3, v1

    iget v4, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetPixels:F

    add-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onMoveEvent(F)V
    .locals 3
    .param p1, "dx"    # F

    .prologue
    .line 216
    iget v1, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetPixels:F

    add-float/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 217
    .local v0, "newOffset":F
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/RightDrawer;->setOffsetPixels(F)V

    .line 218
    return-void
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 2
    .param p1, "offsetPixels"    # I

    .prologue
    .line 176
    sget-boolean v0, Lnet/simonvt/menudrawer/RightDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    .line 178
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/RightDrawer;->offsetMenu(I)V

    .line 179
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->invalidate()V

    .line 185
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/RightDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 182
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/RightDrawer;->offsetMenu(I)V

    .line 183
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->invalidate()V

    goto :goto_0
.end method

.method protected onUpEvent(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 222
    iget v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mOffsetPixels:F

    float-to-int v1, v3

    .line 223
    .local v1, "offsetPixels":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->getWidth()I

    move-result v2

    .line 225
    .local v2, "width":I
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mIsDragging:Z

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v5, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMaxVelocity:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 227
    iget-object v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    float-to-int v0, v3

    .line 228
    .local v0, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mLastMotionX:F

    .line 229
    iget-object v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v0, v4}, Lnet/simonvt/menudrawer/RightDrawer;->animateOffsetTo(IIZ)V

    .line 235
    .end local v0    # "initialVelocity":I
    :cond_0
    :goto_1
    return-void

    .line 229
    .restart local v0    # "initialVelocity":I
    :cond_1
    iget v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    neg-int v3, v3

    goto :goto_0

    .line 232
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v3, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuVisible:Z

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-int v4, v2, v1

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 233
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->closeMenu()V

    goto :goto_1
.end method

.method public openMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 34
    iget v0, p0, Lnet/simonvt/menudrawer/RightDrawer;->mMenuSize:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/RightDrawer;->animateOffsetTo(IIZ)V

    .line 35
    return-void
.end method

.method public setDropShadowColor(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    .line 44
    const v1, 0xffffff

    and-int v0, p1, v1

    .line 45
    .local v0, "endColor":I
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/RightDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/RightDrawer;->invalidate()V

    .line 50
    return-void
.end method
