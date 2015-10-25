.class public Lcom/biznessapps/reservation/ReservationAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ReservationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reservation/ReservationAdapter$1;,
        Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/reservation/entities/ReservationEntity;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelledState:Ljava/lang/String;


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
            "Lcom/biznessapps/reservation/entities/ReservationEntity;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationEntity;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->upcoming_reserv_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 24
    sget v0, Lcom/biznessapps/layout/R$string;->cancelled:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationAdapter;->cancelledState:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 30
    if-nez p2, :cond_2

    .line 31
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/reservation/ReservationAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 32
    new-instance v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;

    invoke-direct {v0, v5}, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;-><init>(Lcom/biznessapps/reservation/ReservationAdapter$1;)V

    .line 33
    .local v0, "holder":Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->service_name_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->serviceNameView:Landroid/widget/TextView;

    .line 34
    sget v2, Lcom/biznessapps/layout/R$id;->billing_address_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->billingAddressView:Landroid/widget/TextView;

    .line 35
    sget v2, Lcom/biznessapps/layout/R$id;->full_date_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    .line 36
    sget v2, Lcom/biznessapps/layout/R$id;->calendar_month_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->monthView:Landroid/widget/TextView;

    .line 37
    sget v2, Lcom/biznessapps/layout/R$id;->calendar_text:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    .line 38
    sget v2, Lcom/biznessapps/layout/R$id;->state_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->stateView:Landroid/widget/TextView;

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/reservation/entities/ReservationEntity;

    .line 45
    .local v1, "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    if-eqz v1, :cond_1

    .line 46
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->serviceNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->billingAddressView:Landroid/widget/TextView;

    invoke-static {v6, v1}, Lcom/biznessapps/location/LocationUtils;->getAddress(ZLcom/biznessapps/location/entities/LocationEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 50
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->monthView:Landroid/widget/TextView;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "MMM"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->dayView:Landroid/widget/TextView;

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getTimeFrom()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getOrderState()I

    move-result v2

    if-ne v2, v7, :cond_3

    .line 56
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->stateView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationAdapter;->cancelledState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    :goto_1
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/reservation/ReservationAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 62
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationEntity;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/widget/TextView;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->serviceNameView:Landroid/widget/TextView;

    aput-object v5, v3, v4

    iget-object v4, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->billingAddressView:Landroid/widget/TextView;

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->dateView:Landroid/widget/TextView;

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->stateView:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/reservation/ReservationAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 66
    :cond_1
    return-object p2

    .line 41
    .end local v0    # "holder":Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;
    goto/16 :goto_0

    .line 58
    .restart local v1    # "item":Lcom/biznessapps/reservation/entities/ReservationEntity;
    :cond_3
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationAdapter$ViewHolder;->stateView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
