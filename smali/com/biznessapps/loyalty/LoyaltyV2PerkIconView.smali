.class public Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;
.super Landroid/widget/FrameLayout;
.source "LoyaltyV2PerkIconView.java"


# instance fields
.field private mAvailableColor:I

.field private mIVInsideBorder:Landroid/widget/ImageView;

.field private mIVOutsideBorder:Landroid/widget/ImageView;

.field private mIVOverlay:Landroid/widget/ImageView;

.field private mIVPerkIcon:Lcom/biznessapps/widgets/LoaderImageView;

.field private mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

.field private mRotateAnimation:Landroid/view/animation/RotateAnimation;

.field private mUnavailableColor:I

.field private mVGBorder:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->initView()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->initView()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->initView()V

    .line 56
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$layout;->loyalty_v2_perk_icon:I

    invoke-static {v1, v2, p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 61
    .local v0, "rootView":Landroid/view/ViewGroup;
    sget v1, Lcom/biznessapps/layout/R$id;->vgBorder:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mVGBorder:Landroid/view/ViewGroup;

    .line 62
    sget v1, Lcom/biznessapps/layout/R$id;->ivOutsideBorder:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOutsideBorder:Landroid/widget/ImageView;

    .line 63
    sget v1, Lcom/biznessapps/layout/R$id;->ivInsideBorder:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVInsideBorder:Landroid/widget/ImageView;

    .line 64
    sget v1, Lcom/biznessapps/layout/R$id;->ivOverlay:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOverlay:Landroid/widget/ImageView;

    .line 66
    sget v1, Lcom/biznessapps/layout/R$id;->ivPerkIcon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/widgets/LoaderImageView;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVPerkIcon:Lcom/biznessapps/widgets/LoaderImageView;

    .line 67
    return-void
.end method

.method private startRotatingAnimation()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    .line 131
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b40000    # 360.0f

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 134
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 135
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 136
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 137
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mVGBorder:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 139
    :cond_0
    return-void
.end method

.method private stopRotatingAnimation()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0}, Landroid/view/animation/RotateAnimation;->cancel()V

    .line 145
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mRotateAnimation:Landroid/view/animation/RotateAnimation;

    .line 146
    return-void
.end method


# virtual methods
.method public setPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;Lcom/biznessapps/api/UiSettings;)V
    .locals 5
    .param p1, "perk"    # Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/4 v4, 0x1

    .line 70
    if-eqz p1, :cond_0

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 72
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    .line 73
    .local v0, "availableColor":I
    const/4 v2, -0x1

    .line 75
    .local v2, "unavailableColor":I
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 76
    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mAvailableColor:I

    .line 77
    iput v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mUnavailableColor:I

    .line 80
    new-instance v1, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 81
    .local v1, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVPerkIcon:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 82
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 83
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget-object v3, v3, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->gaugeIcon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 85
    invoke-virtual {v1, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 86
    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;)V

    invoke-virtual {v1, v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setLoadCallback(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadCallback;)V

    .line 94
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVPerkIcon:Lcom/biznessapps/widgets/LoaderImageView;

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget-object v4, v4, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->gaugeIcon:Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 96
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->updateUI()V

    .line 97
    return-void

    .line 70
    .end local v0    # "availableColor":I
    .end local v1    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    .end local v2    # "unavailableColor":I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public updateUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOverlay:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget-boolean v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isAvailable:Z

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOutsideBorder:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_available:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVInsideBorder:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_available:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 106
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget-boolean v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isConsumed:Z

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOverlay:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_available_consumed_overlay:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->stopRotatingAnimation()V

    .line 114
    :goto_0
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mAvailableColor:I

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVInsideBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 128
    :goto_1
    return-void

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->startRotatingAnimation()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget-boolean v0, v0, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isConsumed:Z

    if-eqz v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOverlay:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_unavailable_consumed_overlay:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOverlay:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVOutsideBorder:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVInsideBorder:Landroid/widget/ImageView;

    sget v1, Lcom/biznessapps/layout/R$drawable;->loyalty_icon_perk_unavailable:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 125
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v0

    iget v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mUnavailableColor:I

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->mIVInsideBorder:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(ILjava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->stopRotatingAnimation()V

    goto :goto_1
.end method
