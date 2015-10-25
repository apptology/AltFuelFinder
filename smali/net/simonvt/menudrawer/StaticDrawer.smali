.class public abstract Lnet/simonvt/menudrawer/StaticDrawer;
.super Lnet/simonvt/menudrawer/MenuDrawer;
.source "StaticDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/simonvt/menudrawer/StaticDrawer$1;
    }
.end annotation


# instance fields
.field protected mPosition:Lnet/simonvt/menudrawer/Position;


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "dragMode"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/app/Activity;I)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lnet/simonvt/menudrawer/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method private drawDropShadow(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 36
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->getWidth()I

    move-result v3

    .line 37
    .local v3, "width":I
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->getHeight()I

    move-result v1

    .line 38
    .local v1, "height":I
    iget v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 39
    .local v2, "menuSize":I
    iget v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowSize:I

    .line 41
    .local v0, "dropShadowSize":I
    sget-object v4, Lnet/simonvt/menudrawer/StaticDrawer$1;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    iget-object v5, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    invoke-virtual {v5}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 59
    :goto_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 60
    return-void

    .line 43
    :pswitch_0
    iget-object v4, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v2, v0

    invoke-virtual {v4, v5, v7, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 47
    :pswitch_1
    iget-object v4, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v2, v0

    invoke-virtual {v4, v7, v5, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 51
    :pswitch_2
    iget-object v4, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v3, v2

    sub-int v6, v3, v2

    add-int/2addr v6, v0

    invoke-virtual {v4, v5, v7, v6, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v4, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowDrawable:Landroid/graphics/drawable/Drawable;

    sub-int v5, v1, v2

    sub-int v6, v1, v2

    add-int/2addr v6, v0

    invoke-virtual {v4, v7, v5, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public closeMenu(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 151
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 30
    invoke-super {p0, p1}, Lnet/simonvt/menudrawer/MenuDrawer;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 31
    iget-boolean v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mDropShadowEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lnet/simonvt/menudrawer/StaticDrawer;->drawDropShadow(Landroid/graphics/Canvas;)V

    .line 32
    :cond_0
    iget-object v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mActiveIndicator:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lnet/simonvt/menudrawer/StaticDrawer;->drawIndicator(Landroid/graphics/Canvas;)V

    .line 33
    :cond_1
    return-void
.end method

.method protected abstract drawIndicator(Landroid/graphics/Canvas;)V
.end method

.method public getOffsetMenuEnabled()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchBezelSize()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getTouchMode()I
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public isMenuVisible()Z
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v4, 0x0

    .line 66
    sub-int v1, p4, p2

    .line 67
    .local v1, "width":I
    sub-int v0, p5, p3

    .line 69
    .local v0, "height":I
    sget-object v2, Lnet/simonvt/menudrawer/StaticDrawer$1;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    iget-object v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    invoke-virtual {v3}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 71
    :pswitch_0
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v4, v4, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 72
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 76
    :pswitch_1
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 77
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v1, v3

    invoke-virtual {v2, v4, v4, v3, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 81
    :pswitch_2
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v4, v4, v1, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 82
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    invoke-virtual {v2, v4, v3, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 86
    :pswitch_3
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v3, v1, v0}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    .line 87
    iget-object v2, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    iget v3, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    sub-int v3, v0, v3

    invoke-virtual {v2, v4, v4, v1, v3}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->layout(IIII)V

    goto :goto_0

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 17
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 94
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v14

    .line 95
    .local v14, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 97
    .local v8, "heightMode":I
    const/high16 v15, 0x40000000    # 2.0f

    if-ne v14, v15, :cond_0

    const/high16 v15, 0x40000000    # 2.0f

    if-eq v8, v15, :cond_1

    .line 98
    :cond_0
    new-instance v15, Ljava/lang/IllegalStateException;

    const-string v16, "Must measure with an exact size"

    invoke-direct/range {v15 .. v16}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 101
    :cond_1
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 102
    .local v13, "width":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 104
    .local v7, "height":I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSizeSet:Z

    if-nez v15, :cond_2

    int-to-float v15, v7

    const/high16 v16, 0x3e800000    # 0.25f

    mul-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p0

    iput v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 106
    :cond_2
    sget-object v15, Lnet/simonvt/menudrawer/StaticDrawer$1;->$SwitchMap$net$simonvt$menudrawer$Position:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mPosition:Lnet/simonvt/menudrawer/Position;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lnet/simonvt/menudrawer/Position;->ordinal()I

    move-result v16

    aget v15, v15, v16

    packed-switch v15, :pswitch_data_0

    .line 138
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v7}, Lnet/simonvt/menudrawer/StaticDrawer;->setMeasuredDimension(II)V

    .line 139
    return-void

    .line 109
    :pswitch_0
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v7, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 111
    .local v1, "childHeightMeasureSpec":I
    move-object/from16 v0, p0

    iget v11, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 112
    .local v11, "menuWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v11, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 114
    .local v12, "menuWidthMeasureSpec":I
    sub-int v5, v13, v11

    .line 115
    .local v5, "contentWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v5, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 117
    .local v6, "contentWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v6, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 118
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v12, v1}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    goto :goto_0

    .line 124
    .end local v1    # "childHeightMeasureSpec":I
    .end local v5    # "contentWidth":I
    .end local v6    # "contentWidthMeasureSpec":I
    .end local v11    # "menuWidth":I
    .end local v12    # "menuWidthMeasureSpec":I
    :pswitch_1
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v13, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 126
    .local v2, "childWidthMeasureSpec":I
    move-object/from16 v0, p0

    iget v9, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 127
    .local v9, "menuHeight":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v9, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 129
    .local v10, "menuHeightMeasureSpec":I
    sub-int v3, v7, v9

    .line 130
    .local v3, "contentHeight":I
    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v3, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 132
    .local v4, "contentHeightMeasureSpec":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mContentContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v2, v4}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuContainer:Lnet/simonvt/menudrawer/BuildLayerFrameLayout;

    invoke-virtual {v15, v2, v10}, Lnet/simonvt/menudrawer/BuildLayerFrameLayout;->measure(II)V

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public openMenu(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public peekDrawer()V
    .locals 0

    .prologue
    .line 177
    return-void
.end method

.method public peekDrawer(J)V
    .locals 0
    .param p1, "delay"    # J

    .prologue
    .line 181
    return-void
.end method

.method public peekDrawer(JJ)V
    .locals 0
    .param p1, "startDelay"    # J
    .param p3, "delay"    # J

    .prologue
    .line 185
    return-void
.end method

.method public setHardwareLayerEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 189
    return-void
.end method

.method public setMenuSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 160
    iput p1, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSize:I

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/simonvt/menudrawer/StaticDrawer;->mMenuSizeSet:Z

    .line 162
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->requestLayout()V

    .line 163
    invoke-virtual {p0}, Lnet/simonvt/menudrawer/StaticDrawer;->invalidate()V

    .line 164
    return-void
.end method

.method public setOffsetMenuEnabled(Z)V
    .locals 0
    .param p1, "offsetMenu"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public setTouchBezelSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 202
    return-void
.end method

.method public setTouchMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 198
    return-void
.end method

.method public toggleMenu(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .prologue
    .line 143
    return-void
.end method
