.class public Lcom/biznessapps/loyalty/LoyaltyV2Perk;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "LoyaltyV2Perk.java"


# static fields
.field private static final serialVersionUID:J = -0x1dc9454f1577641cL


# instance fields
.field public gaugeIcon:Ljava/lang/String;

.field public isAvailable:Z

.field public isConsumed:Z

.field public reused:Z

.field public totalPoints:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    .line 12
    iput-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isConsumed:Z

    .line 13
    iput-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV2Perk;->isAvailable:Z

    return-void
.end method
