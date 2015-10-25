.class public Lcom/biznessapps/fan_wall/LoadMoreBuilder;
.super Ljava/lang/Object;
.source "LoadMoreBuilder.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLoadMoreButton(Landroid/content/Context;Ljava/lang/Runnable;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/widgets/LoadMoreButton;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "clickAction"    # Ljava/lang/Runnable;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 23
    new-instance v1, Lcom/biznessapps/widgets/LoadMoreButton;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/LoadMoreButton;-><init>(Landroid/content/Context;)V

    .line 24
    .local v1, "loadMoreButton":Lcom/biznessapps/widgets/LoadMoreButton;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$dimen;->big_button_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 25
    .local v0, "height":I
    new-instance v2, Landroid/widget/AbsListView$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 26
    .local v2, "lp":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/LoadMoreButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    sget v3, Lcom/biznessapps/layout/R$string;->load_more:I

    invoke-virtual {v1, v3}, Lcom/biznessapps/widgets/LoadMoreButton;->setText(I)V

    .line 28
    sget v3, Lcom/biznessapps/layout/R$drawable;->medium_button_long:I

    invoke-virtual {v1, v3}, Lcom/biznessapps/widgets/LoadMoreButton;->setBackgroundResource(I)V

    .line 29
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/biznessapps/widgets/LoadMoreButton;->setTextColor(I)V

    .line 30
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    invoke-virtual {v1}, Lcom/biznessapps/widgets/LoadMoreButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 31
    new-instance v3, Lcom/biznessapps/fan_wall/LoadMoreBuilder$1;

    invoke-direct {v3, p1}, Lcom/biznessapps/fan_wall/LoadMoreBuilder$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v3}, Lcom/biznessapps/widgets/LoadMoreButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    return-object v1
.end method
