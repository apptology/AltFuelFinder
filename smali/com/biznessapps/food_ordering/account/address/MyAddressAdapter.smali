.class public Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "MyAddressAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$1;,
        Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/food_ordering/account/AccountEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/food_ordering/account/AccountEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/account/AccountEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->fo_my_address_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    .line 26
    if-nez p2, :cond_1

    .line 27
    iget-object v2, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;-><init>(Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$1;)V

    .line 29
    .local v0, "holder":Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->nickname_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->nicknameView:Landroid/widget/TextView;

    .line 30
    sget v2, Lcom/biznessapps/layout/R$id;->address_text_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    .line 31
    sget v2, Lcom/biznessapps/layout/R$id;->row_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 37
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/food_ordering/account/AccountEntity;

    .line 38
    .local v1, "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    iget-object v2, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->nicknameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v2, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getAddress1()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getItemTextColor()I

    move-result v2

    iget-object v3, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 43
    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/account/AccountEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->nicknameView:Landroid/widget/TextView;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;->addressView:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 45
    :cond_0
    return-object p2

    .line 34
    .end local v0    # "holder":Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/food_ordering/account/AccountEntity;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/food_ordering/account/address/MyAddressAdapter$ViewHolder;
    goto :goto_0
.end method
