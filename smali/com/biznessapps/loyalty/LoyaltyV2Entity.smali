.class public Lcom/biznessapps/loyalty/LoyaltyV2Entity;
.super Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
.source "LoyaltyV2Entity.java"


# static fields
.field private static final serialVersionUID:J = -0x2bafea7540f1918eL


# instance fields
.field public consumedLoyaltyPerks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/biznessapps/loyalty/LoyaltyV2Perk;",
            ">;"
        }
    .end annotation
.end field

.field private definedLoyaltyPerks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV2Perk;",
            ">;"
        }
    .end annotation
.end field

.field public instruction:Ljava/lang/String;

.field public perkUnitType:Ljava/lang/String;

.field public pushAcceptAward:I

.field public rewardOnDownload:Z

.field public rewardOnDownloadText:Ljava/lang/String;

.field public showActivity:Z

.field public showGaugeView:Z

.field public stampAwardAmount:I

.field private totalAwardedPoints:I

.field public totalPerks:I

.field public unitShortHand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyCommonEntity;-><init>()V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->consumedLoyaltyPerks:Ljava/util/HashMap;

    return-void
.end method

.method private refreshAvailablePerkItems()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    if-nez v2, :cond_1

    .line 98
    :cond_0
    return-void

    .line 91
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 92
    .local v1, "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    iget v2, v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->totalPoints:I

    iget v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->totalAwardedPoints:I

    if-gt v2, v3, :cond_2

    .line 93
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isAvailable:Z

    goto :goto_0

    .line 95
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isAvailable:Z

    goto :goto_0
.end method


# virtual methods
.method public getAwardedValue()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->totalAwardedPoints:I

    return v0
.end method

.method public getDefinedLoyaltyPerks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV2Perk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    return-object v0
.end method

.method public getMaxPerkValue()I
    .locals 4

    .prologue
    .line 52
    const/4 v2, 0x0

    .line 54
    .local v2, "value":I
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 56
    .local v1, "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    iget v3, v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->totalPoints:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    .line 60
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    :cond_0
    return v2
.end method

.method public getTotalValue()I
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->getMaxPerkValue()I

    move-result v0

    return v0
.end method

.method public markAsConsumed(Ljava/lang/String;)V
    .locals 3
    .param p1, "perkId"    # Ljava/lang/String;

    .prologue
    .line 74
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljunit/framework/Assert;->assertFalse(Z)V

    .line 76
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;

    .line 77
    .local v1, "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    invoke-virtual {v1}, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isConsumed:Z

    .line 79
    iget-object v2, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->consumedLoyaltyPerks:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v1    # "perk":Lcom/biznessapps/loyalty/LoyaltyV2Perk;
    :cond_1
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->refreshAvailablePerkItems()V

    .line 84
    return-void
.end method

.method public setAwardedValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->totalAwardedPoints:I

    .line 48
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->refreshAvailablePerkItems()V

    .line 49
    return-void
.end method

.method public setDefinedLoyaltyPerks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/loyalty/LoyaltyV2Perk;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p1, "perks":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/loyalty/LoyaltyV2Perk;>;"
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->definedLoyaltyPerks:Ljava/util/List;

    .line 70
    invoke-direct {p0}, Lcom/biznessapps/loyalty/LoyaltyV2Entity;->refreshAvailablePerkItems()V

    .line 71
    return-void
.end method
