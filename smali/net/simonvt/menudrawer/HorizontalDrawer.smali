.class public abstract Lnet/simonvt/menudrawer/HorizontalDrawer;
.super Lnet/simonvt/menudrawer/DraggableDrawer;
.source "HorizontalDrawer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HorizontalDrawer"


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/app/Activity;I)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/DraggableDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v6, v0, 0xff

    .line 62
    .local v6, "action":I
    iget v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchMode:I

    if-nez v0, :cond_0

    .line 63
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0

    .line 67
    :cond_0
    if-nez v6, :cond_1

    iget-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->isCloseEnough()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->setOffsetPixels(F)V

    .line 69
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->stopAnimation()V

    .line 70
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->endPeek()V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->setDrawerState(I)V

    .line 75
    :cond_1
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/HorizontalDrawer;->isContentTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    .line 83
    :cond_2
    if-eqz v6, :cond_3

    .line 84
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    .line 87
    :cond_3
    packed-switch v6, :pswitch_data_0

    .line 143
    :cond_4
    :goto_1
    iget-object v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_5

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 144
    :cond_5
    iget-object v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 146
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    goto :goto_0

    .line 89
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionX:F

    iput v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    .line 90
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionY:F

    iput v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionY:F

    .line 91
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/HorizontalDrawer;->onDownAllowDrag(Landroid/view/MotionEvent;)Z

    move-result v7

    .line 93
    .local v7, "allowDrag":Z
    if-eqz v7, :cond_4

    .line 94
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuVisible:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x8

    :goto_2
    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->setDrawerState(I)V

    .line 95
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->stopAnimation()V

    .line 96
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->endPeek()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    goto :goto_1

    .line 94
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 103
    .end local v7    # "allowDrag":Z
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 104
    .local v9, "x":F
    iget v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    sub-float v8, v9, v0

    .line 105
    .local v8, "dx":F
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v10

    .line 106
    .local v10, "xDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 107
    .local v11, "y":F
    iget v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionY:F

    sub-float v0, v11, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 109
    .local v12, "yDiff":F
    iget v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchSlop:I

    int-to-float v0, v0

    cmpl-float v0, v10, v0

    if-lez v0, :cond_4

    cmpl-float v0, v10, v12

    if-lez v0, :cond_4

    .line 110
    iget-object v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mOnInterceptMoveEventListener:Lnet/simonvt/menudrawer/MenuDrawer$OnInterceptMoveEventListener;

    if-eqz v0, :cond_7

    iget v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    const/4 v2, 0x0

    float-to-int v3, v8

    float-to-int v4, v9

    float-to-int v5, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lnet/simonvt/menudrawer/HorizontalDrawer;->canChildScrollHorizontally(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 112
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->endDrag()V

    .line 113
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 116
    :cond_7
    invoke-virtual {p0, p1, v8}, Lnet/simonvt/menudrawer/HorizontalDrawer;->onMoveAllowDrag(Landroid/view/MotionEvent;F)Z

    move-result v7

    .line 118
    .restart local v7    # "allowDrag":Z
    if-eqz v7, :cond_4

    .line 119
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->setDrawerState(I)V

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    .line 121
    iput v9, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    .line 122
    iput v11, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionY:F

    goto/16 :goto_1

    .line 134
    .end local v7    # "allowDrag":Z
    .end local v8    # "dx":F
    .end local v9    # "x":F
    .end local v10    # "xDiff":F
    .end local v11    # "y":F
    .end local v12    # "yDiff":F
    :pswitch_2
    iget v0, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mOffsetPixels:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 135
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->openMenu()V

    goto/16 :goto_1

    .line 137
    :cond_8
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->closeMenu()V

    goto/16 :goto_1

    .line 87
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

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    .line 32
    .local v7, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 34
    .local v3, "heightMode":I
    if-ne v7, v8, :cond_0

    if-eq v3, v8, :cond_1

    .line 35
    :cond_0
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "Must measure with an exact size"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 38
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 39
    .local v6, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 41
    .local v2, "height":I
    iget-boolean v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuSizeSet:Z

    if-nez v8, :cond_2

    int-to-float v8, v6

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuSize:I

    .line 42
    :cond_2
    iget v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mOffsetPixels:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    invoke-virtual {p0, v10}, Lnet/simonvt/menudrawer/HorizontalDrawer;->openMenu(Z)V

    .line 44
    :cond_3
    iget v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuSize:I

    invoke-static {p1, v10, v8}, Lnet/simonvt/menudrawer/HorizontalDrawer;->getChildMeasureSpec(III)I

    move-result v5

    .line 45
    .local v5, "menuWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lnet/simonvt/menudrawer/HorizontalDrawer;->getChildMeasureSpec(III)I

    move-result v4

    .line 46
    .local v4, "menuHeightMeasureSpec":I
    iget-object v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v5, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 48
    invoke-static {p1, v10, v6}, Lnet/simonvt/menudrawer/HorizontalDrawer;->getChildMeasureSpec(III)I

    move-result v1

    .line 49
    .local v1, "contentWidthMeasureSpec":I
    invoke-static {p1, v10, v2}, Lnet/simonvt/menudrawer/HorizontalDrawer;->getChildMeasureSpec(III)I

    move-result v0

    .line 50
    .local v0, "contentHeightMeasureSpec":I
    iget-object v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v8, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 52
    invoke-virtual {p0, v6, v2}, Lnet/simonvt/menudrawer/HorizontalDrawer;->setMeasuredDimension(II)V

    .line 54
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->updateTouchAreaSize()V

    .line 55
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 151
    iget-boolean v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mMenuVisible:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    if-nez v7, :cond_0

    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchMode:I

    if-nez v7, :cond_0

    .line 152
    const/4 v7, 0x0

    .line 213
    :goto_0
    return v7

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 156
    .local v0, "action":I
    iget-object v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v7, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v7

    iput-object v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 157
    :cond_1
    iget-object v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 159
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    move v7, v8

    .line 213
    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionX:F

    iput v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionY:F

    iput v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionY:F

    .line 163
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/HorizontalDrawer;->onDownAllowDrag(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 165
    .local v1, "allowDrag":Z
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->stopAnimation()V

    .line 167
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->endPeek()V

    .line 168
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->startLayerTranslation()V

    goto :goto_1

    .line 174
    .end local v1    # "allowDrag":Z
    :pswitch_1
    iget-boolean v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    if-nez v7, :cond_3

    .line 175
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 176
    .local v3, "x":F
    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    sub-float v2, v3, v7

    .line 177
    .local v2, "dx":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 178
    .local v4, "xDiff":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 179
    .local v5, "y":F
    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionY:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 181
    .local v6, "yDiff":F
    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchSlop:I

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-lez v7, :cond_3

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    .line 182
    invoke-virtual {p0, p1, v2}, Lnet/simonvt/menudrawer/HorizontalDrawer;->onMoveAllowDrag(Landroid/view/MotionEvent;F)Z

    move-result v1

    .line 184
    .restart local v1    # "allowDrag":Z
    if-eqz v1, :cond_3

    .line 185
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lnet/simonvt/menudrawer/HorizontalDrawer;->setDrawerState(I)V

    .line 186
    iput-boolean v8, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    .line 187
    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionX:F

    sub-float v7, v3, v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionX:F

    iget v9, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v7, v9

    :goto_2
    iput v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    .line 194
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "x":F
    .end local v4    # "xDiff":F
    .end local v5    # "y":F
    .end local v6    # "yDiff":F
    :cond_3
    iget-boolean v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mIsDragging:Z

    if-eqz v7, :cond_2

    .line 195
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/HorizontalDrawer;->startLayerTranslation()V

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 198
    .restart local v3    # "x":F
    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    sub-float v2, v3, v7

    .line 200
    .restart local v2    # "dx":F
    iput v3, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mLastMotionX:F

    .line 201
    invoke-virtual {p0, v2}, Lnet/simonvt/menudrawer/HorizontalDrawer;->onMoveEvent(F)V

    goto :goto_1

    .line 187
    .restart local v1    # "allowDrag":Z
    .restart local v4    # "xDiff":F
    .restart local v5    # "y":F
    .restart local v6    # "yDiff":F
    :cond_4
    iget v7, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mInitialMotionX:F

    iget v9, p0, Lnet/simonvt/menudrawer/HorizontalDrawer;->mTouchSlop:I

    int-to-float v9, v9

    sub-float/2addr v7, v9

    goto :goto_2

    .line 208
    .end local v1    # "allowDrag":Z
    .end local v2    # "dx":F
    .end local v3    # "x":F
    .end local v4    # "xDiff":F
    .end local v5    # "y":F
    .end local v6    # "yDiff":F
    :pswitch_2
    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/HorizontalDrawer;->onUpEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 159
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
