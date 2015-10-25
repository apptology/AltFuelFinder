.class public Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;
.super Ljava/lang/Object;
.source "CouponEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/coupons/CouponEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CouponsLocation"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5f58ad1a5f4de07L


# instance fields
.field private couponName:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCouponName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->couponName:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public setCouponName(Ljava/lang/String;)V
    .locals 0
    .param p1, "couponName"    # Ljava/lang/String;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->couponName:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->latitude:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .locals 0
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponEntity$CouponsLocation;->longitude:Ljava/lang/String;

    .line 184
    return-void
.end method
