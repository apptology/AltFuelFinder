.class public abstract Lnet/simonvt/menudrawer/VerticalDrawer;
.super Lnet/simonvt/menudrawer/DraggableDrawer;
.source "VerticalDrawer.java"


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/app/Activity;I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 59
    .local v6, "action":I
    if-nez v6, :cond_0

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->isCloseEnough()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/VerticalDrawer;->setOffsetPixels(F)V

    .line 61
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->stopAnimation()V

    .line 62
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->endPeek()V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/VerticalDrawer;->setDrawerState(I)V

    .line 67
    :cond_0
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/VerticalDrawer;->isContentTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x1

    .line 143
    :goto_0
    return v0

    .line 71
    :cond_1
    iget v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchMode:I

    if-nez v0, :cond_2

    .line 72
    const/4 v0, 0x0

    goto :goto_0

    .line 75
    :cond_2
    if-eqz v6, :cond_3

    .line 76
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 81
    :cond_3
    packed-switch v6, :pswitch_data_0

    .line 138
    :cond_4
    :goto_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    .line 139
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 141
    :cond_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 143
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    goto :goto_0

    .line 83
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionX:F

    iput v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionY:F

    iput v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    .line 85
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/VerticalDrawer;->onDownAllowDrag(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 87
    .local v7, "allowDrag":Z
    if-eqz v7, :cond_4

    .line 88
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/VerticalDrawer;->setDrawerState(I)V

    .line 89
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->stopAnimation()V

    .line 90
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->endPeek()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    goto :goto_1

    .line 88
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 97
    .end local v7    # "allowDrag":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 98
    .local v10, "x":F
    iget v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionX:F

    sub-float v8, v10, v0

    .line 99
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 100
    .local v11, "xDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    .line 101
    .local v12, "y":F
    iget v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    sub-float v9, v12, v0

    .line 102
    .local v9, "dy":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 104
    .local v13, "yDiff":F
    iget v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_4

    cmpl-float v0, v13, v11

    if-lez v0, :cond_4

    .line 105
    iget-object v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    if-eqz v0, :cond_7

    iget v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/VerticalDrawer;->canChildScrollVertically(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 107
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->endDrag()V

    .line 108
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 111
    :cond_7
    invoke-virtual {p0, p1, v9}, Lnet/simonvt/menudrawer/VerticalDrawer;->onMoveAllowDrag(Landroid/view/MotionEvent;F)Z

    move-result v7

    .line 113
    .restart local v7    # "allowDrag":Z
    if-eqz v7, :cond_4

    .line 114
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/VerticalDrawer;->setDrawerState(I)V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    .line 116
    iput v10, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionX:F

    .line 117
    iput v12, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 129
    .end local v7    # "allowDrag":Z
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "x":F
    .end local v11    # "xDiff":F
    .end local v12    # "y":F
    .end local v13    # "yDiff":F
    :pswitch_2
    iget v0, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mOffsetPixels:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 130
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->openMenu()V

    goto/16 :goto_1

    .line 132
    :cond_8
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->closeMenu()V

    goto/16 :goto_1

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/4 v10, 0x0

    .line 29
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 30
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 32
    .local v3, "heightMode":I
    if-ne v7, v8, :cond_0

    if-eq v3, v8, :cond_1

    .line 33
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must measure with an exact size"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 36
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 37
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 39
    .local v2, "height":I
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuSizeSet:Z

    if-nez v8, :cond_2

    int-to-float v8, v2

    const/high16 v9, 0x3e800000    # 0.25f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuSize:I

    .line 40
    :cond_2
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mOffsetPixels:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/VerticalDrawer;->openMenu(Z)V

    .line 42
    :cond_3
    invoke-static {p1, v10, v6}, Lnet/simonvt/menudrawer/VerticalDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 43
    .local v5, "menuWidthMeasureSpec":I
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuSize:I

    invoke-static {p1, v10, v8}, Lnet/simonvt/menudrawer/VerticalDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 44
    .local v4, "menuHeightMeasureSpec":I
    iget-object v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v5, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 46
    invoke-static {p1, v10, v6}, Lnet/simonvt/menudrawer/VerticalDrawer;->getChildMeasureSpec(III)I

    move-result v1

    .line 47
    .local v1, "contentWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lnet/simonvt/menudrawer/VerticalDrawer;->getChildMeasureSpec(III)I

    move-result v0

    .line 48
    .local v0, "contentHeightMeasureSpec":I
    iget-object v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 50
    invoke-virtual {p0, v6, v2}, Lnet/simonvt/menudrawer/VerticalDrawer;->setMeasuredDimension(II)V

    .line 52
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->updateTouchAreaSize()V

    .line 53
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x1

    .line 148
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mMenuVisible:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    if-nez v8, :cond_0

    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchMode:I

    if-nez v8, :cond_0

    .line 149
    const/4 v8, 0x0

    .line 213
    :goto_0
    return v8

    .line 151
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v0, v8, 0xff

    .line 153
    .local v0, "action":I
    iget-object v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v8, :cond_1

    .line 154
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v8

    iput-object v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 156
    :cond_1
    iget-object v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 158
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v8, v9

    .line 213
    goto :goto_0

    .line 160
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionX:F

    iput v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionX:F

    .line 161
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iput v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionY:F

    iput v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    .line 162
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/VerticalDrawer;->onDownAllowDrag(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 164
    .local v1, "allowDrag":Z
    if-eqz v1, :cond_2

    .line 165
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->stopAnimation()V

    .line 166
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->endPeek()V

    .line 167
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->startLayerTranslation()V

    goto :goto_1

    .line 173
    .end local v1    # "allowDrag":Z
    :pswitch_1
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    if-nez v8, :cond_3

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 175
    .local v4, "x":F
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionX:F

    sub-float v2, v4, v8

    .line 176
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 177
    .local v5, "xDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 178
    .local v6, "y":F
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    sub-float v3, v6, v8

    .line 179
    .local v3, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 181
    .local v7, "yDiff":F
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v7, v8

    if-lez v8, :cond_3

    cmpl-float v8, v7, v5

    if-lez v8, :cond_3

    .line 182
    invoke-virtual {p0, p1, v3}, Lnet/simonvt/menudrawer/VerticalDrawer;->onMoveAllowDrag(Landroid/view/MotionEvent;F)Z

    move-result v1

    .line 184
    .restart local v1    # "allowDrag":Z
    if-eqz v1, :cond_3

    .line 185
    const/4 v8, 0x2

    invoke-virtual {p0, v8}, Lnet/simonvt/menudrawer/VerticalDrawer;->setDrawerState(I)V

    .line 186
    iput-boolean v9, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    .line 187
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionY:F

    sub-float v8, v6, v8

    const/4 v10, 0x0

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionY:F

    iget v10, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchSlop:I

    int-to-float v10, v10

    add-float/2addr v8, v10

    :goto_2
    iput v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    .line 194
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :cond_3
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mIsDragging:Z

    if-eqz v8, :cond_2

    .line 195
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/VerticalDrawer;->startLayerTranslation()V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 198
    .restart local v6    # "y":F
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    sub-float v3, v6, v8

    .line 200
    .restart local v3    # "dy":F
    iput v6, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mLastMotionY:F

    .line 201
    invoke-virtual {p0, v3}, Lnet/simonvt/menudrawer/VerticalDrawer;->onMoveEvent(F)V

    goto :goto_1

    .line 187
    .restart local v1    # "allowDrag":Z
    .restart local v2    # "dx":F
    .restart local v4    # "x":F
    .restart local v5    # "xDiff":F
    .restart local v7    # "yDiff":F
    :cond_4
    iget v8, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mInitialMotionY:F

    iget v10, p0, Lnet/simonvt/menudrawer/VerticalDrawer;->mTouchSlop:I

    int-to-float v10, v10

    sub-float/2addr v8, v10

    goto :goto_2

    .line 208
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    :pswitch_2
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/VerticalDrawer;->onUpEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
