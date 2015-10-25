.class public Lcom/biznessapps/coupons/ActivitiesAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ActivitiesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/coupons/ActivityEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final GPS_TYPE:I = 0x0

.field public static final LOYALTY_TYPE:I = 0x2

.field public static final QR_TYPE:I = 0x1


# instance fields
.field private isAdvancedLoyalty:Z

.field private loyaltyV2UnitType:Ljava/lang/String;

.field private type:I


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
            "Lcom/biznessapps/coupons/ActivityEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->activities_item:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->isAdvancedLoyalty:Z

    .line 36
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 15
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    if-nez p2, :cond_3

    .line 51
    iget-object v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v11, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->layoutItemResourceId:I

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance v4, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    invoke-direct {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;-><init>()V

    .line 54
    .local v4, "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    sget v10, Lcom/biznessapps/layout/R$id;->name_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setTextViewTitle(Landroid/widget/TextView;)V

    .line 55
    sget v10, Lcom/biznessapps/layout/R$id;->content_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setBottomTextView(Landroid/widget/TextView;)V

    .line 56
    sget v10, Lcom/biznessapps/layout/R$id;->row_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v4, v10}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->setImageView(Landroid/widget/ImageView;)V

    .line 57
    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/coupons/ActivityEntity;

    .line 64
    .local v5, "item":Lcom/biznessapps/coupons/ActivityEntity;
    if-eqz v5, :cond_2

    .line 65
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getName()Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "name":Ljava/lang/String;
    const-string v10, "Anonymous"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 67
    invoke-static {}, Lcom/biznessapps/localization/StringsSource;->getInstance()Lcom/biznessapps/localization/StringsSource;

    move-result-object v10

    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/biznessapps/localization/StringsSource;->getValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 69
    :cond_0
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getAction()I

    move-result v2

    .line 70
    .local v2, "actionType":I
    const/4 v1, 0x0

    .line 71
    .local v1, "actionName":Ljava/lang/String;
    iget v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->type:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_d

    .line 72
    if-nez v2, :cond_9

    .line 73
    iget-boolean v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->isAdvancedLoyalty:Z

    if-nez v10, :cond_7

    .line 75
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$string;->completed_stamp:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "format":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getSequence()I

    move-result v8

    .line 77
    .local v8, "sequence":I
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_1st:I

    :goto_1
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "sequencValue":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getSequence()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .end local v3    # "format":Ljava/lang/String;
    .end local v7    # "sequencValue":Ljava/lang/String;
    .end local v8    # "sequence":I
    :goto_2
    invoke-virtual {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v10

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v10

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    sget v10, Lcom/biznessapps/layout/R$id;->time_text_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 123
    .local v9, "timeView":Landroid/widget/TextView;
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getDate()Ljava/util/Date;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/biznessapps/utils/DateUtils;->getStringInterval(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    :cond_1
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 127
    iget-object v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getAvatarUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 132
    :goto_3
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->hasColor()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 133
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getItemColor()I

    move-result v10

    invoke-virtual {p0, v10}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getItemTextColor()I

    move-result v10

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getTextViewTitle()Landroid/widget/TextView;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-virtual {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getBottomTextView()Landroid/widget/TextView;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    aput-object v9, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/biznessapps/coupons/ActivitiesAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 137
    .end local v1    # "actionName":Ljava/lang/String;
    .end local v2    # "actionType":I
    .end local v6    # "name":Ljava/lang/String;
    .end local v9    # "timeView":Landroid/widget/TextView;
    :cond_2
    return-object p2

    .line 59
    .end local v4    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    .end local v5    # "item":Lcom/biznessapps/coupons/ActivityEntity;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;

    .restart local v4    # "holder":Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;
    goto/16 :goto_0

    .line 77
    .restart local v1    # "actionName":Ljava/lang/String;
    .restart local v2    # "actionType":I
    .restart local v3    # "format":Ljava/lang/String;
    .restart local v5    # "item":Lcom/biznessapps/coupons/ActivityEntity;
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v8    # "sequence":I
    :cond_4
    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_2nd:I

    goto/16 :goto_1

    :cond_5
    const/4 v10, 0x3

    if-ne v8, v10, :cond_6

    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_3rd:I

    goto/16 :goto_1

    :cond_6
    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_4th:I

    goto/16 :goto_1

    .line 83
    .end local v3    # "format":Ljava/lang/String;
    .end local v8    # "sequence":I
    :cond_7
    iget-object v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->loyaltyV2UnitType:Ljava/lang/String;

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_4
    invoke-static {v10}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 84
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$string;->completed_v2_stamp:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getPoints()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    iget-object v14, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->loyaltyV2UnitType:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 83
    :cond_8
    const/4 v10, 0x0

    goto :goto_4

    .line 87
    :cond_9
    const/4 v10, 0x1

    if-ne v2, v10, :cond_c

    .line 88
    iget-boolean v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->isAdvancedLoyalty:Z

    if-nez v10, :cond_a

    .line 90
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$string;->redeemed_loyalty:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .restart local v3    # "format":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    goto/16 :goto_2

    .line 94
    .end local v3    # "format":Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->loyaltyV2UnitType:Ljava/lang/String;

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    :goto_5
    invoke-static {v10}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$string;->redeemed_perk:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v6, v12, v13

    const/4 v13, 0x1

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getPerk()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x2

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getPoints()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x3

    iget-object v14, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->loyaltyV2UnitType:Ljava/lang/String;

    aput-object v14, v12, v13

    invoke-static {v10, v11, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 94
    :cond_b
    const/4 v10, 0x0

    goto :goto_5

    .line 99
    :cond_c
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$string;->reward_loyalty:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 100
    .restart local v3    # "format":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 101
    goto/16 :goto_2

    .line 103
    .end local v3    # "format":Ljava/lang/String;
    :cond_d
    if-nez v2, :cond_12

    .line 105
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    iget v10, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->type:I

    if-nez v10, :cond_e

    sget v10, Lcom/biznessapps/layout/R$string;->completed_checkin:I

    :goto_6
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 106
    .restart local v3    # "format":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getSequence()I

    move-result v8

    .line 107
    .restart local v8    # "sequence":I
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v10, 0x1

    if-ne v8, v10, :cond_f

    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_1st:I

    :goto_7
    invoke-virtual {v11, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 110
    .restart local v7    # "sequencValue":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v5}, Lcom/biznessapps/coupons/ActivityEntity;->getSequence()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 111
    goto/16 :goto_2

    .line 105
    .end local v3    # "format":Ljava/lang/String;
    .end local v7    # "sequencValue":Ljava/lang/String;
    .end local v8    # "sequence":I
    :cond_e
    sget v10, Lcom/biznessapps/layout/R$string;->completed_scans:I

    goto :goto_6

    .line 107
    .restart local v3    # "format":Ljava/lang/String;
    .restart local v8    # "sequence":I
    :cond_f
    const/4 v10, 0x2

    if-ne v8, v10, :cond_10

    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_2nd:I

    goto :goto_7

    :cond_10
    const/4 v10, 0x3

    if-ne v8, v10, :cond_11

    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_3rd:I

    goto :goto_7

    :cond_11
    sget v10, Lcom/biznessapps/layout/R$string;->coupon_state_4th:I

    goto :goto_7

    .line 111
    .end local v3    # "format":Ljava/lang/String;
    .end local v8    # "sequence":I
    :cond_12
    const/4 v10, 0x1

    if-ne v2, v10, :cond_13

    .line 112
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$string;->unlocked_coupon:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 113
    .restart local v3    # "format":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 114
    goto/16 :goto_2

    .line 115
    .end local v3    # "format":Ljava/lang/String;
    :cond_13
    invoke-virtual {p0}, Lcom/biznessapps/coupons/ActivitiesAdapter;->getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$string;->redeemed_coupon:I

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 116
    .restart local v3    # "format":Ljava/lang/String;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 129
    .end local v3    # "format":Ljava/lang/String;
    .restart local v9    # "timeView":Landroid/widget/TextView;
    :cond_14
    invoke-virtual {v4}, Lcom/biznessapps/common/adapters/ListItemHolder$CommonItem;->getImageView()Landroid/widget/ImageView;

    move-result-object v10

    sget v11, Lcom/biznessapps/layout/R$drawable;->ic_anonymous_avatar:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method public setLoyaltyV2UnitType(Ljava/lang/String;)V
    .locals 1
    .param p1, "unitType"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->loyaltyV2UnitType:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->isAdvancedLoyalty:Z

    .line 45
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/biznessapps/coupons/ActivitiesAdapter;->type:I

    .line 40
    return-void
.end method
