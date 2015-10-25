.class public Lnet/simonvt/menudrawer/BottomDrawer;
.super Lnet/simonvt/menudrawer/VerticalDrawer;
.source "BottomDrawer.java"


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
    .locals 9
    .param p1, "offsetPixels"    # I

    .prologue
    const/high16 v8, 0x3e800000    # 0.25f

    .line 76
    iget-boolean v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetMenu:Z

    if-eqz v6, :cond_0

    iget v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    if-eqz v6, :cond_0

    .line 77
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v0

    .line 78
    .local v0, "height":I
    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    .line 79
    .local v1, "menuSize":I
    int-to-float v6, v1

    int-to-float v7, p1

    add-float/2addr v6, v7

    int-to-float v7, v1

    div-float v5, v6, v7

    .line 81
    .local v5, "openRatio":F
    sget-boolean v6, Lnet/simonvt/menudrawer/BottomDrawer;->USE_TRANSLATIONS:Z

    if-eqz v6, :cond_2

    .line 82
    if-eqz p1, :cond_1

    .line 83
    int-to-float v6, v1

    mul-float/2addr v6, v5

    mul-float/2addr v6, v8

    float-to-int v2, v6

    .line 84
    .local v2, "offset":I
    iget-object v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v7, v2

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    .line 97
    .end local v0    # "height":I
    .end local v1    # "menuSize":I
    .end local v2    # "offset":I
    .end local v5    # "openRatio":F
    :cond_0
    :goto_0
    return-void

    .line 86
    .restart local v0    # "height":I
    .restart local v1    # "menuSize":I
    .restart local v5    # "openRatio":F
    :cond_1
    iget-object v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v7, v0, v1

    int-to-float v7, v7

    invoke-virtual {v6, v7}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    goto :goto_0

    .line 90
    :cond_2
    iget-object v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getTop()I

    move-result v4

    .line 91
    .local v4, "oldMenuTop":I
    int-to-float v6, v1

    mul-float/2addr v6, v5

    mul-float/2addr v6, v8

    float-to-int v3, v6

    .line 92
    .local v3, "offsetBy":I
    iget v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    sub-int v6, v0, v6

    add-int/2addr v6, v3

    sub-int v2, v6, v4

    .line 93
    .restart local v2    # "offset":I
    iget-object v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v6, v2}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    .line 94
    iget-object v7, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

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
    invoke-virtual {p0, v0, v0, p1}, Lnet/simonvt/menudrawer/BottomDrawer;->animateOffsetTo(IIZ)V

    .line 40
    return-void
.end method

.method protected drawDropShadow(Landroid/graphics/Canvas;I)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 101
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getWidth()I

    move-result v1

    .line 102
    .local v1, "width":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v0

    .line 104
    .local v0, "height":I
    iget-object v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    add-int v4, v0, p2

    add-int v5, v0, p2

    iget v6, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mDropShadowSize:I

    add-int/2addr v5, v6

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    iget-object v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 106
    return-void
.end method

.method protected drawIndicator(Landroid/graphics/Canvas;I)V
    .locals 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BottomDrawer;->isViewDescendant(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    sget v21, Lcom/biznessapps/layout/R$id;->mdActiveViewPosition:I

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    .line 123
    .local v17, "position":Ljava/lang/Integer;
    if-nez v17, :cond_1

    const/16 v16, 0x0

    .line 125
    .local v16, "pos":I
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActivePosition:I

    move/from16 v20, v0

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 126
    invoke-virtual/range {p0 .. p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v7

    .line 127
    .local v7, "height":I
    move-object/from16 v0, p0

    iget v14, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    .line 128
    .local v14, "menuHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    .line 130
    .local v9, "indicatorHeight":I
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    int-to-float v0, v14

    move/from16 v21, v0

    div-float v15, v20, v21

    .line 132
    .local v15, "openRatio":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lnet/simonvt/menudrawer/BottomDrawer;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    .line 136
    .local v11, "indicatorWidth":I
    const/high16 v20, 0x3f800000    # 1.0f

    sget-object v21, Lnet/simonvt/menudrawer/BottomDrawer;->INDICATOR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/high16 v22, 0x3f800000    # 1.0f

    sub-float v22, v22, v15

    invoke-interface/range {v21 .. v22}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v21

    sub-float v13, v20, v21

    .line 137
    .local v13, "interpolatedRatio":F
    int-to-float v0, v9

    move/from16 v20, v0

    mul-float v20, v20, v13

    move/from16 v0, v20

    float-to-int v12, v0

    .line 139
    .local v12, "interpolatedHeight":I
    add-int v20, v7, p2

    add-int v8, v20, v12

    .line 140
    .local v8, "indicatorBottom":I
    sub-int v10, v8, v9

    .line 141
    .local v10, "indicatorTop":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorAnimating:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v21, v21, v11

    div-int/lit8 v21, v21, 0x2

    add-int v6, v20, v21

    .line 143
    .local v6, "finalLeft":I
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorStartPos:I

    move/from16 v18, v0

    .line 144
    .local v18, "startLeft":I
    sub-int v5, v6, v18

    .line 145
    .local v5, "diff":I
    int-to-float v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorOffset:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    .line 146
    .local v19, "startOffset":I
    add-int v20, v18, v19

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorLeft:I

    .line 151
    .end local v5    # "diff":I
    .end local v6    # "finalLeft":I
    .end local v18    # "startLeft":I
    .end local v19    # "startOffset":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 152
    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorLeft:I

    move/from16 v20, v0

    add-int v21, v7, p2

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorLeft:I

    move/from16 v22, v0

    add-int v22, v22, v11

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorLeft:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v10

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 155
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 158
    .end local v7    # "height":I
    .end local v8    # "indicatorBottom":I
    .end local v9    # "indicatorHeight":I
    .end local v10    # "indicatorTop":I
    .end local v11    # "indicatorWidth":I
    .end local v12    # "interpolatedHeight":I
    .end local v13    # "interpolatedRatio":F
    .end local v14    # "menuHeight":I
    .end local v15    # "openRatio":F
    .end local v16    # "pos":I
    .end local v17    # "position":Ljava/lang/Integer;
    :cond_0
    return-void

    .line 123
    .restart local v17    # "position":Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    goto/16 :goto_0

    .line 148
    .restart local v7    # "height":I
    .restart local v8    # "indicatorBottom":I
    .restart local v9    # "indicatorHeight":I
    .restart local v10    # "indicatorTop":I
    .restart local v11    # "indicatorWidth":I
    .restart local v12    # "interpolatedHeight":I
    .restart local v13    # "interpolatedRatio":F
    .restart local v14    # "menuHeight":I
    .restart local v15    # "openRatio":F
    .restart local v16    # "pos":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/BottomDrawer;->mActiveRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Rect;->width()I

    move-result v21

    sub-int v21, v21, v11

    div-int/lit8 v21, v21, 0x2

    add-int v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorLeft:I

    goto :goto_1
.end method

.method protected drawMenuOverlay(Landroid/graphics/Canvas;I)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "offsetPixels"    # I

    .prologue
    .line 110
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getWidth()I

    move-result v2

    .line 111
    .local v2, "width":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v0

    .line 112
    .local v0, "height":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 114
    .local v1, "openRatio":F
    iget-object v3, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    add-int v5, v0, p2

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget-object v3, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x43390000    # 185.0f

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 116
    iget-object v3, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 117
    return-void
.end method

.method protected getIndicatorStartPos()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mIndicatorLeft:I

    return v0
.end method

.method protected initPeekScroller()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 167
    iget v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    neg-int v0, v0

    div-int/lit8 v3, v0, 0x3

    .line 168
    .local v3, "dx":I
    iget-object v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mPeekScroller:Lnet/simonvt/menudrawer/Scroller;

    const/16 v5, 0x1388

    move v2, v1

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/Scroller;->startScroll(IIIII)V

    .line 169
    return-void
.end method

.method protected isContentTouch(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetPixels:F

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
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v0

    .line 196
    .local v0, "height":I
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuVisible:Z

    if-nez v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mInitialMotionY:F

    iget v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mTouchSize:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-gez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuVisible:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mInitialMotionY:F

    int-to-float v2, v0

    iget v3, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetPixels:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v6, 0x0

    .line 55
    sub-int v3, p4, p2

    .line 56
    .local v3, "width":I
    sub-int v0, p5, p3

    .line 57
    .local v0, "height":I
    iget v4, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetPixels:F

    float-to-int v2, v4

    .line 58
    .local v2, "offsetPixels":I
    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    .line 60
    .local v1, "menuSize":I
    iget-object v4, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    sub-int v5, v0, v1

    invoke-virtual {v4, v6, v5, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 61
    invoke-direct {p0, v2}, Lnet/simonvt/menudrawer/BottomDrawer;->offsetMenu(I)V

    .line 63
    sget-boolean v4, Lnet/simonvt/menudrawer/BottomDrawer;->USE_TRANSLATIONS:Z

    if-eqz v4, :cond_0

    .line 64
    iget-object v4, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v4, v6, v6, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    add-int v5, v0, v2

    invoke-virtual {v4, v6, v2, v3, v5}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMoveAllowDrag(Landroid/view/MotionEvent;F)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "diff"    # F

    .prologue
    .line 202
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v0

    .line 203
    .local v0, "height":I
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuVisible:Z

    if-nez v1, :cond_0

    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mInitialMotionY:F

    iget v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mTouchSize:I

    sub-int v2, v0, v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-ltz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuVisible:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mInitialMotionY:F

    int-to-float v2, v0

    iget v3, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetPixels:F

    add-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onMoveEvent(F)V
    .locals 2
    .param p1, "dx"    # F

    .prologue
    .line 209
    iget v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetPixels:F

    add-float/2addr v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/BottomDrawer;->setOffsetPixels(F)V

    .line 210
    return-void
.end method

.method protected onOffsetPixelsChanged(I)V
    .locals 2
    .param p1, "offsetPixels"    # I

    .prologue
    .line 173
    sget-boolean v0, Lnet/simonvt/menudrawer/BottomDrawer;->USE_TRANSLATIONS:Z

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->setTranslationY(F)V

    .line 175
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/BottomDrawer;->offsetMenu(I)V

    .line 176
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->invalidate()V

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget-object v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->getTop()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->offsetTopAndBottom(I)V

    .line 179
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/BottomDrawer;->offsetMenu(I)V

    .line 180
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->invalidate()V

    goto :goto_0
.end method

.method protected onUpEvent(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 214
    iget v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mOffsetPixels:F

    float-to-int v1, v2

    .line 216
    .local v1, "offsetPixels":I
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mIsDragging:Z

    if-eqz v2, :cond_2

    .line 217
    iget-object v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v3, 0x3e8

    iget v4, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMaxVelocity:I

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 218
    iget-object v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v0, v2

    .line 219
    .local v0, "initialVelocity":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mLastMotionY:F

    .line 220
    iget-object v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    iget v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    neg-int v2, v2

    :goto_0
    const/4 v3, 0x1

    invoke-virtual {p0, v2, v0, v3}, Lnet/simonvt/menudrawer/BottomDrawer;->animateOffsetTo(IIZ)V

    .line 227
    .end local v0    # "initialVelocity":I
    :cond_0
    :goto_1
    return-void

    .line 220
    .restart local v0    # "initialVelocity":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 224
    .end local v0    # "initialVelocity":I
    :cond_2
    iget-boolean v2, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->getHeight()I

    move-result v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 225
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->closeMenu()V

    goto :goto_1
.end method

.method public openMenu(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 34
    iget v0, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mMenuSize:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lnet/simonvt/menudrawer/BottomDrawer;->animateOffsetTo(IIZ)V

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

    sget-object v2, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    const/4 v4, 0x1

    aput v0, v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v1, p0, Lnet/simonvt/menudrawer/BottomDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/BottomDrawer;->invalidate()V

    .line 51
    return-void
.end method
