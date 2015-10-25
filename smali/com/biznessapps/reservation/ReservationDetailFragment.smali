.class public Lcom/biznessapps/reservation/ReservationDetailFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ReservationDetailFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field private addToCalendarButton:Landroid/widget/Button;

.field private address2View:Landroid/widget/TextView;

.field private addressView:Landroid/widget/TextView;

.field private cancelApptButton:Landroid/widget/Button;

.field private dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

.field private item:Lcom/biznessapps/reservation/entities/ReservationEntity;

.field private paymentMethodView:Landroid/widget/TextView;

.field private prePaymentView:Landroid/widget/TextView;

.field private priceView:Landroid/widget/TextView;

.field private serviceNameView:Landroid/widget/TextView;

.field private thumbnailView:Landroid/widget/ImageView;

.field private timeView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reservation/ReservationDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationDetailFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelAppointment()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/reservation/ReservationDetailFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationDetailFragment;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->addEvent()V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/reservation/ReservationDetailFragment;)Lcom/biznessapps/reservation/ReservationDataKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationDetailFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/biznessapps/reservation/ReservationDetailFragment;)Lcom/biznessapps/reservation/entities/ReservationEntity;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationDetailFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/reservation/ReservationDetailFragment;Ljava/util/Map;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationDetailFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationDetailFragment;->loadPostData(Ljava/util/Map;)V

    return-void
.end method

.method private addEvent()V
    .locals 4

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "title"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    :cond_0
    const-string v1, "eventLocation"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-static {v2}, Lcom/biznessapps/location/LocationUtils;->getFullAddress(Lcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 274
    const-string v1, "beginTime"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeTo()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 277
    const-string v1, "endTime"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeTo()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 279
    :cond_2
    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->startActivity(Landroid/content/Intent;)V

    .line 280
    return-void
.end method

.method private cancelAppointment()V
    .locals 5

    .prologue
    .line 235
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v2, Lcom/biznessapps/layout/R$string;->cancel_reservation:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 237
    sget v2, Lcom/biznessapps/layout/R$string;->cancel_reservation_question:I

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 239
    .local v1, "dialog":Landroid/app/AlertDialog;
    const/4 v2, -0x1

    sget v3, Lcom/biznessapps/layout/R$string;->yes:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biznessapps/reservation/ReservationDetailFragment$3;

    invoke-direct {v4, p0}, Lcom/biznessapps/reservation/ReservationDetailFragment$3;-><init>(Lcom/biznessapps/reservation/ReservationDetailFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 255
    const/4 v2, -0x2

    sget v3, Lcom/biznessapps/layout/R$string;->no:I

    invoke-virtual {p0, v3}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/biznessapps/reservation/ReservationDetailFragment$4;

    invoke-direct {v4, p0}, Lcom/biznessapps/reservation/ReservationDetailFragment$4;-><init>(Lcom/biznessapps/reservation/ReservationDetailFragment;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 262
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method

.method private initValues()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 188
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->bgUrl:Ljava/lang/String;

    .line 189
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v0

    .line 190
    .local v0, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->bgUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->root:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0, v1, v2, v3}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 191
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getThumbnail()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->thumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 193
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->serviceNameView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addressView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->address2View:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-static {v1, v2, v3}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 196
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->timeView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->priceView:Landroid/widget/TextView;

    const-string v2, "%s%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getCurrencySign()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getCost()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->prePaymentView:Landroid/widget/TextView;

    const-string v2, "%s%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getCurrencySign()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getPaidAmount()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getCheckoutMethod()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 202
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->paymentMethodView:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->cash:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->paymentMethodView:Landroid/widget/TextView;

    sget v2, Lcom/biznessapps/layout/R$string;->paypal:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showAddToCalendarButton()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 178
    const/4 v2, 0x1

    .line 179
    .local v2, "isActive":Z
    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v6}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeTo()Ljava/util/Date;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 180
    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v6}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeTo()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 181
    .local v0, "eventEndTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    move v2, v4

    .line 183
    .end local v0    # "eventEndTime":J
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v6}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getOrderState()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_2

    move v3, v4

    .line 184
    .local v3, "isCancelled":Z
    :goto_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    :goto_2
    return v4

    .end local v3    # "isCancelled":Z
    .restart local v0    # "eventEndTime":J
    :cond_1
    move v2, v5

    .line 181
    goto :goto_0

    .end local v0    # "eventEndTime":J
    :cond_2
    move v3, v5

    .line 183
    goto :goto_1

    .restart local v3    # "isCancelled":Z
    :cond_3
    move v4, v5

    .line 184
    goto :goto_2
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;
    .locals 3

    .prologue
    .line 80
    invoke-super {p0}, Lcom/biznessapps/common/fragments/CommonFragment;->getAnalyticData()Lcom/biznessapps/common/entities/AnalyticEntity;

    move-result-object v0

    .line 81
    .local v0, "data":Lcom/biznessapps/common/entities/AnalyticEntity;
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "TAB_FRAGMENT_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/reservation/entities/ReservationEntity;

    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    .line 82
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/biznessapps/common/entities/AnalyticEntity;->setItemId(Ljava/lang/String;)V

    .line 85
    :cond_0
    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_detail_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    const-string v0, "reserv_order.php"

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 10
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    .line 91
    sget v7, Lcom/biznessapps/layout/R$id;->thumbnail_image:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->thumbnailView:Landroid/widget/ImageView;

    .line 92
    sget v7, Lcom/biznessapps/layout/R$id;->service_name_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->serviceNameView:Landroid/widget/TextView;

    .line 93
    sget v7, Lcom/biznessapps/layout/R$id;->address_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addressView:Landroid/widget/TextView;

    .line 94
    sget v7, Lcom/biznessapps/layout/R$id;->address_2_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->address2View:Landroid/widget/TextView;

    .line 96
    sget v7, Lcom/biznessapps/layout/R$id;->time_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->timeView:Landroid/widget/TextView;

    .line 97
    sget v7, Lcom/biznessapps/layout/R$id;->price_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->priceView:Landroid/widget/TextView;

    .line 98
    sget v7, Lcom/biznessapps/layout/R$id;->pre_payment_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->prePaymentView:Landroid/widget/TextView;

    .line 99
    sget v7, Lcom/biznessapps/layout/R$id;->payment_method_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->paymentMethodView:Landroid/widget/TextView;

    .line 101
    sget v7, Lcom/biznessapps/layout/R$id;->time_label_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 102
    .local v6, "timeLabelView":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->price_label_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 103
    .local v5, "priceLabelView":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->pre_payment_label_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 104
    .local v4, "prePaymentLabelView":Landroid/widget/TextView;
    sget v7, Lcom/biznessapps/layout/R$id;->payment_method_label_view:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 106
    .local v2, "paymentMethodLabelView":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->serviceNameView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addressView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->address2View:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->timeView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->priceView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->prePaymentView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 115
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->paymentMethodView:Landroid/widget/TextView;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v7

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    sget v7, Lcom/biznessapps/layout/R$id;->cancel_reservation_button:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelApptButton:Landroid/widget/Button;

    .line 120
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelApptButton:Landroid/widget/Button;

    new-instance v9, Lcom/biznessapps/reservation/ReservationDetailFragment$1;

    invoke-direct {v9, p0}, Lcom/biznessapps/reservation/ReservationDetailFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationDetailFragment;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget v7, Lcom/biznessapps/layout/R$id;->add_to_calendar_button:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addToCalendarButton:Landroid/widget/Button;

    .line 127
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addToCalendarButton:Landroid/widget/Button;

    new-instance v9, Lcom/biznessapps/reservation/ReservationDetailFragment$2;

    invoke-direct {v9, p0}, Lcom/biznessapps/reservation/ReservationDetailFragment$2;-><init>(Lcom/biznessapps/reservation/ReservationDetailFragment;)V

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addToCalendarButton:Landroid/widget/Button;

    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->showAddToCalendarButton()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v9, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v7

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelApptButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 135
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelApptButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 136
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v7

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addToCalendarButton:Landroid/widget/Button;

    invoke-virtual {v9}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addToCalendarButton:Landroid/widget/Button;

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 139
    sget v7, Lcom/biznessapps/layout/R$id;->middle_container:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 140
    .local v0, "middleContainer":Landroid/view/ViewGroup;
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v7}, Lcom/biznessapps/api/UiSettings;->getOddRowColor()I

    move-result v7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    const/16 v9, 0x78

    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 144
    sget v7, Lcom/biznessapps/layout/R$id;->payment_method_container:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 146
    .local v1, "paymentMethodContainer":Landroid/view/ViewGroup;
    sget v7, Lcom/biznessapps/layout/R$id;->pre_payment_container:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 148
    .local v3, "prePaymentContainer":Landroid/view/ViewGroup;
    sget v7, Lcom/biznessapps/layout/R$id;->reservation_detail_container:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    sget v7, Lcom/biznessapps/layout/R$id;->reservation_button_container:I

    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v9, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v9}, Lcom/biznessapps/api/UiSettings;->getEvenRowColorTransparent()I

    move-result v9

    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    .line 151
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v9, "TAB_FRAGMENT_DATA"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/biznessapps/reservation/entities/ReservationEntity;

    iput-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    .line 153
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->item:Lcom/biznessapps/reservation/entities/ReservationEntity;

    invoke-virtual {v7}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getPaidAmount()F

    move-result v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-nez v7, :cond_0

    .line 154
    invoke-virtual {v1, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 155
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->initValues()V

    .line 158
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v7}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 161
    sget v7, Lcom/biznessapps/layout/R$string;->time_label:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 162
    sget v7, Lcom/biznessapps/layout/R$string;->price:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 163
    sget v7, Lcom/biznessapps/layout/R$string;->pre_payment_label:I

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(I)V

    .line 164
    sget v7, Lcom/biznessapps/layout/R$string;->payment_method:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V

    .line 165
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->addToCalendarButton:Landroid/widget/Button;

    sget v8, Lcom/biznessapps/layout/R$string;->add_to_calendar:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 166
    iget-object v7, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelApptButton:Landroid/widget/Button;

    sget v8, Lcom/biznessapps/layout/R$string;->cancel:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(I)V

    .line 167
    return-void

    .end local v0    # "middleContainer":Landroid/view/ViewGroup;
    .end local v1    # "paymentMethodContainer":Landroid/view/ViewGroup;
    .end local v3    # "prePaymentContainer":Landroid/view/ViewGroup;
    :cond_1
    move v7, v8

    .line 133
    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 58
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    .line 59
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 60
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 210
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasDataError(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->hasResultError:Z

    .line 212
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "token":Ljava/lang/String;
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->hasInvalidTokenError(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/biznessapps/api/AppHandlers;->getUiHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/biznessapps/reservation/ReservationUtils;->showInvalidTokenDialog(Landroid/app/Activity;Landroid/os/Handler;)V

    .line 220
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 225
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 226
    iget-boolean v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment;->hasResultError:Z

    if-eqz v0, :cond_0

    .line 227
    sget v0, Lcom/biznessapps/layout/R$string;->reservation_cancel_appt_message:I

    invoke-static {p1, v0}, Lcom/biznessapps/utils/ViewUtils;->showShortToast(Landroid/app/Activity;I)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
