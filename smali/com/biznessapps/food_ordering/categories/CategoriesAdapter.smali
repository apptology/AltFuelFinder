.class public Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "CategoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$1;,
        Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private squareSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p4, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/entities/CategoryEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity;>;"
    invoke-direct {p0, p1, p2, p4, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 21
    const/4 v2, 0x0

    iput v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->squareSize:I

    .line 26
    sget v2, Lcom/biznessapps/layout/R$layout;->fo_category_item:I

    if-ne v2, p4, :cond_0

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$dimen;->common_padding_small0:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 30
    .local v1, "tabMargin":I
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v2

    mul-int/lit8 v3, v1, 0x3

    sub-int v0, v2, v3

    .line 31
    .local v0, "fullWidht":I
    div-int/lit8 v2, v0, 0x2

    iput v2, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->squareSize:I

    .line 33
    .end local v0    # "fullWidht":I
    .end local v1    # "tabMargin":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 38
    if-nez p2, :cond_2

    .line 39
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v5, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->layoutItemResourceId:I

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 40
    new-instance v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;

    invoke-direct {v0, v6}, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$1;)V

    .line 42
    .local v0, "holder":Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;
    sget v4, Lcom/biznessapps/layout/R$id;->container:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->backgroundView:Landroid/view/View;

    .line 43
    sget v4, Lcom/biznessapps/layout/R$id;->shadow_container:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->shadowView:Landroid/view/View;

    .line 44
    sget v4, Lcom/biznessapps/layout/R$id;->title_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 45
    sget v4, Lcom/biznessapps/layout/R$id;->items_count_view:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->itemsCountView:Landroid/widget/TextView;

    .line 47
    iget v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->squareSize:I

    if-lez v4, :cond_0

    .line 48
    iget-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->backgroundView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 49
    .local v2, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->squareSize:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 50
    iget v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->squareSize:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 51
    iget-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->shadowView:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .end local v2    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/entities/CategoryEntity;

    .line 61
    .local v1, "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    if-eqz v1, :cond_1

    .line 62
    iget-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    iget-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->itemsCountView:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getTotalItems()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance v3, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v3}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 66
    .local v3, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v4, v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;->backgroundView:Landroid/view/View;

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 67
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/entities/CategoryEntity;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 68
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 69
    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 70
    iget-object v4, p0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v4, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 72
    .end local v3    # "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    :cond_1
    return-object p2

    .line 56
    .end local v0    # "holder":Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/food_ordering/entities/CategoryEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/food_ordering/categories/CategoriesAdapter$ViewHolder;
    goto :goto_0
.end method
