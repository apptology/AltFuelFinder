.class public Lcom/biznessapps/loyalty/LoyaltyV1Entity;
.super Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
.source "LoyaltyV1Entity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x680cbf8adde0efd0L


# instance fields
.field private coupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;",
            ">;"
        }
    .end annotation
.end field

.field private showAsPercents:Z

.field private useGaugeOption:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;-><init>()V

    .line 98
    return-void
.end method


# virtual methods
.method public getApprovedCount()I
    .locals 4

    .prologue
    .line 42
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    if-nez v3, :cond_1

    .line 43
    const/4 v1, 0x0

    .line 53
    :cond_0
    return v1

    .line 46
    :cond_1
    const/4 v1, 0x0

    .line 47
    .local v1, "count":I
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 48
    .local v0, "cardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    # getter for: Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved:Z
    invoke-static {v0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->access$000(Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAwardedValue()I
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getApprovedCount()I

    move-result v0

    return v0
.end method

.method public getCoupons()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    return-object v0
.end method

.method public getTotalValue()I
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public setApprovedCount(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 57
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 59
    .local v2, "maxCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .line 62
    .local v0, "cardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    if-ge v1, v2, :cond_0

    .line 63
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setApproved(Z)V

    .line 59
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->setApproved(Z)V

    goto :goto_1

    .line 68
    .end local v0    # "cardItem":Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
    :cond_1
    return-void
.end method

.method public setAwardedValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->setApprovedCount(I)V

    .line 31
    return-void
.end method

.method public setCoupons(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p1, "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;>;"
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setShowAsPercents(Z)V
    .locals 0
    .param p1, "showAsPercents"    # Z

    .prologue
    .line 95
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->showAsPercents:Z

    .line 96
    return-void
.end method

.method public setUseGaugeOption(Z)V
    .locals 0
    .param p1, "useGaugeOption"    # Z

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->useGaugeOption:Z

    .line 88
    return-void
.end method

.method public showAsPercents()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->showAsPercents:Z

    return v0
.end method

.method public stampCompleted()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 71
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->getApprovedCount()I

    move-result v0

    .line 72
    .local v0, "approvedCount":I
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->coupons:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 74
    .local v1, "couponCount":I
    if-gt v0, v1, :cond_0

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 75
    if-ne v0, v1, :cond_1

    .line 79
    :goto_1
    return v3

    :cond_0
    move v2, v4

    .line 74
    goto :goto_0

    :cond_1
    move v3, v4

    .line 79
    goto :goto_1
.end method

.method public useGaugeOption()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity;->useGaugeOption:Z

    return v0
.end method
