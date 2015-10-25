.class public Lcom/biznessapps/food_ordering/ConfirmationFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ConfirmationFragment.java"


# instance fields
.field private cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

.field private orderMoreButton:Landroid/widget/Button;

.field private placeOrderButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/food_ordering/ConfirmationFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/ConfirmationFragment;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->bgUrl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_confirmation_page:I

    return v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 62
    sget v2, Lcom/biznessapps/layout/R$id;->order_more_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->orderMoreButton:Landroid/widget/Button;

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$color;->fo_buttom_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 65
    .local v0, "bgColorPassive":I
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    iget-object v4, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->orderMoreButton:Landroid/widget/Button;

    invoke-virtual {v2, v0, v3, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 67
    sget v2, Lcom/biznessapps/layout/R$id;->place_order_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->placeOrderButton:Landroid/widget/Button;

    .line 69
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->orderMoreButton:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;-><init>(Lcom/biznessapps/food_ordering/ConfirmationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->placeOrderButton:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/food_ordering/ConfirmationFragment$2;

    invoke-direct {v3, p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment$2;-><init>(Lcom/biznessapps/food_ordering/ConfirmationFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->placeOrderButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->fo_place_order:I

    invoke-static {v3, v4}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->orderMoreButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->fo_order_more:I

    invoke-static {v3, v4}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 101
    sget v2, Lcom/biznessapps/layout/R$id;->cart_updated_textview:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 102
    .local v1, "cartUpdatedView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$string;->fo_cart_updated:I

    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/FOUtils;->toUpperCase(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZTextViewStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZTextViewStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/biznessapps/common/style/BZTextViewStyle;->apply(ILjava/lang/Object;)V

    .line 105
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/biznessapps/food_ordering/FOUtils;->initCartViews(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    .line 106
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->settings:Lcom/biznessapps/api/UiSettings;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->placeOrderButton:Landroid/widget/Button;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 107
    return-void
.end method

.method protected loadBgUrl()V
    .locals 1

    .prologue
    .line 50
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCommonInfo()Lcom/biznessapps/food_ordering/entities/CommonInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/entities/CommonInfo;->getBackground()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->bgUrl:Ljava/lang/String;

    .line 51
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->loadBgUrl()V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 30
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 31
    iget-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 32
    invoke-virtual {p0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->loadBgUrl()V

    .line 33
    iget-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->stopAnim()V

    .line 45
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onPause()V

    .line 46
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment;->cartAnimation:Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;->startAnim()V

    .line 40
    return-void
.end method
