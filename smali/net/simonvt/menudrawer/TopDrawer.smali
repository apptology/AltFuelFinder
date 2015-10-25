.class public Lnet/simonvt/menudrawer/TopDrawer;
.super Lnet/simonvt/menudrawer/VerticalDrawer;
.source "TopDrawer.java"


# instance fields
.field private mIndicatorLeft:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/VerticalDrawer;-><init>(Landroid/app/Activity;I)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/VerticalDrawer;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/VerticalDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/VerticalDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method private offsetMenu(I)V
    .locals 7
    .param p1, "offsetPixels"    # I

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 75
    iget-boolean v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetMenu:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    if-eqz v4, :cond_0

    .line 76
    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    .line 77
    .local v0, "menuSize":I
    int-to-float v4, v0

    int-to-float v5, p1

    sub-float/2addr v4, v5

    int-to-float v5, v0

    div-float v3, v4, v5

    .line 79
    .local v3, "openRatio":F
    sget-boolean v4, Lnet/simonvt/menudrawer/TopDrawer;->USE_TRANSLATIONS:Z

    if-eqz v4, :cond_2

    .line 80
    if-lez p1, :cond_1

    .line 81
    neg-float v4, v3

    int-to-float v5, v0

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v1, v4

    .line 82
    .local v1, "offset":I
    iget-object v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v5, v1

    invoke-virtual {v4, v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    .line 94
    .end local v0    # "menuSize":I
    .end local v1    # "offset":I
    .end local v3    # "openRatio":F
    :cond_0
    :goto_0
    return-void

    .line 84
    .restart local v0    # "menuSize":I
    .restart local v3    # "openRatio":F
    :cond_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    neg-int v5, v0

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 88
    :cond_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getTop()I

    move-result v2

    .line 89
    .local v2, "oldMenuTop":I
    neg-float v4, v3

    int-to-float v5, v0

    mul-float/2addr v4, v5

    mul-float/2addr v4, v6

    float-to-int v4, v4

    sub-int v1, v4, v2

    .line 90
    .restart local v1    # "offset":I
    iget-object v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v4, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    .line 91
    iget-object v5, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    if-nez p1, :cond_3

    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v5, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public closeMenu(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->animateOffsetTo(IIZ)V

    .line 40
    return-void
.end method

.method protected drawDropShadow(Landroid/graphics/Canvas;I)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 98
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->getWidth()I

    move-result v0

    .line 100
    .local v0, "width":I
    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    iget v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->mDropShadowSize:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3, v0, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 101
    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 102
    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;I)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/TopDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v18, v0

    sget v19, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 118
    .local v15, "position":Ljava/lang/Integer;
    if-nez v15, :cond_1

    const/4 v14, 0x0

    .line 120
    .local v14, "pos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActivePosition:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ne v14, v0, :cond_0

    .line 121
    move-object/from16 v0, p0

    iget v12, v0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    .line 122
    .local v12, "menuHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 124
    .local v7, "indicatorHeight":I
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    int-to-float v0, v12

    move/from16 v19, v0

    div-float v13, v18, v19

    .line 126
    .local v13, "openRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/TopDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 130
    .local v9, "indicatorWidth":I
    const/high16 v18, 0x3f800000    # 1.0f

    sget-object v19, Lnet/simonvt/menudrawer/TopDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, v13

    invoke-interface/range {v19 .. v20}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v19

    sub-float v11, v18, v19

    .line 131
    .local v11, "interpolatedRatio":F
    int-to-float v0, v7

    move/from16 v18, v0

    mul-float v18, v18, v11

    move/from16 v0, v18

    float-to-int v10, v0

    .line 133
    .local v10, "interpolatedHeight":I
    sub-int v8, p2, v10

    .line 134
    .local v8, "indicatorTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorAnimating:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v19, v19, v9

    div-int/lit8 v19, v19, 0x2

    add-int v6, v18, v19

    .line 136
    .local v6, "finalLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorStartPos:I

    move/from16 v16, v0

    .line 137
    .local v16, "startLeft":I
    sub-int v5, v6, v16

    .line 138
    .local v5, "diff":I
    int-to-float v0, v5

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorOffset:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    .line 139
    .local v17, "startOffset":I
    add-int v18, v16, v17

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorLeft:I

    .line 144
    .end local v5    # "diff":I
    .end local v6    # "finalLeft":I
    .end local v16    # "startLeft":I
    .end local v17    # "startOffset":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorLeft:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorLeft:I

    move/from16 v19, v0

    add-int v19, v19, v9

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, p2

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorLeft:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 147
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 150
    .end local v7    # "indicatorHeight":I
    .end local v8    # "indicatorTop":I
    .end local v9    # "indicatorWidth":I
    .end local v10    # "interpolatedHeight":I
    .end local v11    # "interpolatedRatio":F
    .end local v12    # "menuHeight":I
    .end local v13    # "openRatio":F
    .end local v14    # "pos":I
    .end local v15    # "position":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 118
    .restart local v15    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto/16 :goto_0

    .line 141
    .restart local v7    # "indicatorHeight":I
    .restart local v8    # "indicatorTop":I
    .restart local v9    # "indicatorWidth":I
    .restart local v10    # "interpolatedHeight":I
    .restart local v11    # "interpolatedRatio":F
    .restart local v12    # "menuHeight":I
    .restart local v13    # "openRatio":F
    .restart local v14    # "pos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/TopDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Rect;->width()I

    move-result v19

    sub-int v19, v19, v9

    div-int/lit8 v19, v19, 0x2

    add-int v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorLeft:I

    goto :goto_1
.end method

.method protected drawMenuOverlay(Landroid/graphics/Canvas;I)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->getWidth()I

    move-result v1

    .line 107
    .local v1, "width":I
    int-to-float v2, p2

    iget v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 109
    .local v0, "openRatio":F
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v4, v4, v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 110
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v3, 0x43390000    # 185.0f

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v0

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 112
    return-void
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 154
    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mIndicatorLeft:I

    return v0
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 159
    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    div-int/lit8 v3, v0, 0x3

    .line 160
    .local v3, "dx":I
    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    const/16 v5, 0x1388

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 161
    return-void
.end method

.method protected isContentTouch(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetPixels:F

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
    .line 187
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mInitialMotionY:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mTouchSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mInitialMotionY:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetPixels:F

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

    .line 55
    sub-int v2, p4, p2

    .line 56
    .local v2, "width":I
    sub-int v0, p5, p3

    .line 57
    .local v0, "height":I
    iget v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetPixels:F

    float-to-int v1, v3

    .line 59
    .local v1, "offsetPixels":I
    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    invoke-virtual {v3, v5, v5, v2, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 60
    invoke-direct {p0, v1}, Lnet/simonvt/menudrawer/TopDrawer;->offsetMenu(I)V

    .line 62
    sget-boolean v3, Lnet/simonvt/menudrawer/TopDrawer;->USE_TRANSLATIONS:Z

    if-eqz v3, :cond_0

    .line 63
    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v3, v5, v5, v2, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v3, p0, Lnet/simonvt/menudrawer/TopDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v4, v0, v1

    invoke-virtual {v3, v5, v1, v2, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMoveAllowDrag(Landroid/view/MotionEvent;F)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "diff"    # F

    .prologue
    .line 193
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuVisible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mInitialMotionY:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mTouchSize:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mInitialMotionY:F

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetPixels:F

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
    .line 199
    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/TopDrawer;->setOffsetPixels(F)V

    .line 200
    return-void
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 2
    .param p1, "offsetPixels"    # I

    .prologue
    .line 165
    sget-boolean v0, Lnet/simonvt/menudrawer/TopDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    .line 167
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->offsetMenu(I)V

    .line 168
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->invalidate()V

    .line 174
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    .line 171
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/TopDrawer;->offsetMenu(I)V

    .line 172
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->invalidate()V

    goto :goto_0
.end method

.method protected onUpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 204
    iget v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mOffsetPixels:F

    float-to-int v1, v2

    .line 206
    .local v1, "offsetPixels":I
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mIsDragging:Z

    if-eqz v2, :cond_2

    .line 207
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMaxVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 208
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    .line 209
    .local v0, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mLastMotionY:F

    .line 210
    iget-object v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lnet/simonvt/menudrawer/TopDrawer;->animateOffsetTo(IIZ)V

    .line 217
    .end local v0    # "initialVelocity":I
    :cond_0
    :goto_1
    return-void

    .line 210
    .restart local v0    # "initialVelocity":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 214
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->closeMenu()V

    goto :goto_1
.end method

.method public openMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 34
    iget v0, p0, Lnet/simonvt/menudrawer/TopDrawer;->mMenuSize:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/TopDrawer;->animateOffsetTo(IIZ)V

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

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/TopDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/TopDrawer;->invalidate()V

    .line 51
    return-void
.end method
