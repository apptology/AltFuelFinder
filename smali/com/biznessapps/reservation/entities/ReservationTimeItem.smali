.class public Lcom/biznessapps/reservation/entities/ReservationTimeItem;
.super Lcom/biznessapps/common/entities/CommonListEntity;
.source "ReservationTimeItem.java"


# static fields
.field private static final serialVersionUID:J = 0x32c2e8501f7de510L


# instance fields
.field protected from:I

.field protected to:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/biznessapps/common/entities/CommonListEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public getFrom()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->from:I

    return v0
.end method

.method public getTo()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->to:I

    return v0
.end method

.method public setFrom(I)V
    .locals 0
    .param p1, "from"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->from:I

    .line 18
    return-void
.end method

.method public setTo(I)V
    .locals 0
    .param p1, "to"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->to:I

    .line 26
    return-void
.end method
