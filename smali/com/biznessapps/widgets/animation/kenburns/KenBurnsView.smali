.class public Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;
.super Landroid/widget/ImageView;
.source "KenBurnsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;
    }
.end annotation


# static fields
.field private static final FRAME_DELAY:J = 0x10L


# instance fields
.field private mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

.field private mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

.field private mDrawableRect:Landroid/graphics/RectF;

.field private mElapsedTime:J

.field private mInitialized:Z

.field private mLastFrameTime:J

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mPaused:Z

.field private mTransGen:Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

.field private mTransitionListener:Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;

.field private final mViewportRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    .line 55
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mInitialized:Z

    .line 90
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 92
    return-void
.end method

.method private fireTransitionEnd(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/biznessapps/widgets/animation/kenburns/Transition;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransitionListener:Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransitionListener:Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;

    invoke-interface {v0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;->onTransitionEnd(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V

    .line 272
    :cond_0
    return-void
.end method

.method private fireTransitionStart(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V
    .locals 1
    .param p1, "transition"    # Lcom/biznessapps/widgets/animation/kenburns/Transition;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransitionListener:Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransitionListener:Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;

    invoke-interface {v0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView$TransitionListener;->onTransitionStart(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V

    .line 262
    :cond_0
    return-void
.end method

.method private handleImageChange()V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->updateDrawableBounds()V

    .line 318
    iget-boolean v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->startNewTransition(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    .line 321
    :cond_0
    return-void
.end method

.method private hasBounds()Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startNewTransition(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 3
    .param p1, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 221
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->hasBounds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransGen:Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    iget-object v1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2, p1}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->generateNextTransition(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)Lcom/biznessapps/widgets/animation/kenburns/Transition;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    .line 226
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mElapsedTime:J

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mLastFrameTime:J

    .line 228
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->fireTransitionStart(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V

    goto :goto_0
.end method

.method private updateDrawableBounds()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 298
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 302
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 303
    iget-object v1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 305
    :cond_1
    return-void
.end method

.method private updateViewport(FF)V
    .locals 2
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    const/4 v1, 0x0

    .line 290
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 291
    return-void
.end method


# virtual methods
.method public getTransGen()Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransGen:Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 167
    .local v3, "d":Landroid/graphics/drawable/Drawable;
    iget-boolean v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mPaused:Z

    if-nez v9, :cond_1

    if-eqz v3, :cond_1

    .line 168
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 169
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->updateDrawableBounds()V

    .line 209
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mLastFrameTime:J

    .line 210
    const-wide/16 v9, 0x10

    invoke-virtual {p0, v9, v10}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->postInvalidateDelayed(J)V

    .line 212
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    return-void

    .line 170
    :cond_2
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->hasBounds()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 171
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    if-nez v9, :cond_3

    .line 172
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {p0, v9}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->startNewTransition(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    .line 175
    :cond_3
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    invoke-virtual {v9}, Lcom/biznessapps/widgets/animation/kenburns/Transition;->getDestinyRect()Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 176
    iget-wide v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mElapsedTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mLastFrameTime:J

    sub-long/2addr v11, v13

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mElapsedTime:J

    .line 177
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    iget-wide v10, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mElapsedTime:J

    invoke-virtual {v9, v10, v11}, Lcom/biznessapps/widgets/animation/kenburns/Transition;->getInterpolatedRect(J)Landroid/graphics/RectF;

    move-result-object v2

    .line 179
    .local v2, "currentRect":Landroid/graphics/RectF;
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v8, v9, v10

    .line 180
    .local v8, "widthScale":F
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v10

    div-float v4, v9, v10

    .line 182
    .local v4, "heightScale":F
    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 184
    .local v0, "currRectToDrwScale":F
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mViewportRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v10

    div-float v1, v9, v10

    .line 186
    .local v1, "currRectToVpScale":F
    mul-float v5, v0, v1

    .line 188
    .local v5, "totalScale":F
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    iget v10, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v9, v10

    mul-float v6, v5, v9

    .line 189
    .local v6, "translX":F
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->centerY()F

    move-result v9

    iget v10, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v9, v10

    mul-float v7, v5, v9

    .line 193
    .local v7, "translY":F
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9}, Landroid/graphics/Matrix;->reset()V

    .line 194
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v10, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    neg-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mDrawableRect:Landroid/graphics/RectF;

    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v11

    neg-float v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 195
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v5, v5}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 196
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v9, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 198
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v9}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 201
    iget-wide v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mElapsedTime:J

    iget-object v11, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    invoke-virtual {v11}, Lcom/biznessapps/widgets/animation/kenburns/Transition;->getDuration()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-ltz v9, :cond_0

    .line 202
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    invoke-direct {p0, v9}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->fireTransitionEnd(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V

    .line 203
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {p0, v9}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->startNewTransition(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    goto/16 :goto_0

    .line 206
    .end local v0    # "currRectToDrwScale":F
    .end local v1    # "currRectToVpScale":F
    .end local v2    # "currentRect":Landroid/graphics/RectF;
    .end local v4    # "heightScale":F
    .end local v5    # "totalScale":F
    .end local v6    # "translX":F
    .end local v7    # "translY":F
    .end local v8    # "widthScale":F
    :cond_4
    iget-object v9, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mCurrentTrans:Lcom/biznessapps/widgets/animation/kenburns/Transition;

    invoke-direct {p0, v9}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->fireTransitionEnd(Lcom/biznessapps/widgets/animation/kenburns/Transition;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 161
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->restart()V

    .line 162
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mPaused:Z

    .line 328
    return-void
.end method

.method public restart()V
    .locals 4

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->getWidth()I

    move-result v1

    .line 236
    .local v1, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->getHeight()I

    move-result v0

    .line 238
    .local v0, "height":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    int-to-float v2, v1

    int-to-float v3, v0

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->updateViewport(FF)V

    .line 242
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->updateDrawableBounds()V

    .line 243
    iget-object v2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {p0, v2}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->startNewTransition(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mPaused:Z

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mLastFrameTime:J

    .line 338
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->invalidate()V

    .line 339
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;

    .prologue
    .line 116
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->handleImageChange()V

    .line 118
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 0
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .param p2, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 121
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 122
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 123
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->handleImageChange()V

    .line 151
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 154
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 155
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->handleImageChange()V

    .line 129
    return-void
.end method

.method public setImageResource(ILcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 132
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 133
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->setImageResource(I)V

    .line 134
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 138
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 139
    invoke-direct {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->handleImageChange()V

    .line 140
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "direction"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 143
    iput-object p2, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .line 144
    invoke-virtual {p0, p1}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->setImageURI(Landroid/net/Uri;)V

    .line 145
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 97
    return-void
.end method

.method public setTransGen(Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;)V
    .locals 0
    .param p1, "transGen"    # Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransGen:Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    .line 348
    return-void
.end method

.method public setTransitionGenerator(Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;)V
    .locals 1
    .param p1, "transgen"    # Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mTransGen:Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;

    .line 281
    iget-object v0, p0, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->mAnimationDirection:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    invoke-direct {p0, v0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->startNewTransition(Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)V

    .line 282
    return-void
.end method

.method public setVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    packed-switch p1, :pswitch_data_0

    .line 109
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->pause()V

    .line 112
    :goto_0
    return-void

    .line 106
    :pswitch_0
    invoke-virtual {p0}, Lcom/biznessapps/widgets/animation/kenburns/KenBurnsView;->resume()V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
