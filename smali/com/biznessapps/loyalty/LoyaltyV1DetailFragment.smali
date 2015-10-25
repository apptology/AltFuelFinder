.class public Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;
.super Lcom/biznessapps/common/fragments/CommonListFragmentNew;
.source "LoyaltyV1DetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/fragments/CommonListFragmentNew",
        "<",
        "Lcom/biznessapps/coupons/ActivityEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMN_NUMBER:I = 0x5

.field private static final MAX_PERCENT_VALUE:I = 0x64

.field private static final MIN_PERCENT_VALUE:I = 0x0

.field private static final SEEKBAAR_WIDTH_FACTOR:F = 0.8f

.field private static final TEXT_WIDTH_OFFSET:I = 0x4


# instance fields
.field private actionType:I

.field private appliedCoupons:I

.field private arcCurValueView:Landroid/widget/TextView;

.field private arcMaxValueView:Landroid/widget/TextView;

.field private arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

.field private arcZeroValueView:Landroid/widget/TextView;

.field private areItemsApproved:Z

.field private cardContainer:Landroid/view/ViewGroup;

.field private headerView:Landroid/widget/ImageView;

.field private infoView:Landroid/widget/TextView;

.field private isNextCardFound:Z

.field private item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

.field private nextCardView:Landroid/widget/ImageView;

.field private postActivityButton:Landroid/widget/ImageView;

.field private postActivityCircleView:Landroid/widget/ImageView;

.field private seekBarWidth:I

.field private seekbar:Landroid/widget/SeekBar;

.field private seekbarCurrentValueView:Landroid/widget/TextView;

.field private shareButton:Landroid/widget/ImageView;

.field private socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

.field private stampCardButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->nextCardView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->isNextCardFound:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->loadCouponsData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/Runnable;
    .param p6, "x6"    # Ljava/lang/Runnable;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->setInitialStateForCoupon()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->tryToRedeem()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->doActionPosting()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityCircleView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->loadData()V

    return-void
.end method

.method static synthetic access$902(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I

    return p1
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/util/List;)V
    .locals 10
    .param p1, "cardContainer"    # Landroid/view/ViewGroup;
    .param p2, "row"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 498
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->loyalty_card_layout:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 500
    .local v4, "rowLayout":Landroid/view/ViewGroup;
    mul-int/lit8 v5, p2, 0x5

    .line 501
    .local v5, "startIndex":I
    add-int/lit8 v6, v5, 0x5

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v7

    if-le v6, v7, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .line 502
    .local v3, "endIndex":I
    :goto_0
    if-ge v5, v3, :cond_4

    .line 503
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/biznessapps/layout/R$layout;->loyalty_card_item_layout:I

    invoke-static {v6, v7}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 504
    .local v2, "columnLayout":Landroid/view/ViewGroup;
    invoke-virtual {v2, v8, v9, v8, v9}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 505
    sget v6, Lcom/biznessapps/layout/R$id;->loyalty_coupon_image:I

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 506
    .local v1, "columnImage":Landroid/widget/ImageView;
    invoke-interface {p3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 507
    .local v0, "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->isNextCardFound:Z

    if-nez v6, :cond_1

    .line 508
    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 509
    invoke-virtual {v0, v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setLocked(Z)V

    .line 511
    :cond_0
    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->nextCardView:Landroid/widget/ImageView;

    .line 512
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->isNextCardFound:Z

    .line 514
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 515
    sget v6, Lcom/biznessapps/layout/R$drawable;->loyalty_coupon_icon_active:I

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 516
    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v6}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v6

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_2
    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;

    invoke-direct {v6, p0, v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$7;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;Landroid/widget/ImageView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 578
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 502
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 501
    .end local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v1    # "columnImage":Landroid/widget/ImageView;
    .end local v2    # "columnLayout":Landroid/view/ViewGroup;
    .end local v3    # "endIndex":I
    :cond_3
    add-int/lit8 v3, v5, 0x5

    goto :goto_0

    .line 580
    .restart local v3    # "endIndex":I
    :cond_4
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 581
    return-void
.end method

.method private changeDisplayProgress(Z)V
    .locals 6
    .param p1, "shouldReset"    # Z

    .prologue
    const/4 v2, 0x0

    .line 584
    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    .line 585
    iget v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    mul-int/lit8 v1, v1, 0x64

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v1, v3

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 587
    .local v0, "percentValue":I
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->useGaugeOption()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcCurValueView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->showAsPercents()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

    iget v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/widgets/ArcSeekBar;->setCurrentProgress(I)V

    .line 606
    :cond_0
    return-void

    .line 584
    .end local v0    # "percentValue":I
    :cond_1
    iget v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 588
    .restart local v0    # "percentValue":I
    :cond_2
    const-string v1, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private checkLoyality(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "stamp"    # Z
    .param p2, "secretCode"    # Ljava/lang/String;
    .param p3, "numStamped"    # I
    .param p4, "action"    # Ljava/lang/String;
    .param p5, "successRunnable"    # Ljava/lang/Runnable;
    .param p6, "errorRunable"    # Ljava/lang/Runnable;

    .prologue
    .line 439
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 440
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "loyalty_id"

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    if-eqz p1, :cond_0

    .line 442
    const-string v2, "code"

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_0
    const-string v2, "num_stamped"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v2, "action"

    invoke-interface {v0, v2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    const-string v2, "platform"

    const-string v3, "android"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v2, "version"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/ViewUtils;->getProgressDialog(Landroid/content/Context;)Landroid/app/ProgressDialog;

    move-result-object v1

    .line 451
    .local v1, "progressDialog":Landroid/app/ProgressDialog;
    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    .line 452
    const-string v2, "loyalty_check.php"

    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;

    invoke-direct {v3, p0, p5, p6, v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$6;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V

    const/4 v4, 0x1

    invoke-static {v2, v0, v3, v4}, Lcom/biznessapps/api/AppHttpUtils;->executePostRequest(Ljava/lang/String;Ljava/util/Map;Lcom/biznessapps/api/AsyncCallback;Z)V

    .line 495
    return-void
.end method

.method private doActionPosting()V
    .locals 11

    .prologue
    .line 343
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 344
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->checkLogin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/SocialNetworkManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/social/SocialNetworkManager;->getLatestLoggedInSocialHandler()Lcom/biznessapps/common/social/CommonSocialNetworkHandler;

    move-result-object v10

    .line 346
    .local v10, "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserProfileURL()Ljava/lang/String;

    move-result-object v5

    .line 347
    .local v5, "avatarUrl":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserName()Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, "name":Ljava/lang/String;
    new-instance v0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$5;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    .line 364
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const-string v9, "post_loyalty_activity.php"

    .line 365
    .local v9, "postUrl":Ljava/lang/String;
    iget v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    add-int/lit8 v7, v2, 0x1

    .line 367
    .local v7, "sequence":I
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 368
    .local v8, "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "user_type"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getSocialType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v2, "user_id"

    invoke-virtual {v10}, Lcom/biznessapps/common/social/CommonSocialNetworkHandler;->getUserID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->actionType:I

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->tabId:Ljava/lang/String;

    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v9}, Lcom/biznessapps/api/AppHttpUtils;->postActivity(Lcom/biznessapps/api/AsyncCallback;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V

    .line 377
    .end local v0    # "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    .end local v1    # "name":Ljava/lang/String;
    .end local v5    # "avatarUrl":Ljava/lang/String;
    .end local v7    # "sequence":I
    .end local v8    # "moreParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v9    # "postUrl":Ljava/lang/String;
    .end local v10    # "socialHandler":Lcom/biznessapps/common/social/CommonSocialNetworkHandler;
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {v2}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;->openLoginDialog()V

    goto :goto_0
.end method

.method private initActivities()V
    .locals 7

    .prologue
    .line 318
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->activities_container:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 319
    .local v0, "activitiesContainer":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getOddRowColorTransparent()I

    move-result v1

    .line 320
    .local v1, "dataContainerColor":I
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/HeaderUtils;->customizeContainer(Landroid/view/ViewGroup;ILcom/biznessapps/api/UiSettings;)V

    .line 321
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v0, v2}, Lcom/biznessapps/utils/HeaderUtils;->imageContainerCustomization(Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)V

    .line 323
    sget v2, Lcom/biznessapps/layout/R$id;->header_container:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/biznessapps/layout/R$id;->header:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget v3, Lcom/biznessapps/layout/R$string;->activity:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 326
    new-instance v2, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$3;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$3;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Landroid/content/Context;)V

    invoke-direct {v2, v3, v4, v5}, Lcom/biznessapps/common/social/ui/SocialLoginPopupView;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/biznessapps/common/social/OnSocialLoginListener;)V

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->socialPopupView:Lcom/biznessapps/common/social/ui/SocialLoginPopupView;

    .line 333
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityButton:Landroid/widget/ImageView;

    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;

    invoke-direct {v3, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$4;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    return-void
.end method

.method private initDisplayProgressViews()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 259
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->useGaugeOption()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 260
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->arc_container:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 261
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->arc_values_container:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 262
    .local v3, "arcValuesContainer":Landroid/view/ViewGroup;
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->arc_seekbar:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/widgets/ArcSeekBar;

    iput-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

    .line 265
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

    invoke-virtual {v7}, Lcom/biznessapps/widgets/ArcSeekBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 266
    .local v1, "arcLp":Landroid/widget/FrameLayout$LayoutParams;
    const v5, 0x3fa66666    # 1.3f

    .line 267
    .local v5, "archWidthProportion":F
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getAppCore()Lcom/biznessapps/api/AppCore;

    move-result-object v7

    invoke-virtual {v7}, Lcom/biznessapps/api/AppCore;->getDeviceWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v5

    float-to-int v4, v7

    .line 269
    .local v4, "arcWidht":I
    div-int/lit8 v0, v4, 0x2

    .line 270
    .local v0, "arcHeight":I
    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 271
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 272
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/ArcSeekBar;->setMaxProgress(I)V

    .line 273
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/biznessapps/layout/R$color;->gray:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/ArcSeekBar;->setTrackColor(I)V

    .line 274
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcSeekBar:Lcom/biznessapps/widgets/ArcSeekBar;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/biznessapps/widgets/ArcSeekBar;->setProgressColor(I)V

    .line 275
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 276
    .local v2, "arcValueLp":Landroid/widget/LinearLayout$LayoutParams;
    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 277
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->arc_current_value_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcCurValueView:Landroid/widget/TextView;

    .line 278
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->arc_zero_value_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcZeroValueView:Landroid/widget/TextView;

    .line 279
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v8, Lcom/biznessapps/layout/R$id;->arc_max_value_view:I

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcMaxValueView:Landroid/widget/TextView;

    .line 280
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcCurValueView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 281
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcZeroValueView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcMaxValueView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v8}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 284
    iget v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    mul-int/lit8 v7, v7, 0x64

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    div-int/2addr v7, v8

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 285
    .local v6, "percentValue":I
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcCurValueView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->showAsPercents()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "%"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v7}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->showAsPercents()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 287
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcMaxValueView:Landroid/widget/TextView;

    const/16 v8, 0x64

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    .end local v0    # "arcHeight":I
    .end local v1    # "arcLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "arcValueLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "arcValuesContainer":Landroid/view/ViewGroup;
    .end local v4    # "arcWidht":I
    .end local v5    # "archWidthProportion":F
    .end local v6    # "percentValue":I
    :goto_1
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v7

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->stampCardButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/biznessapps/utils/CommonUtils;->overrideMediumButtonColor(ILandroid/graphics/drawable/Drawable;)V

    .line 315
    return-void

    .line 285
    .restart local v0    # "arcHeight":I
    .restart local v1    # "arcLp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v2    # "arcValueLp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v3    # "arcValuesContainer":Landroid/view/ViewGroup;
    .restart local v4    # "arcWidht":I
    .restart local v5    # "archWidthProportion":F
    .restart local v6    # "percentValue":I
    :cond_0
    const-string v7, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    iget v10, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 289
    :cond_1
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->arcMaxValueView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 293
    .end local v0    # "arcHeight":I
    .end local v1    # "arcLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "arcValueLp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "arcValuesContainer":Landroid/view/ViewGroup;
    .end local v4    # "arcWidht":I
    .end local v5    # "archWidthProportion":F
    .end local v6    # "percentValue":I
    :cond_2
    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->cardContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private initViews()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 197
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/widgets/RefreshableListView;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    .line 198
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v8}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 199
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_header_image:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->headerView:Landroid/widget/ImageView;

    .line 200
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_grid_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->cardContainer:Landroid/view/ViewGroup;

    .line 201
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->stamp_card_button:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->stampCardButton:Landroid/widget/Button;

    .line 202
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->turn_function_button:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityButton:Landroid/widget/ImageView;

    .line 203
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->turn_circle_view:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityCircleView:Landroid/widget/ImageView;

    .line 204
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->post_activity_label:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 205
    .local v2, "postActivityLabel":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_info_view:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->infoView:Landroid/widget/TextView;

    .line 208
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->stampCardButton:Landroid/widget/Button;

    sget v5, Lcom/biznessapps/layout/R$string;->stamp_card:I

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(I)V

    .line 209
    sget v4, Lcom/biznessapps/layout/R$string;->post_activity:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 212
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v4, v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setSelected(Z)V

    .line 213
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->isSelected()Z

    move-result v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityCircleView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->postActivityButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v5, v6, v7}, Lcom/biznessapps/utils/ViewUtils;->updateTurnOnOffViewState(ZLandroid/widget/ImageView;Landroid/widget/ImageView;Lcom/biznessapps/api/UiSettings;)V

    .line 214
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_title_label:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 216
    .local v3, "titleLabel":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->stampCardButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 217
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->stampCardButton:Landroid/widget/Button;

    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$1;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->infoView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 230
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "BG_URL_EXTRA"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->bgUrl:Ljava/lang/String;

    .line 233
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->bgUrl:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 235
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->setGlobalBackgroundColor(Landroid/graphics/drawable/Drawable;Lcom/biznessapps/api/UiSettings;)V

    .line 237
    .end local v0    # "container":Landroid/view/ViewGroup;
    :cond_0
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    new-instance v1, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;

    invoke-direct {v1}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;-><init>()V

    .line 240
    .local v1, "params":Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setView(Landroid/view/View;)V

    .line 241
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getHeaderImage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setUrl(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v1, v8}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageSrc(Z)V

    .line 243
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;->setImageType(I)V

    .line 244
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadImage(Lcom/biznessapps/utils/google/caching/ImageWorker$ImageLoadParams;)V

    .line 246
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->shareButton:Landroid/widget/ImageView;

    .line 247
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationTextColor()I

    move-result v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->shareButton:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->shareButton:Landroid/widget/ImageView;

    new-instance v5, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$2;

    invoke-direct {v5, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$2;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initActivities()V

    .line 255
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initDisplayProgressViews()V

    .line 256
    return-void
.end method

.method private loadCouponsData()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 380
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 381
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->cardContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 383
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 385
    .local v1, "couponsSize":I
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_0

    div-int/lit8 v7, v1, 0x5

    .line 386
    .local v7, "rowSize":I
    :goto_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v7, :cond_1

    .line 387
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->cardContainer:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v9}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v9

    invoke-direct {p0, v8, v3, v9}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->addRow(Landroid/view/ViewGroup;ILjava/util/List;)V

    .line 386
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 385
    .end local v3    # "i":I
    .end local v7    # "rowSize":I
    :cond_0
    div-int/lit8 v8, v1, 0x5

    add-int/lit8 v7, v8, 0x1

    goto :goto_0

    .line 391
    .restart local v3    # "i":I
    .restart local v7    # "rowSize":I
    :cond_1
    iput v10, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    .line 392
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 393
    .local v0, "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 394
    invoke-direct {p0, v10}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->changeDisplayProgress(Z)V

    goto :goto_2

    .line 399
    .end local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    :cond_3
    iget-boolean v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->isNextCardFound:Z

    if-nez v8, :cond_4

    .line 401
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 402
    .restart local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 403
    iput-boolean v11, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    .line 405
    invoke-virtual {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isAlreadyUnLocked()Z

    move-result v8

    if-nez v8, :cond_4

    .line 406
    invoke-virtual {v0, v11}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setAlreadyUnLocked(Z)V

    .line 408
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v8

    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8, v9}, Lcom/biznessapps/storage/StorageKeeper;->saveLoyaltyItem(Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V

    .line 411
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfRewards()V

    .line 413
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->showSuccessDialog()V

    .line 417
    .end local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    :cond_4
    const/4 v5, 0x0

    .line 418
    .local v5, "infoText":Ljava/lang/String;
    iget-boolean v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    if-eqz v8, :cond_6

    .line 419
    sget v8, Lcom/biznessapps/layout/R$string;->redeem_loyalty_card:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 425
    :goto_3
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->infoView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 426
    iget-object v9, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->stampCardButton:Landroid/widget/Button;

    iget-boolean v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    if-eqz v8, :cond_7

    sget v8, Lcom/biznessapps/layout/R$string;->redeem:I

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/Button;->setText(I)V

    .line 428
    .end local v1    # "couponsSize":I
    .end local v3    # "i":I
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "infoText":Ljava/lang/String;
    .end local v7    # "rowSize":I
    :cond_5
    return-void

    .line 421
    .restart local v1    # "couponsSize":I
    .restart local v3    # "i":I
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "infoText":Ljava/lang/String;
    .restart local v7    # "rowSize":I
    :cond_6
    sget v8, Lcom/biznessapps/layout/R$string;->collect_stamps_for_coupon:I

    invoke-virtual {p0, v8}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, "format":Ljava/lang/String;
    iget-object v8, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v8}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget v9, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->appliedCoupons:I

    sub-int v6, v8, v9

    .line 423
    .local v6, "restStamps":I
    new-array v8, v11, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 426
    .end local v2    # "format":Ljava/lang/String;
    .end local v6    # "restStamps":I
    :cond_7
    sget v8, Lcom/biznessapps/layout/R$string;->stamp_card:I

    goto :goto_4
.end method

.method private plugListView(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 184
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->items:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 186
    .local v3, "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->items:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/coupons/ActivityEntity;

    .line 187
    .local v2, "item":Lcom/biznessapps/coupons/ActivityEntity;
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v2, v3, v4}, Lcom/biznessapps/utils/ViewUtils;->getWrappedItem(Lcom/biznessapps/common/entities/CommonListEntity;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)Lcom/biznessapps/common/entities/CommonListEntity;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 189
    .end local v2    # "item":Lcom/biznessapps/coupons/ActivityEntity;
    :cond_0
    new-instance v0, Lcom/biznessapps/coupons/ActivitiesAdapter;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-direct {v0, v4, v3, v5}, Lcom/biznessapps/coupons/ActivitiesAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/biznessapps/api/UiSettings;)V

    .line 190
    .local v0, "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lcom/biznessapps/coupons/ActivitiesAdapter;->setType(I)V

    .line 191
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    invoke-virtual {v4, v0}, Lcom/biznessapps/widgets/RefreshableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 192
    iget-object v4, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->listView:Lcom/biznessapps/widgets/RefreshableListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/RefreshableListView;->setExpandOn(Z)V

    .line 194
    .end local v0    # "adapter":Lcom/biznessapps/coupons/ActivitiesAdapter;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "sectionList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/coupons/ActivityEntity;>;"
    :cond_1
    return-void
.end method

.method private setInitialStateForCoupon()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 677
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->nextCardView:Landroid/widget/ImageView;

    .line 678
    invoke-direct {p0, v4}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->changeDisplayProgress(Z)V

    .line 679
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 680
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 681
    .local v0, "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    invoke-virtual {v0, v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setLocked(Z)V

    .line 682
    invoke-virtual {v0, v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setAlreadyUnLocked(Z)V

    .line 683
    invoke-virtual {v0, v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setApproved(Z)V

    .line 684
    iput-boolean v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->isNextCardFound:Z

    .line 685
    iput-boolean v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    goto :goto_0

    .line 687
    .end local v0    # "card":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->loadCouponsData()V

    .line 689
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private showRedeemDialog()V
    .locals 7

    .prologue
    .line 609
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 611
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->loyalty_dialog:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 613
    .local v1, "contentView":Landroid/view/ViewGroup;
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_title_view:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 615
    .local v4, "titleView":Landroid/widget/TextView;
    sget v5, Lcom/biznessapps/layout/R$string;->loyalty_redeem_dialog_message:I

    invoke-virtual {p0, v5}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    sget v5, Lcom/biznessapps/layout/R$id;->loyalty_secret_edittext:I

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 619
    .local v3, "secretEditText":Landroid/widget/EditText;
    sget v5, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$8;

    invoke-direct {v6, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$8;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 626
    sget v5, Lcom/biznessapps/layout/R$string;->redeem:I

    new-instance v6, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;

    invoke-direct {v6, p0, v3}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$9;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 655
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$string;->loyalty_dialog_title:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 657
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 658
    return-void
.end method

.method private showSuccessDialog()V
    .locals 6

    .prologue
    .line 661
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 662
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->yes:I

    new-instance v3, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$10;

    invoke-direct {v3, p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment$10;-><init>(Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 671
    sget v2, Lcom/biznessapps/layout/R$string;->loyalty_congrats_message:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "successfulMessage":Ljava/lang/String;
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v5}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 673
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 674
    return-void
.end method

.method private synchronizeData(Lcom/biznessapps/loyalty/LoyaltyV1Entity;Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V
    .locals 8
    .param p1, "storedItem"    # Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    .param p2, "newItem"    # Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    .prologue
    .line 698
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 699
    invoke-virtual {p2}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v3

    .line 700
    .local v3, "newCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    invoke-virtual {p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getCoupons()Ljava/util/List;

    move-result-object v5

    .line 701
    .local v5, "storedCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 702
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 703
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 704
    .local v2, "newCard":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 706
    .local v4, "storedCard":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->getCouponId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 707
    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setApproved(Z)V

    .line 708
    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setLocked(Z)V

    .line 709
    invoke-virtual {v4}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isAlreadyUnLocked()Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setAlreadyUnLocked(Z)V

    goto :goto_0

    .line 717
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "newCard":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v3    # "newCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    .end local v4    # "storedCard":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    .end local v5    # "storedCards":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    :cond_2
    return-void
.end method

.method private tryToRedeem()V
    .locals 1

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->areItemsApproved:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->showRedeemDialog()V

    .line 434
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 149
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setTabId(Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 153
    :cond_0
    return-object v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 163
    const-string v0, "loyalty_activities.php?app_code=%s&id=%s&tab_id=%s&show_all=1"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAds()V
    .locals 0

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initAdsWithAlpha()V

    .line 144
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 112
    sget v2, Lcom/biznessapps/layout/R$layout;->loyalty_v1_detail:I

    const/4 v1, 0x0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initSettingsData()V

    .line 114
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "ITEM_EXTRA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->items:Ljava/util/List;

    .line 117
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    if-eqz v1, :cond_1

    .line 118
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v2}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/biznessapps/storage/StorageKeeper;->getLoyaltyItem(Ljava/lang/String;)Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    move-result-object v0

    .line 119
    .local v0, "storedItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    if-eqz v0, :cond_0

    .line 120
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-direct {p0, v0, v1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->synchronizeData(Lcom/biznessapps/loyalty/LoyaltyV1Entity;Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V

    .line 122
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->initViews()V

    .line 123
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->loadData()V

    .line 124
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->loadCouponsData()V

    .line 126
    .end local v0    # "storedItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity;
    :cond_1
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/CommonUtils;->sendAnalyticsEvent(Lcom/biznessapps/common/entities/AnalyticEntity;)V

    .line 127
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->openCustomDialogs()V

    .line 128
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {v1, v2}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 129
    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->root:Landroid/view/ViewGroup;

    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    if-eqz v0, :cond_0

    .line 137
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->item:Lcom/biznessapps/loyalty/LoyaltyV1Entity;

    invoke-virtual {v0, v1}, Lcom/biznessapps/storage/StorageKeeper;->saveLoyaltyItem(Lcom/biznessapps/loyalty/LoyaltyV1Entity;)V

    .line 139
    :cond_0
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->tabId:Ljava/lang/String;

    .line 175
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->parseActivitiesList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->items:Ljava/util/List;

    .line 169
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonListFragmentNew;->updateControlsWithData(Landroid/app/Activity;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV1DetailFragment;->plugListView(Landroid/app/Activity;)V

    .line 181
    return-void
.end method
