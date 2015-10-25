.class public Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;
.super Ljava/lang/Object;
.source "ListItemHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/common/adapters/ListItemHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationItem"
.end annotation


# instance fields
.field private distanceView:Landroid/widget/TextView;

.field private locationImage:Landroid/widget/ImageView;

.field private rightArrowView:Landroid/widget/ImageView;

.field private statusView:Landroid/widget/TextView;

.field private textViewAddress:Landroid/widget/TextView;

.field private textViewCity:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDistanceView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->distanceView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLocationImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->locationImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getRightArrowView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 288
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->rightArrowView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getStatusView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->statusView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewAddress()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->textViewAddress:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTextViewCity()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->textViewCity:Landroid/widget/TextView;

    return-object v0
.end method

.method public setDistanceView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "distanceView"    # Landroid/widget/TextView;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->distanceView:Landroid/widget/TextView;

    .line 325
    return-void
.end method

.method public setLocationImage(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "locationImage"    # Landroid/widget/ImageView;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->locationImage:Landroid/widget/ImageView;

    .line 317
    return-void
.end method

.method public setRightArrowView(Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "rightArrowView"    # Landroid/widget/ImageView;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->rightArrowView:Landroid/widget/ImageView;

    .line 293
    return-void
.end method

.method public setStatusView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "statusView"    # Landroid/widget/TextView;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->statusView:Landroid/widget/TextView;

    .line 333
    return-void
.end method

.method public setTextViewAddress(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewAddress"    # Landroid/widget/TextView;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->textViewAddress:Landroid/widget/TextView;

    .line 309
    return-void
.end method

.method public setTextViewCity(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "textViewCity"    # Landroid/widget/TextView;

    .prologue
    .line 300
    iput-object p1, p0, Lcom/biznessapps/common/adapters/ListItemHolder$LocationItem;->textViewCity:Landroid/widget/TextView;

    .line 301
    return-void
.end method
