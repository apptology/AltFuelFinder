.class public Lnet/simonvt/menudrawer/LeftDrawer;
.super Lnet/simonvt/menudrawer/HorizontalDrawer;
.source "LeftDrawer.java"


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
    .locals 8
    .param p1, "offsetPixels"    # I

    .prologue
    const/high16 v7, 0x3e800000    # 0.25f

    .line 74
    iget-boolean v5, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetMenu:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    if-eqz v5, :cond_0

    .line 75
    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    .line 76
    .local v1, "menuWidth":I
    int-to-float v5, v1

    int-to-float v6, p1

    sub-float/2addr v5, v6

    int-to-float v6, v1

    div-float v4, v5, v6

    .line 78
    .local v4, "openRatio":F
    sget-boolean v5, Lnet/simonvt/menudrawer/LeftDrawer;->USE_TRANSLATIONS:Z

    if-eqz v5, :cond_2

    .line 79
    if-lez p1, :cond_1

    .line 80
    neg-float v5, v4

    int-to-float v6, v1

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    float-to-int v0, v5

    .line 81
    .local v0, "menuLeft":I
    iget-object v5, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v6, v0

    invoke-virtual {v5, v6}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    .line 93
    .end local v0    # "menuLeft":I
    .end local v1    # "menuWidth":I
    .end local v4    # "openRatio":F
    :cond_0
    :goto_0
    return-void

    .line 83
    .restart local v1    # "menuWidth":I
    .restart local v4    # "openRatio":F
    :cond_1
    iget-object v5, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    neg-int v6, v1

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    goto :goto_0

    .line 87
    :cond_2
    iget-object v5, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v3

    .line 88
    .local v3, "oldMenuLeft":I
    neg-float v5, v4

    int-to-float v6, v1

    mul-float/2addr v5, v6

    mul-float/2addr v5, v7

    float-to-int v5, v5

    sub-int v2, v5, v3

    .line 89
    .local v2, "offset":I
    iget-object v5, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v5, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 90
    iget-object v6, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_3

    const/4 v5, 0x4

    :goto_1
    invoke-virtual {v6, v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public closeMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/LeftDrawer;->animateOffsetTo(IIZ)V

    .line 40
    return-void
.end method

.method protected drawDropShadow(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 97
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftDrawer;->getHeight()I

    move-result v0

    .line 99
    .local v0, "height":I
    iget-object v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mDropShadowSize:I

    sub-int v2, p2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 100
    iget-object v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 101
    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;I)V
    .locals 16
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 115
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveView:Landroid/view/View;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/simonvt/menudrawer/LeftDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 116
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveView:Landroid/view/View;

    sget v13, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual {v12, v13}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 117
    .local v9, "position":Ljava/lang/Integer;
    if-nez v9, :cond_1

    const/4 v8, 0x0

    .line 119
    .local v8, "pos":I
    :goto_0
    move-object/from16 v0, p0

    iget v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActivePosition:I

    if-ne v8, v12, :cond_0

    .line 120
    move/from16 v0, p2

    int-to-float v12, v0

    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    int-to-float v13, v13

    div-float v7, v12, v13

    .line 122
    .local v7, "openRatio":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 123
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lnet/simonvt/menudrawer/LeftDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 125
    const/high16 v12, 0x3f800000    # 1.0f

    sget-object v13, Lnet/simonvt/menudrawer/LeftDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v14, v7

    invoke-interface {v13, v14}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v13

    sub-float v4, v12, v13

    .line 126
    .local v4, "interpolatedRatio":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    int-to-float v12, v12

    mul-float/2addr v12, v4

    float-to-int v5, v12

    .line 128
    .local v5, "interpolatedWidth":I
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorAnimating:Z

    if-eqz v12, :cond_2

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int v2, v12, v13

    .line 131
    .local v2, "indicatorFinalTop":I
    move-object/from16 v0, p0

    iget v3, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorStartPos:I

    .line 132
    .local v3, "indicatorStartTop":I
    sub-int v1, v2, v3

    .line 133
    .local v1, "diff":I
    int-to-float v12, v1

    move-object/from16 v0, p0

    iget v13, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorOffset:F

    mul-float/2addr v12, v13

    float-to-int v11, v12

    .line 134
    .local v11, "startOffset":I
    add-int v12, v3, v11

    move-object/from16 v0, p0

    iput v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorTop:I

    .line 138
    .end local v1    # "diff":I
    .end local v2    # "indicatorFinalTop":I
    .end local v3    # "indicatorStartTop":I
    .end local v11    # "startOffset":I
    :goto_1
    move/from16 v10, p2

    .line 139
    .local v10, "right":I
    sub-int v6, v10, v5

    .line 141
    .local v6, "left":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 142
    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/LeftDrawer;->getHeight()I

    move-result v13

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12, v10, v13}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 143
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    int-to-float v13, v6

    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorTop:I

    int-to-float v14, v14

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    .end local v4    # "interpolatedRatio":F
    .end local v5    # "interpolatedWidth":I
    .end local v6    # "left":I
    .end local v7    # "openRatio":F
    .end local v8    # "pos":I
    .end local v9    # "position":Ljava/lang/Integer;
    .end local v10    # "right":I
    :cond_0
    return-void

    .line 117
    .restart local v9    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto/16 :goto_0

    .line 136
    .restart local v4    # "interpolatedRatio":F
    .restart local v5    # "interpolatedWidth":I
    .restart local v7    # "openRatio":F
    .restart local v8    # "pos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorTop:I

    goto :goto_1
.end method

.method protected drawMenuOverlay(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftDrawer;->getHeight()I

    move-result v0

    .line 106
    .local v0, "height":I
    int-to-float v2, p2

    iget v3, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 108
    .local v1, "openRatio":F
    iget-object v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    iget-object v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x43390000    # 185.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 110
    iget-object v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 111
    return-void
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mIndicatorTop:I

    return v0
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 156
    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    div-int/lit8 v3, v0, 0x3

    .line 157
    .local v3, "dx":I
    iget-object v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    const/16 v5, 0x1388

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 158
    return-void
.end method

.method protected isContentTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetPixels:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDownAllowDrag(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 184
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mInitialMotionX:F

    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mTouchSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mInitialMotionX:F

    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetPixels:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

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
    iget v3, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetPixels:F

    float-to-int v1, v3

    .line 58
    .local v1, "offsetPixels":I
    iget-object v3, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v4, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    invoke-virtual {v3, v5, v5, v4, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 59
    invoke-direct {p0, v1}, Lnet/simonvt/menudrawer/LeftDrawer;->offsetMenu(I)V

    .line 61
    sget-boolean v3, Lnet/simonvt/menudrawer/LeftDrawer;->USE_TRANSLATIONS:Z

    if-eqz v3, :cond_0

    .line 62
    iget-object v3, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v3, v5, v5, v2, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    iget-object v3, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v4, v2, v1

    invoke-virtual {v3, v1, v5, v4, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMoveAllowDrag(Landroid/view/MotionEvent;F)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "diff"    # F

    .prologue
    .line 190
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mInitialMotionX:F

    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mTouchSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mInitialMotionX:F

    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetPixels:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMoveEvent(F)V
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 196
    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/LeftDrawer;->setOffsetPixels(F)V

    .line 197
    return-void
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 2
    .param p1, "offsetPixels"    # I

    .prologue
    .line 162
    sget-boolean v0, Lnet/simonvt/menudrawer/LeftDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationX(F)V

    .line 164
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/LeftDrawer;->offsetMenu(I)V

    .line 165
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftDrawer;->invalidate()V

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetLeftAndRight(I)V

    .line 168
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/LeftDrawer;->offsetMenu(I)V

    .line 169
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftDrawer;->invalidate()V

    goto :goto_0
.end method

.method protected onUpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 201
    iget v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mOffsetPixels:F

    float-to-int v1, v2

    .line 203
    .local v1, "offsetPixels":I
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mIsDragging:Z

    if-eqz v2, :cond_2

    .line 204
    iget-object v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMaxVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 205
    iget-object v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    .line 206
    .local v0, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mLastMotionX:F

    .line 207
    iget-object v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lnet/simonvt/menudrawer/LeftDrawer;->animateOffsetTo(IIZ)V

    .line 213
    .end local v0    # "initialVelocity":I
    :cond_0
    :goto_1
    return-void

    .line 207
    .restart local v0    # "initialVelocity":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 210
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 211
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftDrawer;->closeMenu()V

    goto :goto_1
.end method

.method public openMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 34
    iget v0, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mMenuSize:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/LeftDrawer;->animateOffsetTo(IIZ)V

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

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/LeftDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 49
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/LeftDrawer;->invalidate()V

    .line 50
    return-void
.end method
