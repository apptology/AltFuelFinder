.class public Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;
.super Landroid/widget/FrameLayout;
.source "LoyaltyV2GaugeView.java"


# static fields
.field private static final GAUGE_CIRCLE_BAR_END_ANGLE:F = 330.0f

.field private static final GAUGE_CIRCLE_BAR_START_ANGLE:F = 210.0f

.field private static final GAUGE_CIRCLE_TOTAL_ANGLE:F = 240.0f

.field private static final IGNOREABLE_DIFF_ANGLE:I = 0x5

.field private static final SAME_POINT_PERK_STEP_ANGLE:I = 0x32


# instance fields
.field private mAvailablePerkBitmap:Landroid/graphics/Bitmap;

.field private mGaugeCircleBarWidth:I

.field private mGaugeHeight:I

.field private mGaugePaddingX:I

.field private mGaugePaddingY:I

.field private mGaugeWidth:I

.field private mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

.field private mPaint:Landroid/graphics/Paint;

.field private mPerkIconWidth:I

.field private mUISettings:Lcom/biznessapps/api/UiSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    .line 46
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->initView()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    .line 52
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->initView()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->initView()V

    .line 59
    return-void
.end method

.method private drawGaugeCircleBar(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x43700000    # 240.0f

    const/high16 v10, 0x43520000    # 210.0f

    const/high16 v2, -0x3cae0000    # -210.0f

    .line 205
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mUISettings:Lcom/biznessapps/api/UiSettings;

    if-nez v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 209
    :cond_0
    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeCircleBarWidth:I

    div-int/lit8 v6, v0, 0x2

    .line 210
    .local v6, "halfLineWidth":I
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lcom/biznessapps/layout/R$color;->gray:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugePaddingX:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    iget v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugePaddingY:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v7, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugePaddingX:I

    iget v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeWidth:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v6

    int-to-float v7, v7

    iget v8, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugePaddingY:I

    iget v9, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeHeight:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v6

    int-to-float v8, v8

    invoke-direct {v1, v0, v5, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 212
    .local v1, "rect":Landroid/graphics/RectF;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 215
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getAwardedValue()I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getMaxPerkValue()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v0, v5

    mul-float/2addr v0, v3

    sub-float v3, v10, v0

    .line 216
    .local v3, "angle":F
    const/high16 v0, -0x3e100000    # -30.0f

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 217
    sub-float v3, v10, v3

    .line 218
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mUISettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 219
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_available:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mAvailablePerkBitmap:Landroid/graphics/Bitmap;

    .line 66
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mAvailablePerkBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    .line 67
    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeCircleBarWidth:I

    .line 68
    return-void
.end method

.method private relayoutGauge(FFFFI)I
    .locals 22
    .param p1, "pivotX"    # F
    .param p2, "pivotY"    # F
    .param p3, "radius"    # F
    .param p4, "startAngle"    # F
    .param p5, "startIndex"    # I

    .prologue
    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    if-nez v1, :cond_1

    .line 171
    .end local p5    # "startIndex":I
    :cond_0
    :goto_0
    return p5

    .line 131
    .restart local p5    # "startIndex":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getDefinedLoyaltyPerks()Ljava/util/List;

    move-result-object v14

    .line 132
    .local v14, "definedPerks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV2Perk;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, p5

    if-ge v0, v1, :cond_0

    .line 138
    const/16 v17, 0x0

    .line 139
    .local v17, "latestAngle":F
    const/16 v18, 0x0

    .line 140
    .local v18, "latestPerkView":Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;
    const/16 v21, 0x0

    .line 141
    .local v21, "samePointCount":I
    move/from16 v16, p5

    .local v16, "i":I
    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_5

    .line 142
    move/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 144
    .local v2, "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    iget v1, v2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->totalPoints:I

    int-to-float v0, v1

    move/from16 v20, v0

    .line 145
    .local v20, "perkPoint":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getMaxPerkValue()I

    move-result v1

    int-to-float v1, v1

    div-float v1, v20, v1

    const/high16 v7, 0x43700000    # 240.0f

    mul-float/2addr v1, v7

    sub-float v12, p4, v1

    .line 146
    .local v12, "angle":F
    const/4 v1, 0x0

    cmpg-float v1, v12, v1

    if-gez v1, :cond_2

    .line 147
    const/high16 v1, 0x43b40000    # 360.0f

    add-float/2addr v12, v1

    .line 150
    :cond_2
    sub-float v1, v17, v12

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 152
    .local v15, "diffAngle":F
    const/4 v1, 0x0

    cmpl-float v1, v17, v1

    if-eqz v1, :cond_4

    const/high16 v1, 0x40a00000    # 5.0f

    cmpg-float v1, v15, v1

    if-gez v1, :cond_4

    .line 153
    add-int/lit8 v21, v21, 0x1

    .line 154
    if-eqz v18, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 156
    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout$LayoutParams;

    .line 157
    .local v19, "params":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v19

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v3, v1

    .line 158
    .local v3, "newPivotX":F
    move-object/from16 v0, v19

    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v1, v7

    int-to-float v4, v1

    .line 159
    .local v4, "newPivotY":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    int-to-float v1, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v1, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeCircleBarWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    sub-float v5, v1, v7

    .line 160
    .local v5, "newRadius":F
    mul-int/lit8 v1, v21, 0x32

    int-to-float v1, v1

    sub-float v6, p4, v1

    .line 162
    .local v6, "newAngle":F
    const/4 v7, 0x1

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->layoutPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;FFFFZ)Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    .line 141
    .end local v3    # "newPivotX":F
    .end local v4    # "newPivotY":F
    .end local v5    # "newRadius":F
    .end local v6    # "newAngle":F
    .end local v19    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 154
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 164
    :cond_4
    const/16 v21, 0x0

    .line 166
    const/4 v13, 0x1

    move-object/from16 v7, p0

    move-object v8, v2

    move/from16 v9, p1

    move/from16 v10, p2

    move/from16 v11, p3

    invoke-virtual/range {v7 .. v13}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->layoutPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;FFFFZ)Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    move-result-object v18

    .line 167
    move/from16 v17, v12

    goto :goto_3

    .line 171
    .end local v2    # "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .end local v12    # "angle":F
    .end local v15    # "diffAngle":F
    .end local v20    # "perkPoint":F
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 p5, v1, -0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->drawGaugeCircleBar(Landroid/graphics/Canvas;)V

    .line 201
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 202
    return-void
.end method

.method public layoutPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;FFFFZ)Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;
    .locals 11
    .param p1, "perk"    # Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .param p2, "pivotX"    # F
    .param p3, "pivotY"    # F
    .param p4, "radius"    # F
    .param p5, "angle"    # F
    .param p6, "topPosition"    # Z

    .prologue
    .line 175
    new-instance v2, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;-><init>(Landroid/content/Context;)V

    .line 177
    .local v2, "perkView":Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;
    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mUISettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2, p1, v5}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->setPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;Lcom/biznessapps/api/UiSettings;)V

    .line 179
    const/high16 v5, 0x43340000    # 180.0f

    div-float v5, p5, v5

    float-to-double v5, v5

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v7

    double-to-float v0, v5

    .line 180
    .local v0, "mathAngle":F
    float-to-double v5, p2

    float-to-double v7, p4

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-int v5, v5

    iget v6, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v3, v5, v6

    .line 181
    .local v3, "x":I
    float-to-double v5, p3

    float-to-double v7, p4

    float-to-double v9, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    iget v6, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    div-int/lit8 v6, v6, 0x2

    sub-int v4, v5, v6

    .line 182
    .local v4, "y":I
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x2

    const/4 v6, -0x2

    invoke-direct {v1, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 185
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 186
    invoke-virtual {v2, v1}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 188
    if-eqz p6, :cond_0

    .line 189
    invoke-virtual {p0, v2}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->addView(Landroid/view/View;)V

    .line 194
    :goto_0
    return-object v2

    .line 191
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 89
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->relayoutGauge()V

    goto :goto_0
.end method

.method public relayoutGauge()V
    .locals 13

    .prologue
    const-wide/high16 v11, 0x3ff8000000000000L    # 1.5

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getMeasuredWidth()I

    move-result v8

    .line 97
    .local v8, "width":I
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getMeasuredHeight()I

    move-result v7

    .line 99
    .local v7, "height":I
    int-to-double v4, v8

    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    int-to-double v9, v0

    mul-double/2addr v9, v11

    sub-double/2addr v4, v9

    double-to-int v0, v4

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeWidth:I

    .line 100
    int-to-double v4, v7

    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPerkIconWidth:I

    int-to-double v9, v0

    mul-double/2addr v9, v11

    sub-double/2addr v4, v9

    double-to-int v0, v4

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeHeight:I

    .line 101
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getMeasuredWidth()I

    move-result v0

    iget v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeWidth:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugePaddingX:I

    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->getMeasuredWidth()I

    move-result v0

    iget v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeWidth:I

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugePaddingY:I

    .line 104
    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeHeight:I

    if-gtz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 108
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->removeAllViews()V

    .line 110
    div-int/lit8 v0, v8, 0x2

    int-to-float v1, v0

    .line 111
    .local v1, "pivotX":F
    div-int/lit8 v0, v7, 0x2

    int-to-float v2, v0

    .line 112
    .local v2, "pivotY":F
    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeCircleBarWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v0, v4

    int-to-float v3, v0

    .line 114
    .local v3, "radius":F
    const/high16 v4, 0x43520000    # 210.0f

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->relayoutGauge(FFFFI)I

    .line 116
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    .line 117
    .local v6, "handler":Landroid/os/Handler;
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setLoyaltyEntity(Lcom/biznessapps/loyalty/LoyaltyV2Entity;)V
    .locals 0
    .param p1, "entity"    # Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mLoyaltyEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    .line 73
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->relayoutGauge()V

    .line 74
    return-void
.end method

.method public setUiSettings(Lcom/biznessapps/api/UiSettings;)V
    .locals 2
    .param p1, "uiSettings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mUISettings:Lcom/biznessapps/api/UiSettings;

    .line 79
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mGaugeCircleBarWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2GaugeView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 83
    return-void
.end method
