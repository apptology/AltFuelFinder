.class public Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;
.super Ljava/lang/Object;
.source "LoyaltyV1Entity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/loyalty/LoyaltyV1Entity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoyaltyCardItem"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4efc96326a622a8cL


# instance fields
.field private couponCode:Ljava/lang/String;

.field private couponId:Ljava/lang/String;

.field private isAlreadyUnLocked:Z

.field private isApproved:Z

.field private isLast:Z

.field private isLocked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked:Z

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved:Z

    return v0
.end method


# virtual methods
.method public getCouponCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->couponCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCouponId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->couponId:Ljava/lang/String;

    return-object v0
.end method

.method public isAlreadyUnLocked()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isAlreadyUnLocked:Z

    return v0
.end method

.method public isApproved()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved:Z

    return v0
.end method

.method public isLast()Z
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLast:Z

    return v0
.end method

.method public isLocked()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked:Z

    return v0
.end method

.method public setAlreadyUnLocked(Z)V
    .locals 0
    .param p1, "isAlreadyUnLocked"    # Z

    .prologue
    .line 151
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isAlreadyUnLocked:Z

    .line 152
    return-void
.end method

.method public setApproved(Z)V
    .locals 0
    .param p1, "isApproved"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isApproved:Z

    .line 128
    return-void
.end method

.method public setCouponCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "couponCode"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->couponCode:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setCouponId(Ljava/lang/String;)V
    .locals 0
    .param p1, "couponId"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->couponId:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setLast(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLast:Z

    .line 146
    return-void
.end method

.method public setLocked(Z)V
    .locals 0
    .param p1, "isLocked"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/biznessapps/loyalty/LoyaltyV1Entity$LoyaltyCardItem;->isLocked:Z

    .line 122
    return-void
.end method
