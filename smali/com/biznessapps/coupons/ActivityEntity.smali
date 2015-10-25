.class public Lcom/biznessapps/coupons/ActivityEntity;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "ActivityEntity.java"


# static fields
.field private static final serialVersionUID:J = -0xa1f0557d096bb10L


# instance fields
.field private action:I

.field private avatarUrl:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private perk:Ljava/lang/String;

.field private points:I

.field private sequence:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/biznessapps/coupons/ActivityEntity;->action:I

    return v0
.end method

.method public getAvatarUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/coupons/ActivityEntity;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/biznessapps/coupons/ActivityEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPerk()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/biznessapps/coupons/ActivityEntity;->perk:Ljava/lang/String;

    return-object v0
.end method

.method public getPoints()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/biznessapps/coupons/ActivityEntity;->points:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/biznessapps/coupons/ActivityEntity;->sequence:I

    return v0
.end method

.method public setAction(I)V
    .locals 0
    .param p1, "action"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/biznessapps/coupons/ActivityEntity;->action:I

    .line 25
    return-void
.end method

.method public setAvatarUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "avatarUrl"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/biznessapps/coupons/ActivityEntity;->avatarUrl:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/biznessapps/coupons/ActivityEntity;->name:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPerk(Ljava/lang/String;)V
    .locals 0
    .param p1, "perk"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/coupons/ActivityEntity;->perk:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setPoints(I)V
    .locals 0
    .param p1, "points"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/biznessapps/coupons/ActivityEntity;->points:I

    .line 57
    return-void
.end method

.method public setSequence(I)V
    .locals 0
    .param p1, "sequence"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/biznessapps/coupons/ActivityEntity;->sequence:I

    .line 49
    return-void
.end method
