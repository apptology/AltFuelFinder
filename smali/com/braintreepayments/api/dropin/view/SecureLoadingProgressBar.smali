.class public Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;
.super Landroid/widget/RelativeLayout;
.source "SecureLoadingProgressBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->init(Landroid/content/Context;)V

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
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 29
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 30
    .local v0, "fillParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    sget v4, Lcom/braintreepayments/api/dropin/R$layout;->bt_secure_loading_progress_bar:I

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 33
    .local v2, "loadingSpinner":Landroid/widget/ProgressBar;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/braintreepayments/api/dropin/R$drawable;->bt_loading_animation:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    new-instance v4, Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;

    invoke-direct {v4}, Lcom/braintreepayments/api/dropin/utils/LoadingSpinnerInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 37
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {p0, v2}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->addView(Landroid/view/View;)V

    .line 40
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    .local v1, "imageParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 43
    .local v3, "lockView":Landroid/widget/ImageView;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/braintreepayments/api/dropin/R$drawable;->bt_secure:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/4 v4, 0x4

    invoke-virtual {v3, v7, v7, v7, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 46
    invoke-virtual {p0, v3}, Lcom/braintreepayments/api/dropin/view/SecureLoadingProgressBar;->addView(Landroid/view/View;)V

    .line 47
    return-void
.end method
