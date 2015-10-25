.class public Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;
.super Ljava/lang/Object;
.source "ReservationDataKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/reservation/ReservationDataKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BlockedDayEntity"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private note:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getNote()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->note:Ljava/lang/String;

    return-object v0
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->date:Ljava/util/Date;

    .line 220
    return-void
.end method

.method public setNote(Ljava/lang/String;)V
    .locals 0
    .param p1, "note"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->note:Ljava/lang/String;

    .line 228
    return-void
.end method
