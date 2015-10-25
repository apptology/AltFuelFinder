.class public abstract Lcom/biznessapps/loyalty/LoyaltyCommonEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "LoyaltyCommonEntity.java"


# static fields
.field private static final serialVersionUID:J = -0x375e5e2bc10b88fcL


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAwardedValue()I
.end method

.method public abstract getTotalValue()I
.end method

.method public abstract setAwardedValue(I)V
.end method
