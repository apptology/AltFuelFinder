.class public Lcom/braintreepayments/api/dropin/view/LoadingHeader;
.super Landroid/widget/RelativeLayout;
.source "LoadingHeader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;
    }
.end annotation


# instance fields
.field private mCurrentState:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

.field private mHeaderMessage:Landroid/widget/TextView;

.field private mLoadingSpinner:Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;

.field private mStatusIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/braintreepayments/api/dropin/view/LoadingHeader;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private findView(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget v0, Lcom/braintreepayments/api/dropin/R$layout;->bt_loading_header:I

    invoke-static {p1, v0, p0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_header_loading_spinner:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mLoadingSpinner:Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;

    .line 49
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_header_status_icon:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/braintreepayments/api/dropin/R$id;->bt_header_message:I

    invoke-direct {p0, v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->findView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    .line 51
    return-void
.end method


# virtual methods
.method public getCurrentState()Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mCurrentState:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    return-object v0
.end method

.method public setError(Ljava/lang/String;)V
    .locals 11
    .param p1, "errorMessage"    # Ljava/lang/String;

    .prologue
    const-wide/16 v9, 0x1f4

    const/16 v5, 0x8

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 83
    sget-object v4, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->ERROR:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    iput-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mCurrentState:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    .line 85
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mLoadingSpinner:Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;

    invoke-virtual {v4, v5}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->setVisibility(I)V

    .line 87
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 88
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/braintreepayments/api/dropin/R$color;->bt_red:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setBackgroundColor(I)V

    .line 91
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    sget v5, Lcom/braintreepayments/api/dropin/R$drawable;->bt_error:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 95
    .local v0, "fadeIn":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 96
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 97
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 99
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 100
    .local v1, "fadeInAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 101
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 102
    new-instance v4, Lcom/braintreepayments/api/dropin/view/LoadingHeader$1;

    invoke-direct {v4, p0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader$1;-><init>(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 117
    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 118
    .local v2, "fadeOut":Landroid/view/animation/Animation;
    new-instance v4, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    invoke-virtual {v2, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 121
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 122
    .local v3, "fadeOutAnimation":Landroid/view/animation/AnimationSet;
    invoke-virtual {v3, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 123
    invoke-virtual {v3, v6}, Landroid/view/animation/AnimationSet;->setRepeatMode(I)V

    .line 124
    new-instance v4, Lcom/braintreepayments/api/dropin/view/LoadingHeader$2;

    invoke-direct {v4, p0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader$2;-><init>(Lcom/braintreepayments/api/dropin/view/LoadingHeader;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 140
    iget-object v4, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 142
    invoke-virtual {p0, v6}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public setLoading()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 58
    sget-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->LOADING:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mCurrentState:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    .line 60
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/api/dropin/R$color;->bt_white:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setBackgroundColor(I)V

    .line 64
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mLoadingSpinner:Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;

    invoke-virtual {v0, v2}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->setVisibility(I)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setVisibility(I)V

    .line 67
    return-void
.end method

.method public setSuccessful()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 70
    sget-object v0, Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;->SUCCESS:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    iput-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mCurrentState:Lcom/braintreepayments/api/dropin/view/LoadingHeader$HeaderState;

    .line 72
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mLoadingSpinner:Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;

    invoke-virtual {v0, v1}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mHeaderMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    invoke-virtual {p0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/braintreepayments/api/dropin/R$color;->bt_blue:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setBackgroundColor(I)V

    .line 76
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    sget v1, Lcom/braintreepayments/api/dropin/R$drawable;->bt_success:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    iget-object v0, p0, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->mStatusIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 79
    invoke-virtual {p0, v2}, Lcom/braintreepayments/api/dropin/view/LoadingHeader;->setVisibility(I)V

    .line 80
    return-void
.end method
