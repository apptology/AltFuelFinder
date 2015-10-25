.class public Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;
.super Ljava/lang/Object;
.source "MyTransitionGenerator.java"


# static fields
.field public static final DEFAULT_TRANSITION_DURATION:I = 0x2710


# instance fields
.field private mTransitionDuration:J

.field private mTransitionInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 34
    const-wide/16 v0, 0x2710

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;-><init>(JLandroid/view/animation/Interpolator;)V

    .line 35
    return-void
.end method

.method public constructor <init>(JLandroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "transitionDuration"    # J
    .param p3, "transitionInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->setTransitionDuration(J)V

    .line 39
    invoke-virtual {p0, p3}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->setTransitionInterpolator(Landroid/view/animation/Interpolator;)V

    .line 40
    return-void
.end method

.method private calcLeftRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5
    .param p1, "drawableBounds"    # Landroid/graphics/RectF;
    .param p2, "viewportRect"    # Landroid/graphics/RectF;

    .prologue
    const/4 v4, 0x0

    .line 76
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float v0, v2, v3

    .line 77
    .local v0, "aspRate":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v1, v2, v0

    .line 78
    .local v1, "viewportWidth":F
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-direct {v2, v4, v4, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method private calcRightRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 7
    .param p1, "drawableBounds"    # Landroid/graphics/RectF;
    .param p2, "viewportRect"    # Landroid/graphics/RectF;

    .prologue
    .line 82
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float v0, v3, v4

    .line 83
    .local v0, "aspRate":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v2, v3, v0

    .line 84
    .local v2, "viewportWidth":F
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v3

    sub-float v1, v3, v2

    .line 85
    .local v1, "dx":F
    new-instance v3, Landroid/graphics/RectF;

    const/4 v4, 0x0

    add-float v5, v1, v2

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v6

    invoke-direct {v3, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method


# virtual methods
.method public generateNextTransition(Landroid/graphics/RectF;Landroid/graphics/RectF;Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;)Lcom/biznessapps/widgets/animation/kenburns/Transition;
    .locals 6
    .param p1, "drawableBounds"    # Landroid/graphics/RectF;
    .param p2, "viewport"    # Landroid/graphics/RectF;
    .param p3, "animationDirection"    # Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    .prologue
    .line 45
    const/4 v1, 0x0

    .line 46
    .local v1, "srcRect":Landroid/graphics/RectF;
    const/4 v2, 0x0

    .line 48
    .local v2, "dstRect":Landroid/graphics/RectF;
    sget-object v3, Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;->LEFT_TO_RIGHT:Lcom/biznessapps/widgets/animation/kenburns/AnimationDirection;

    if-ne p3, v3, :cond_0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->calcLeftRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->calcRightRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    .line 55
    :goto_0
    new-instance v0, Lcom/biznessapps/widgets/animation/kenburns/Transition;

    iget-wide v3, p0, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->mTransitionDuration:J

    iget-object v5, p0, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->mTransitionInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/widgets/animation/kenburns/Transition;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;JLandroid/view/animation/Interpolator;)V

    .line 56
    .local v0, "result":Lcom/biznessapps/widgets/animation/kenburns/Transition;
    return-object v0

    .line 52
    .end local v0    # "result":Lcom/biznessapps/widgets/animation/kenburns/Transition;
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->calcRightRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->calcLeftRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    goto :goto_0
.end method

.method public setTransitionDuration(J)V
    .locals 0
    .param p1, "transitionDuration"    # J

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->mTransitionDuration:J

    .line 65
    return-void
.end method

.method public setTransitionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/widgets/animation/kenburns/MyTransitionGenerator;->mTransitionInterpolator:Landroid/view/animation/Interpolator;

    .line 73
    return-void
.end method
