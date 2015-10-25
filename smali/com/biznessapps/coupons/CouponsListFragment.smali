.class public abstract Lcom/biznessapps/coupons/CouponsListFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragment;
.source "CouponsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragment",
        "<",
        "Lcom/biznessapps/coupons/CouponEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

.field private preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

.field private updateNextTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/biznessapps/coupons/CouponsListFragment$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/coupons/CouponsListFragment$1;-><init>(Lcom/biznessapps/coupons/CouponsListFragment;)V

    iput-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/coupons/CouponsListFragment;)Lcom/biznessapps/coupons/CouponEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/coupons/CouponsListFragment;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    return-object v0
.end method

.method private getFilteredData(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v0, "filteredData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/coupons/CouponsListFragment;->searchQuery:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    move-object v0, p1

    .line 221
    :cond_0
    return-object v0

    .line 211
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/coupons/CouponEntity;

    .line 212
    .local v2, "item":Lcom/biznessapps/coupons/CouponEntity;
    invoke-virtual {v2}, Lcom/biznessapps/coupons/CouponEntity;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 213
    .local v3, "title":Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 214
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/coupons/CouponsListFragment;->searchQuery:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 215
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static getNextCheckinTime(Lcom/biznessapps/coupons/CouponEntity;Landroid/content/Context;)Ljava/lang/String;
    .locals 17
    .param p0, "coupon"    # Lcom/biznessapps/coupons/CouponEntity;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v5, 0x0

    .line 40
    .local v5, "nextCheckinText":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponEntity;->getLastCheckinTime()J

    move-result-wide v15

    sub-long v11, v13, v15

    .line 41
    .local v11, "timeFromLastCheckin":J
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinInterval()I

    move-result v13

    const v14, 0x36ee80

    mul-int/2addr v13, v14

    int-to-long v6, v13

    .line 42
    .local v6, "nextCheckinTime":J
    sub-long v9, v6, v11

    .line 44
    .local v9, "restTime":J
    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-lez v13, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/coupons/CouponEntity;->getCheckinTargetMax()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_0

    .line 45
    const-wide/32 v13, 0xea60

    div-long v13, v9, v13

    long-to-int v8, v13

    .line 46
    .local v8, "numberOfMinutes":I
    const/16 v13, 0x3c

    if-le v8, v13, :cond_1

    .line 47
    div-int/lit8 v1, v8, 0x3c

    .line 48
    .local v1, "hours":I
    rem-int/lit8 v4, v8, 0x3c

    .line 49
    .local v4, "minutes":I
    sget v13, Lcom/biznessapps/layout/R$string;->checkin_hours_left:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "hoursLeftText":Ljava/lang/String;
    sget v13, Lcom/biznessapps/layout/R$string;->checkin_mins_left:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "minsLeftText":Ljava/lang/String;
    const-string v13, "%d %s %d %s"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v2, v14, v15

    const/4 v15, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x3

    aput-object v3, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .end local v1    # "hours":I
    .end local v2    # "hoursLeftText":Ljava/lang/String;
    .end local v3    # "minsLeftText":Ljava/lang/String;
    .end local v4    # "minutes":I
    .end local v8    # "numberOfMinutes":I
    :cond_0
    :goto_0
    return-object v5

    .line 53
    .restart local v8    # "numberOfMinutes":I
    :cond_1
    sget v13, Lcom/biznessapps/layout/R$string;->checkin_mins_left:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 54
    .restart local v3    # "minsLeftText":Ljava/lang/String;
    const-string v13, "%d %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v3, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private isCorrectItem(Lcom/biznessapps/coupons/CouponEntity;)Z
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/coupons/CouponEntity;

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected doCouponsPrehandling(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/coupons/CouponEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "parsedCoupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    const/4 v7, 0x0

    .line 132
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v4, "resultItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/coupons/CouponEntity;

    .line 136
    .local v1, "coupon":Lcom/biznessapps/coupons/CouponEntity;
    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 139
    .local v2, "currentDate":Ljava/util/Date;
    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponEntity;->getStartDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 144
    :cond_1
    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Lcom/biznessapps/coupons/CouponEntity;->getEndDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 149
    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 152
    .end local v1    # "coupon":Lcom/biznessapps/coupons/CouponEntity;
    .end local v2    # "currentDate":Ljava/util/Date;
    :cond_3
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 153
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v5}, Lcom/biznessapps/coupons/CouponEntity;->getBackground()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "background":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 155
    new-instance v1, Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {v1}, Lcom/biznessapps/coupons/CouponEntity;-><init>()V

    .line 156
    .restart local v1    # "coupon":Lcom/biznessapps/coupons/CouponEntity;
    invoke-virtual {v1, v0}, Lcom/biznessapps/coupons/CouponEntity;->setBackground(Ljava/lang/String;)V

    .line 157
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .end local v0    # "background":Ljava/lang/String;
    .end local v1    # "coupon":Lcom/biznessapps/coupons/CouponEntity;
    :cond_4
    :goto_1
    return-object v4

    .line 159
    .restart local v0    # "background":Ljava/lang/String;
    :cond_5
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v5, v0}, Lcom/biznessapps/coupons/CouponEntity;->setBackground(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected getCouponItemLayoutId()I
    .locals 1

    .prologue
    .line 106
    sget v0, Lcom/biznessapps/layout/R$layout;->qr_coupon_row:I

    return v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 102
    sget v0, Lcom/biznessapps/layout/R$layout;->search_list_layout:I

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/coupons/CouponsListFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected onListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/coupons/CouponEntity;

    .line 123
    .local v0, "item":Lcom/biznessapps/coupons/CouponEntity;
    invoke-virtual {p0, v0}, Lcom/biznessapps/coupons/CouponsListFragment;->startCouponDetailActivity(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 124
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 69
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onResume()V

    .line 70
    iget-boolean v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->updateNextTime:Z

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponsListFragment;->loadData()V

    .line 73
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->updateNextTime:Z

    .line 74
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponsListFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 75
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/coupons/CouponsListFragment;->onBackPressedListener:Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->addBackPressedListener(Lcom/biznessapps/common/activities/CommonFragmentActivity$BackPressed;)V

    .line 80
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragment;->onStop()V

    .line 81
    return-void
.end method

.method protected plugListView(Landroid/app/Activity;Z)V
    .locals 10
    .param p1, "holdActivity"    # Landroid/app/Activity;
    .param p2, "updateFromDB"    # Z

    .prologue
    const/4 v9, 0x0

    .line 167
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponsListFragment;->items:Ljava/util/List;

    invoke-direct {p0, v7}, Lcom/biznessapps/coupons/CouponsListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 168
    .local v2, "filteredItems":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    invoke-static {v2}, Lcom/biznessapps/utils/ApiUtils;->hasNotData(Ljava/util/List;)Z

    move-result v3

    .line 169
    .local v3, "hasNoData":Z
    if-eqz v3, :cond_0

    .line 170
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sget v8, Lcom/biznessapps/layout/R$string;->nothing_found:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/coupons/CouponsListFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 171
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 204
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/coupons/CouponEntity;

    invoke-direct {p0, v7}, Lcom/biznessapps/coupons/CouponsListFragment;->isCorrectItem(Lcom/biznessapps/coupons/CouponEntity;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 174
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/coupons/CouponEntity;

    .line 175
    .local v5, "item":Lcom/biznessapps/coupons/CouponEntity;
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/biznessapps/storage/StorageKeeper;->getCouponData(Ljava/lang/String;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    .line 176
    .local v0, "couponData":Lcom/biznessapps/coupons/CouponEntity;
    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {v0, v5}, Lcom/biznessapps/coupons/CouponEntity;->copyTo(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 179
    :cond_1
    invoke-virtual {p0, v5}, Lcom/biznessapps/coupons/CouponsListFragment;->startCouponDetailActivity(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 180
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponsListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto :goto_0

    .line 182
    .end local v0    # "couponData":Lcom/biznessapps/coupons/CouponEntity;
    .end local v5    # "item":Lcom/biznessapps/coupons/CouponEntity;
    :cond_2
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 183
    .local v6, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/CouponEntity;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/coupons/CouponEntity;

    .line 184
    .restart local v5    # "item":Lcom/biznessapps/coupons/CouponEntity;
    invoke-virtual {v5}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/biznessapps/coupons/CouponsListFragment;->itemId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 185
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    if-nez v7, :cond_3

    .line 186
    iput-object v5, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    .line 189
    :cond_3
    if-eqz p2, :cond_4

    .line 190
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v7

    invoke-virtual {v5}, Lcom/biznessapps/coupons/CouponEntity;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/biznessapps/storage/StorageKeeper;->getCouponData(Ljava/lang/String;)Lcom/biznessapps/coupons/CouponEntity;

    move-result-object v0

    .line 191
    .restart local v0    # "couponData":Lcom/biznessapps/coupons/CouponEntity;
    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {v0, v5}, Lcom/biznessapps/coupons/CouponEntity;->copyTo(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 195
    .end local v0    # "couponData":Lcom/biznessapps/coupons/CouponEntity;
    :cond_4
    invoke-virtual {p0, v5, v6}, Lcom/biznessapps/coupons/CouponsListFragment;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    .end local v5    # "item":Lcom/biznessapps/coupons/CouponEntity;
    :cond_5
    new-instance v1, Lcom/biznessapps/coupons/CouponAdapter;

    invoke-direct {p0, v6}, Lcom/biznessapps/coupons/CouponsListFragment;->getFilteredData(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponsListFragment;->getCouponItemLayoutId()I

    move-result v8

    iget-object v9, p0, Lcom/biznessapps/coupons/CouponsListFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v1, p1, v7, v8, v9}, Lcom/biznessapps/coupons/CouponAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 200
    .local v1, "ex":Lcom/biznessapps/coupons/CouponAdapter;
    iget-object v7, p0, Lcom/biznessapps/coupons/CouponsListFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v7, v1}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 201
    invoke-virtual {p0}, Lcom/biznessapps/coupons/CouponsListFragment;->initListViewListener()V

    goto/16 :goto_0
.end method

.method protected abstract startCouponDetailActivity(Lcom/biznessapps/coupons/CouponEntity;)V
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/biznessapps/coupons/CouponsListFragment;->plugListView(Landroid/app/Activity;Z)V

    .line 113
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {v0}, Lcom/biznessapps/coupons/CouponEntity;->isUseAgain()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/biznessapps/coupons/CouponEntity;->setUseAgain(Z)V

    .line 116
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponsListFragment;->preLoadedItem:Lcom/biznessapps/coupons/CouponEntity;

    invoke-virtual {p0, v0}, Lcom/biznessapps/coupons/CouponsListFragment;->startCouponDetailActivity(Lcom/biznessapps/coupons/CouponEntity;)V

    .line 118
    :cond_0
    return-void
.end method

.method protected useSearchBar()Z
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
