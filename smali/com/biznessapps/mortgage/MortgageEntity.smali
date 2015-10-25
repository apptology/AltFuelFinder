.class public Lcom/biznessapps/mortgage/MortgageEntity;
.super Lcom/biznessapps/common/entities/CommonEntity;
.source "MortgageEntity.java"


# static fields
.field private static final serialVersionUID:J = 0x2b2aebb280dd08ffL


# instance fields
.field private interest:Ljava/lang/String;

.field private isReadOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterest()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/biznessapps/mortgage/MortgageEntity;->interest:Ljava/lang/String;

    return-object v0
.end method

.method public isReadOnly()Z
    .locals 1

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/biznessapps/mortgage/MortgageEntity;->isReadOnly:Z

    return v0
.end method

.method public setInterest(Ljava/lang/String;)V
    .locals 0
    .param p1, "interest"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/biznessapps/mortgage/MortgageEntity;->interest:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "isReadOnly"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/biznessapps/mortgage/MortgageEntity;->isReadOnly:Z

    .line 31
    return-void
.end method
