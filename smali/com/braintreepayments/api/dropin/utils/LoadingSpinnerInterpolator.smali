.class public Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;
.super Ljava/lang/Object;
.source "LoadingSpinnerInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final A_X:F = 1.8699999f

.field private static final A_Y:F = -1.865f

.field private static final B_X:F = -2.8049998f

.field private static final B_Y:F = 2.73f

.field private static final C_X:F = 1.935f

.field private static final C_Y:F = 0.135f

.field private static final END_X:F = 0.355f

.field private static final END_Y:F = 1.0f

.field private static final START_X:F = 0.645f

.field private static final START_Y:F = 0.045f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getBezierCoordinateX(F)F
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 47
    const v0, 0x3ff7ae14    # 1.935f

    const v1, -0x3fcc7ae2    # -2.8049998f

    const v2, 0x3fef5c28    # 1.8699999f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method private getXDerivate(F)F
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 43
    const v0, 0x3ff7ae14    # 1.935f

    const v1, -0x3f4c7ae2    # -5.6099997f

    const v2, 0x40b3851e    # 5.6099997f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    return v0
.end method

.method private getXForTime(F)F
    .locals 7
    .param p1, "time"    # F

    .prologue
    .line 30
    move v1, p1

    .line 32
    .local v1, "x":F
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    .line 33
    invoke-direct {p0, v1}, Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;->getBezierCoordinateX(F)F

    move-result v3

    sub-float v2, v3, p1

    .line 34
    .local v2, "z":F
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 39
    .end local v2    # "z":F
    :cond_0
    return v1

    .line 37
    .restart local v2    # "z":F
    :cond_1
    invoke-direct {p0, v1}, Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;->getXDerivate(F)F

    move-result v3

    div-float v3, v2, v3

    sub-float/2addr v1, v3

    .line 32
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getBezierCoordinateY(F)F
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 26
    const v0, 0x3e0a3d71    # 0.135f

    const v1, 0x402eb852    # 2.73f

    const v2, -0x401147ae    # -1.865f

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public getInterpolation(F)F
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;->getXForTime(F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;->getBezierCoordinateY(F)F

    move-result v0

    return v0
.end method
