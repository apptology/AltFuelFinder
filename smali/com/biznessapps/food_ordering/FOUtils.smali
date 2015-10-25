.class public Lcom/biznessapps/food_ordering/FOUtils;
.super Ljava/lang/Object;
.source "FOUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;)V
    .locals 3
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$color;->fo_item_background:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 83
    .local v0, "color":I
    invoke-static {p0, p1, v0}, Lcom/biznessapps/food_ordering/FOUtils;->addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;I)V

    .line 84
    return-void
.end method

.method public static addLineSeparator(Landroid/widget/ListView;Landroid/content/Context;I)V
    .locals 2
    .param p0, "listView"    # Landroid/widget/ListView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "color"    # I

    .prologue
    .line 87
    const/4 v0, 0x2

    .line 88
    .local v0, "lineSize":I
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 90
    return-void
.end method

.method public static getDeviceDateFormat(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 75
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    .line 76
    .local v1, "is24hoursFormat":Z
    new-instance v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_0

    const-string v2, "H:mm"

    :goto_0
    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    .local v0, "dateFormatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    .end local v0    # "dateFormatter":Ljava/text/SimpleDateFormat;
    :cond_0
    const-string v2, "h:mm a"

    goto :goto_0
.end method

.method public static getFormattedValue(FLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "price"    # F
    .param p1, "currencySign"    # Ljava/lang/String;

    .prologue
    .line 180
    const-string v0, "%s %.2f"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoundValue(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    const/high16 v1, 0x42c80000    # 100.0f

    .line 176
    mul-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    return v0
.end method

.method private static initCartButton(Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 63
    sget v1, Lcom/biznessapps/layout/R$id;->cart_view:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 64
    .local v0, "cartView":Landroid/widget/ImageView;
    new-instance v1, Lcom/biznessapps/food_ordering/FOUtils$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/food_ordering/FOUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public static initCartViews(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/biznessapps/food_ordering/cart/CartTextAnimation;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 39
    invoke-static {p0, p1}, Lcom/biznessapps/food_ordering/FOUtils;->initCartButton(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    .line 41
    sget v3, Lcom/biznessapps/layout/R$id;->cart_price_view:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 42
    .local v1, "priceView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->cart_items_quantity_view:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 43
    .local v2, "quantityView":Landroid/widget/TextView;
    sget v3, Lcom/biznessapps/layout/R$id;->cart_container:I

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    .local v0, "cartContainer":Landroid/view/ViewGroup;
    new-instance v3, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/biznessapps/food_ordering/cart/CartTextAnimation;-><init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/ViewGroup;)V

    return-object v3
.end method

.method public static openCartView(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 49
    invoke-static {}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getInstance()Lcom/biznessapps/food_ordering/FoodOrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/FoodOrderingManager;->getCart()Lcom/biznessapps/food_ordering/entities/CartEntity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/entities/CartEntity;->getItems()Ljava/util/List;

    move-result-object v1

    .line 50
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/food_ordering/entities/CategoryEntity$Item;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FOOD_ORDER_CART_CONTROLLER"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "FOOD_ORDER_CART_CONTROLLER"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    const-string v2, "TAB_LABEL"

    sget v3, Lcom/biznessapps/layout/R$string;->fo_cart:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 57
    :cond_0
    sget v2, Lcom/biznessapps/layout/R$string;->fo_cart_is_empty:I

    invoke-static {p0, v2}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static plugTextView(Landroid/view/View;Landroid/widget/TextView;Z)V
    .locals 2
    .param p0, "bgContainer"    # Landroid/view/View;
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isRequired"    # Z
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 154
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 156
    :cond_0
    if-eqz p2, :cond_1

    sget v0, Lcom/biznessapps/layout/R$string;->required:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setHint(I)V

    .line 157
    invoke-static {p1}, Lcom/biznessapps/utils/ViewUtils;->changeDefaultCursorColor(Landroid/widget/TextView;)V

    .line 158
    return-void

    .line 156
    :cond_1
    sget v0, Lcom/biznessapps/layout/R$string;->optional:I

    goto :goto_0
.end method

.method public static setBackground(Landroid/widget/ImageView;Landroid/content/Context;Lcom/biznessapps/api/UiSettings;)V
    .locals 4
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$color;->fo_item_background:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 94
    .local v1, "unselectedColor":I
    invoke-virtual {p2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    .line 95
    .local v0, "selectedColor":I
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->getButtonDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    return-void
.end method

.method public static setSectionHeader(Lcom/biznessapps/api/UiSettings;Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "stringId"    # I

    .prologue
    .line 161
    invoke-virtual {p1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {p1}, Lcom/biznessapps/common/style/BZSectionStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZSectionStyle;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/biznessapps/common/style/BZSectionStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/view/View;)V

    .line 163
    return-void
.end method

.method public static toUpperCase(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs updateButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;Z[Landroid/widget/Button;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "dontResetState"    # Z
    .param p3, "buttons"    # [Landroid/widget/Button;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 99
    aget-object v0, p3, v9

    .line 100
    .local v0, "activeButton":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v10

    if-nez v10, :cond_0

    move v7, v8

    .line 104
    .local v7, "shouldActivate":Z
    :goto_0
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v2

    .line 105
    .local v2, "bgColor":I
    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v3

    .line 106
    .local v3, "bgTextColor":I
    move-object v1, p3

    .local v1, "arr$":[Landroid/widget/Button;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v4, v1, v5

    .line 107
    .local v4, "button":Landroid/widget/Button;
    invoke-virtual {v4, v9}, Landroid/widget/Button;->setSelected(Z)V

    .line 108
    invoke-static {p0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v10

    invoke-virtual {v10, v2, v3, v4}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 106
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Landroid/widget/Button;
    .end local v2    # "bgColor":I
    .end local v3    # "bgTextColor":I
    .end local v4    # "button":Landroid/widget/Button;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .end local v7    # "shouldActivate":Z
    :cond_0
    move v7, v9

    .line 100
    goto :goto_0

    .line 110
    .restart local v1    # "arr$":[Landroid/widget/Button;
    .restart local v2    # "bgColor":I
    .restart local v3    # "bgTextColor":I
    .restart local v5    # "i$":I
    .restart local v6    # "len$":I
    .restart local v7    # "shouldActivate":Z
    :cond_1
    if-nez v7, :cond_2

    if-eqz p2, :cond_3

    .line 111
    :cond_2
    invoke-static {p0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v9

    invoke-virtual {v9, p1, v0}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 112
    invoke-virtual {v0, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 114
    :cond_3
    return v7
.end method

.method public static varargs updateButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "buttons"    # [Landroid/widget/Button;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 135
    aget-object v0, p2, v8

    .line 136
    .local v0, "activeButton":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    .line 139
    .local v6, "shouldActivate":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$color;->fo_buttom_color:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 140
    .local v2, "bgColorPassive":I
    move-object v1, p2

    .local v1, "arr$":[Landroid/widget/Button;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 141
    .local v3, "button":Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 142
    invoke-static {p0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v9

    const/high16 v10, -0x1000000

    invoke-virtual {v9, v2, v10, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 140
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Landroid/widget/Button;
    .end local v2    # "bgColorPassive":I
    .end local v3    # "button":Landroid/widget/Button;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "shouldActivate":Z
    :cond_0
    move v6, v8

    .line 136
    goto :goto_0

    .line 144
    .restart local v1    # "arr$":[Landroid/widget/Button;
    .restart local v2    # "bgColorPassive":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "shouldActivate":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 145
    invoke-static {p0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    invoke-virtual {v8, p1, v0}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 146
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 148
    :cond_2
    return v6
.end method

.method public static varargs updateTipButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "settings"    # Lcom/biznessapps/api/UiSettings;
    .param p2, "buttons"    # [Landroid/widget/Button;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 118
    aget-object v0, p2, v8

    .line 119
    .local v0, "activeButton":Landroid/widget/Button;
    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v9

    if-nez v9, :cond_0

    move v6, v7

    .line 122
    .local v6, "shouldActivate":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/biznessapps/layout/R$color;->fo_item_background:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 123
    .local v2, "bgColorPassive":I
    move-object v1, p2

    .local v1, "arr$":[Landroid/widget/Button;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v3, v1, v4

    .line 124
    .local v3, "button":Landroid/widget/Button;
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setSelected(Z)V

    .line 125
    invoke-static {p0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v9

    invoke-virtual {p1}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v10

    invoke-virtual {v9, v2, v10, v3}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(IILandroid/widget/Button;)V

    .line 123
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v1    # "arr$":[Landroid/widget/Button;
    .end local v2    # "bgColorPassive":I
    .end local v3    # "button":Landroid/widget/Button;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "shouldActivate":Z
    :cond_0
    move v6, v8

    .line 119
    goto :goto_0

    .line 127
    .restart local v1    # "arr$":[Landroid/widget/Button;
    .restart local v2    # "bgColorPassive":I
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    .restart local v6    # "shouldActivate":Z
    :cond_1
    if-eqz v6, :cond_2

    .line 128
    invoke-static {p0}, Lcom/biznessapps/common/style/BZButtonStyle;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/style/BZButtonStyle;

    move-result-object v8

    invoke-virtual {v8, p1, v0}, Lcom/biznessapps/common/style/BZButtonStyle;->apply(Lcom/biznessapps/api/UiSettings;Landroid/widget/Button;)V

    .line 129
    invoke-virtual {v0, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 131
    :cond_2
    return v6
.end method
