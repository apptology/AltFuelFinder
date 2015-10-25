.class public Lcom/biznessapps/coupons/CouponAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "CouponAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/coupons/CouponAdapter$1;,
        Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/coupons/CouponEntity;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "layoutId"    # I
    .param p4, "settings"    # Lcom/biznessapps/api/UiSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;I",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 30
    if-nez p2, :cond_3

    .line 31
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/coupons/CouponAdapter;->inflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/biznessapps/coupons/CouponAdapter;->layoutItemResourceId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 32
    new-instance v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;

    const/4 v13, 0x0

    invoke-direct {v5, v13}, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;-><init>(Lcom/biznessapps/coupons/CouponAdapter$1;)V

    .line 34
    .local v5, "holder":Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;
    sget v13, Lcom/biznessapps/layout/R$id;->coupon_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    .line 35
    sget v13, Lcom/biznessapps/layout/R$id;->date_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 36
    sget v13, Lcom/biznessapps/layout/R$id;->distance_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    .line 37
    sget v13, Lcom/biznessapps/layout/R$id;->location_ping:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->locationIcon:Landroid/widget/ImageView;

    .line 38
    sget v13, Lcom/biznessapps/layout/R$id;->icon_clock_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->iconClockView:Landroid/widget/ImageView;

    .line 39
    sget v13, Lcom/biznessapps/layout/R$id;->icon_count_view:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->iconCountView:Landroid/widget/ImageView;

    .line 40
    sget v13, Lcom/biznessapps/layout/R$id;->additional_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    .line 41
    sget v13, Lcom/biznessapps/layout/R$id;->checkin_text:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    iput-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->checkinView:Landroid/widget/TextView;

    .line 42
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->locationIcon:Landroid/widget/ImageView;

    if-eqz v13, :cond_0

    .line 43
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/coupons/CouponAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v13}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v13

    iget-object v14, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->locationIcon:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 45
    :cond_0
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/biznessapps/coupons/CouponAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/coupons/CouponEntity;

    .line 51
    .local v7, "item":Lcom/biznessapps/coupons/CouponEntity;
    if-eqz v7, :cond_7

    .line 52
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    sget v13, Lcom/biznessapps/layout/R$id;->coupon_image_container:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 55
    .local v2, "couponImageContainer":Landroid/view/ViewGroup;
    if-eqz v2, :cond_9

    .line 56
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$string;->checkin:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    const/4 v10, 0x0

    .line 59
    .local v10, "minDistance":F
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLongitude()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 60
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLongitude()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/biznessapps/location/LocationUtils;->getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;)F

    move-result v10

    .line 62
    :cond_1
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLocations()Ljava/util/List;

    move-result-object v9

    .line 63
    .local v9, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    if-eqz v9, :cond_5

    .line 64
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/biznessapps/location/entities/LocationEntity;

    .line 65
    .local v8, "location":Lcom/biznessapps/location/entities/LocationEntity;
    invoke-virtual {v8}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/biznessapps/location/LocationUtils;->getDistanceToPlace(Ljava/lang/String;Ljava/lang/String;)F

    move-result v3

    .line 66
    .local v3, "distance":F
    const/4 v13, 0x0

    cmpg-float v13, v10, v13

    if-gtz v13, :cond_4

    .line 67
    move v10, v3

    goto :goto_1

    .line 47
    .end local v2    # "couponImageContainer":Landroid/view/ViewGroup;
    .end local v3    # "distance":F
    .end local v5    # "holder":Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .end local v8    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .end local v9    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    .end local v10    # "minDistance":F
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;

    .restart local v5    # "holder":Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;
    goto :goto_0

    .line 68
    .restart local v2    # "couponImageContainer":Landroid/view/ViewGroup;
    .restart local v3    # "distance":F
    .restart local v6    # "i$":Ljava/util/Iterator;
    .restart local v7    # "item":Lcom/biznessapps/coupons/CouponEntity;
    .restart local v8    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    .restart local v9    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    .restart local v10    # "minDistance":F
    :cond_4
    cmpg-float v13, v3, v10

    if-gez v13, :cond_2

    .line 69
    move v10, v3

    goto :goto_1

    .line 73
    .end local v3    # "distance":F
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "location":Lcom/biznessapps/location/entities/LocationEntity;
    :cond_5
    const/4 v13, 0x0

    cmpl-float v13, v10, v13

    if-lez v13, :cond_8

    .line 74
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getDistanceType()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v10, v14, v15}, Lcom/biznessapps/location/LocationUtils;->getDistanceValue(FLjava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .end local v9    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    .end local v10    # "minDistance":F
    :goto_2
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v13

    if-nez v13, :cond_b

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v13

    if-nez v13, :cond_b

    .line 87
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$string;->ongoing:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    :goto_3
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->hasColor()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 107
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getItemColor()I

    move-result v13

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/biznessapps/coupons/CouponAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getItemTextColor()I

    move-result v13

    iget-object v14, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->iconClockView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getItemTextColor()I

    move-result v13

    iget-object v14, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->iconCountView:Landroid/widget/ImageView;

    invoke-virtual {v14}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 112
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    if-eqz v13, :cond_f

    .line 113
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getItemTextColor()I

    move-result v13

    const/4 v14, 0x5

    new-array v14, v14, [Landroid/widget/TextView;

    const/4 v15, 0x0

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->checkinView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x4

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/biznessapps/coupons/CouponAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 121
    :cond_6
    :goto_4
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 122
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTarget()I

    move-result v13

    if-nez v13, :cond_10

    .line 123
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->checkinView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$string;->unlocked:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    .end local v2    # "couponImageContainer":Landroid/view/ViewGroup;
    :cond_7
    :goto_5
    return-object p2

    .line 76
    .restart local v2    # "couponImageContainer":Landroid/view/ViewGroup;
    .restart local v9    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    .restart local v10    # "minDistance":F
    :cond_8
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->distanceView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$string;->n_a:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 79
    .end local v9    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/location/entities/LocationEntity;>;"
    .end local v10    # "minDistance":F
    :cond_9
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v1

    .line 80
    .local v1, "checkingTargetMax":I
    if-nez v1, :cond_a

    .line 81
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 83
    :cond_a
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$string;->scan:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 89
    .end local v1    # "checkingTargetMax":I
    :cond_b
    const/4 v12, 0x0

    .line 90
    .local v12, "startDateValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 92
    .local v4, "endDateValue":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_d

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_d

    .line 93
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 94
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 103
    :cond_c
    :goto_6
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    const-string v14, "%s - %s"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const/16 v16, 0x1

    aput-object v4, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 95
    :cond_d
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v13

    if-nez v13, :cond_e

    .line 96
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    sget v14, Lcom/biznessapps/layout/R$string;->ongoing:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 98
    :cond_e
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v13

    if-nez v13, :cond_c

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v13

    if-eqz v13, :cond_c

    .line 99
    const-string v12, ""

    .line 100
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v13

    invoke-static {v13}, Lcom/biznessapps/utils/DateUtils;->getStandartShortDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    .line 116
    .end local v4    # "endDateValue":Ljava/lang/String;
    .end local v12    # "startDateValue":Ljava/lang/String;
    :cond_f
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getItemTextColor()I

    move-result v13

    const/4 v14, 0x4

    new-array v14, v14, [Landroid/widget/TextView;

    const/4 v15, 0x0

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->checkinView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x2

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x3

    iget-object v0, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Lcom/biznessapps/coupons/CouponAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    goto/16 :goto_4

    .line 126
    :cond_10
    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getLastRedeemedTime()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-eqz v13, :cond_11

    .line 127
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->checkinView:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v14

    sget v15, Lcom/biznessapps/layout/R$string;->redeemed:I

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    const-string v14, " - "

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 130
    :cond_11
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->checkinView:Landroid/widget/TextView;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v15

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTarget()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponAdapter;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v7, v13}, Lcom/biznessapps/coupons/CouponsListFragment;->getNextCheckinTime(Lcom/biznessapps/coupons/CouponEntity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 133
    .local v11, "nextCheckinTime":Ljava/lang/String;
    if-eqz v11, :cond_7

    .line 134
    iget-object v13, v5, Lcom/biznessapps/coupons/CouponAdapter$ViewHolder;->clockView:Landroid/widget/TextView;

    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method
