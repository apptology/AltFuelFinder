.class public Lcom/biznessapps/utils/HeaderUtils;
.super Ljava/lang/Object;
.source "HeaderUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V
    .locals 4
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "dataContainerColor"    # I
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 17
    sget v3, Lcom/biznessapps/layout/R$id;->data_container:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 18
    .local v1, "dataContainer":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 21
    sget v3, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 22
    .local v2, "header":Landroid/widget/TextView;
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    sget v3, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 26
    .local v0, "arrow":Landroid/widget/ImageView;
    invoke-static {v0, p0, p2}, Lcom/biznessapps/utils/HeaderUtils;->getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    invoke-static {v0, p0, p2}, Lcom/biznessapps/utils/HeaderUtils;->getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    return-void
.end method

.method private static getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;
    .locals 3
    .param p0, "arrowNavigation"    # Landroid/widget/ImageView;
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 53
    sget v2, Lcom/biznessapps/layout/R$id;->data_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 54
    .local v0, "dataContainer":Landroid/view/ViewGroup;
    sget v2, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 55
    .local v1, "headerContainer":Landroid/view/ViewGroup;
    new-instance v2, Lcom/biznessapps/utils/HeaderUtils$1;

    invoke-direct {v2, v0, v1, p0, p2}, Lcom/biznessapps/utils/HeaderUtils$1;-><init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    return-object v2
.end method

.method public static imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V
    .locals 5
    .param p0, "container"    # Landroid/view/ViewGroup;
    .param p1, "uiSettings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    const/16 v4, 0x78

    .line 35
    sget v2, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 37
    .local v1, "headerContainer":Landroid/view/ViewGroup;
    sget v2, Lcom/biznessapps/layout/R$drawable;->rs_header_opened:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 38
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 39
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 40
    sget v2, Lcom/biznessapps/layout/R$drawable;->rs_container_closed:I

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 41
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 44
    sget v2, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 45
    .local v0, "arrow":Landroid/widget/ImageView;
    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_up:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 46
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 47
    sget v2, Lcom/biznessapps/layout/R$drawable;->arrow_down:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 48
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getSectionTextColor()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 49
    return-void
.end method
