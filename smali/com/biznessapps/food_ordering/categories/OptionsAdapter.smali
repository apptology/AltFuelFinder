.class public Lcom/biznessapps/food_ordering/categories/OptionsAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "OptionsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;,
        Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private currencySign:Ljava/lang/String;

.field private listener:Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p4, "currencySign"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_option_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 27
    iput-object p4, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->currencySign:Ljava/lang/String;

    .line 28
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;)Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/food_ordering/categories/OptionsAdapter;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->listener:Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    .line 37
    if-nez p2, :cond_0

    .line 38
    iget-object v3, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->layoutItemResourceId:I

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 39
    new-instance v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;

    invoke-direct {v1, v5}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;)V

    .line 40
    .local v1, "holder":Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;
    sget v3, Lcom/biznessapps/layout/R$id;->option_price_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 41
    sget v3, Lcom/biznessapps/layout/R$id;->option_name_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 42
    sget v3, Lcom/biznessapps/layout/R$id;->check_view:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->checkView:Landroid/widget/ImageView;

    .line 43
    iget-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    iget-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;

    .line 53
    .local v2, "item":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    iget-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getCharges()F

    move-result v4

    iget-object v5, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->currencySign:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/biznessapps/food_ordering/FOUtils;->getFormattedValue(FLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v3, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v0, v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;->checkView:Landroid/widget/ImageView;

    .line 56
    .local v0, "checkView":Landroid/widget/ImageView;
    new-instance v3, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$1;-><init>(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;Landroid/widget/ImageView;Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    new-instance v3, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$2;

    invoke-direct {v3, p0, v0}, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$2;-><init>(Lcom/biznessapps/food_ordering/categories/OptionsAdapter;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-object p2

    .line 48
    .end local v0    # "checkView":Landroid/widget/ImageView;
    .end local v1    # "holder":Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;
    .end local v2    # "item":Lcom/biznessapps/food_ordering/entities/OrderOptionEntity;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ViewHolder;
    goto :goto_0
.end method

.method public setListener(Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/food_ordering/categories/OptionsAdapter;->listener:Lcom/biznessapps/food_ordering/categories/OptionsAdapter$ClickListener;

    .line 32
    return-void
.end method
