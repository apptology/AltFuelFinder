.class public Lcom/biznessapps/reservation/ReservationServiceAdapter;
.super Lcom/biznessapps/common/adapters/AbstractAdapter;
.source "ReservationServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;,
        Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/biznessapps/common/adapters/AbstractAdapter",
        "<",
        "Lcom/biznessapps/reservation/entities/ReservationServiceItem;",
        ">;"
    }
.end annotation


# instance fields
.field private bookIt:Ljava/lang/String;

.field private listener:Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;

.field private minsText:Ljava/lang/String;

.field private shareText:Ljava/lang/String;


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
            "Lcom/biznessapps/reservation/entities/ReservationServiceItem;",
            ">;",
            "Lcom/biznessapps/api/UiSettings;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/entities/ReservationServiceItem;>;"
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_service_item_layout:I

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/biznessapps/common/adapters/AbstractAdapter;-><init>(Landroid/content/Context;Ljava/util/List;ILcom/biznessapps/api/UiSettings;)V

    .line 36
    sget v0, Lcom/biznessapps/layout/R$string;->share:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->shareText:Ljava/lang/String;

    .line 37
    sget v0, Lcom/biznessapps/layout/R$string;->book_it:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->bookIt:Ljava/lang/String;

    .line 38
    sget v0, Lcom/biznessapps/layout/R$string;->mins:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->minsText:Ljava/lang/String;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/reservation/ReservationServiceAdapter;)Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationServiceAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->listener:Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 44
    if-nez p2, :cond_1

    .line 45
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->inflater:Landroid/view/LayoutInflater;

    iget v3, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->layoutItemResourceId:I

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 46
    new-instance v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;

    invoke-direct {v0, v4}, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;-><init>(Lcom/biznessapps/reservation/ReservationServiceAdapter$1;)V

    .line 48
    .local v0, "holder":Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;
    sget v2, Lcom/biznessapps/layout/R$id;->service_name_view:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    .line 49
    sget v2, Lcom/biznessapps/layout/R$id;->service_price:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    .line 50
    sget v2, Lcom/biznessapps/layout/R$id;->service_time:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->timeView:Landroid/widget/TextView;

    .line 51
    sget v2, Lcom/biznessapps/layout/R$id;->share_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->shareButton:Landroid/widget/Button;

    .line 52
    sget v2, Lcom/biznessapps/layout/R$id;->book_it_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->bookItButton:Landroid/widget/Button;

    .line 53
    sget v2, Lcom/biznessapps/layout/R$id;->thumbnail_image:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->thumbnailImage:Landroid/widget/ImageView;

    .line 55
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->shareButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->shareText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->bookItButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->bookIt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 62
    :goto_0
    invoke-virtual {p0, p1}, Lcom/biznessapps/reservation/ReservationServiceAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    .line 63
    .local v1, "item":Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    if-eqz v1, :cond_0

    .line 64
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->bookItButton:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/reservation/ReservationServiceAdapter$1;

    invoke-direct {v3, p0, v1}, Lcom/biznessapps/reservation/ReservationServiceAdapter$1;-><init>(Lcom/biznessapps/reservation/ReservationServiceAdapter;Lcom/biznessapps/reservation/entities/ReservationServiceItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->shareButton:Landroid/widget/Button;

    new-instance v3, Lcom/biznessapps/reservation/ReservationServiceAdapter$2;

    invoke-direct {v3, p0, v1}, Lcom/biznessapps/reservation/ReservationServiceAdapter$2;-><init>(Lcom/biznessapps/reservation/ReservationServiceAdapter;Lcom/biznessapps/reservation/entities/ReservationServiceItem;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->bookItButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 77
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v2

    iget-object v3, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->shareButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->bookItButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 79
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->shareButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v3}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 80
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->imageFetcher:Lcom/biznessapps/utils/google/caching/ImageFetcher;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getThumbnail()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->thumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v3, v4}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 81
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    const-string v3, "%s%.2f"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getCurrencySign()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getPrice()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v2, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->timeView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getMins()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->minsText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->hasColor()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getItemColor()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/biznessapps/reservation/ReservationServiceAdapter;->getListItemDrawable(I)Landroid/graphics/drawable/StateListDrawable;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getItemTextColor()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/widget/TextView;

    iget-object v4, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->nameView:Landroid/widget/TextView;

    aput-object v4, v3, v6

    iget-object v4, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->priceView:Landroid/widget/TextView;

    aput-object v4, v3, v7

    iget-object v4, v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;->timeView:Landroid/widget/TextView;

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/biznessapps/reservation/ReservationServiceAdapter;->setTextColorToView(I[Landroid/widget/TextView;)V

    .line 89
    :cond_0
    return-object p2

    .line 59
    .end local v0    # "holder":Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;
    .end local v1    # "item":Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/biznessapps/reservation/ReservationServiceAdapter$ViewHolder;
    goto/16 :goto_0
.end method

.method public setListener(Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter;->listener:Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;

    .line 32
    return-void
.end method
