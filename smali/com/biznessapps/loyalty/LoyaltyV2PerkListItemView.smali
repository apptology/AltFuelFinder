.class public Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;
.super Landroid/widget/FrameLayout;
.source "LoyaltyV2PerkListItemView.java"


# instance fields
.field private mBTRedeem:Landroid/widget/Button;

.field private mEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

.field private mIVPerkThumbnail:Lcom/biznessapps/widgets/LoaderImageView;

.field private mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

.field private mPerkIconView:Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

.field private mPerkItemRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

.field private mRedeemClickListener:Landroid/view/View$OnClickListener;

.field private mTVPerkDescription:Landroid/widget/TextView;

.field private mTVPerkName:Landroid/widget/TextView;

.field private mTVPerkPoint:Landroid/widget/TextView;

.field private mUiSettings:Lcom/biznessapps/api/UiSettings;

.field private mVGRoot:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 131
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mRedeemClickListener:Landroid/view/View$OnClickListener;

    .line 42
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->initView()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mRedeemClickListener:Landroid/view/View$OnClickListener;

    .line 48
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->initView()V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;)Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerkItemRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    return-object v0
.end method

.method private applyStyle()V
    .locals 5

    .prologue
    .line 68
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    if-eqz v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v1

    .line 70
    .local v1, "dataContainerColor":I
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v1, v3}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 71
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 73
    sget v2, Lcom/biznessapps/layout/R$id;->data_container:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .local v0, "dataContainer":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mBTRedeem:Landroid/widget/Button;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 77
    .end local v0    # "dataContainer":Landroid/view/ViewGroup;
    .end local v1    # "dataContainerColor":I
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/biznessapps/layout/R$layout;->loyalty_v2_perk_item_row:I

    invoke-static {v0, v1, p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    .line 54
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->ivPerkThumbnail:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/widgets/LoaderImageView;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mIVPerkThumbnail:Lcom/biznessapps/widgets/LoaderImageView;

    .line 55
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->perkIconView:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerkIconView:Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mTVPerkName:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvPerkDescription:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mTVPerkDescription:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->tvPerkPoint:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mTVPerkPoint:Landroid/widget/TextView;

    .line 60
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mVGRoot:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->btRedeem:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mBTRedeem:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mBTRedeem:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mRedeemClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->applyStyle()V

    .line 65
    return-void
.end method


# virtual methods
.method public setOnRedeemClickListener(Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerkItemRedeemClickListener:Lcom/biznessapps/loyalty/OnPerkItemRedeemClickListener;

    .line 101
    return-void
.end method

.method public setPerk(Lcom/biznessapps/loyalty/LoyaltyV2Entity;Lcom/biznessapps/loyalty/LoyaltyV2Perk;Lcom/biznessapps/api/UiSettings;)V
    .locals 4
    .param p1, "entity"    # Lcom/biznessapps/loyalty/LoyaltyV2Entity;
    .param p2, "perk"    # Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 80
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 82
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    .line 83
    iput-object p2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 84
    iput-object p3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mUiSettings:Lcom/biznessapps/api/UiSettings;

    .line 86
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerkIconView:Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v0, v3, p3}, Lcom/biznessapps/loyalty/LoyaltyV2PerkIconView;->setPerk(Lcom/biznessapps/loyalty/LoyaltyV2Perk;Lcom/biznessapps/api/UiSettings;)V

    .line 88
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->applyStyle()V

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isAvailable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p2, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isConsumed:Z

    if-nez v0, :cond_1

    .line 91
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mBTRedeem:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 96
    :goto_1
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->updateUI()V

    .line 97
    return-void

    :cond_0
    move v0, v2

    .line 80
    goto :goto_0

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mBTRedeem:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateUI()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 105
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mIVPerkThumbnail:Lcom/biznessapps/widgets/LoaderImageView;

    sget v3, Lcom/biznessapps/layout/R$drawable;->loyalty_white_border_round_rect:I

    invoke-virtual {v2, v3, v6}, Lcom/biznessapps/widgets/LoaderImageView;->setImageBitmap(IZ)V

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZImageViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZImageViewStyle;

    move-result-object v2

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$color;->light_grey:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mIVPerkThumbnail:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/common/style/BZImageViewStyle;->apply(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 120
    :goto_0
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mTVPerkName:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mTVPerkDescription:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const-string v2, "[%s %s]"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    iget v5, v5, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->totalPoints:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mEntity:Lcom/biznessapps/loyalty/LoyaltyV2Entity;

    iget-object v4, v4, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->unitShortHand:Ljava/lang/String;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "point":Ljava/lang/String;
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mTVPerkPoint:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    return-void

    .line 109
    .end local v1    # "point":Ljava/lang/String;
    :cond_0
    new-instance v0, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v0}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 110
    .local v0, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mIVPerkThumbnail:Lcom/biznessapps/widgets/LoaderImageView;

    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 111
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setTint(Lcom/biznessapps/utils/google/caching/ImageWorker$TintContainer;)V

    .line 112
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v0, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 114
    invoke-virtual {v0, v5}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageFormType(I)V

    .line 115
    invoke-virtual {v0, v6}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 116
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mIVPerkThumbnail:Lcom/biznessapps/widgets/LoaderImageView;

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2PerkListItemView;->mPerk:Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/biznessapps/widgets/LoaderImageView;->setImageDrawable(Ljava/lang/String;Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    goto :goto_0
.end method
