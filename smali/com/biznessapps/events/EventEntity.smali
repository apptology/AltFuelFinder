.class public Lcom/biznessapps/events/EventEntity;
.super Lcom/biznessapps/location/entities/LocationEntity;
.source "EventEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/events/EventEntity$RecurringDay;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xccdc8a1490e0f48L


# instance fields
.field private commentsCount:I

.field private datetimeBegin:Ljava/util/Date;

.field private datetimeEnd:Ljava/util/Date;

.field private day:Ljava/lang/String;

.field private goingCount:I

.field private isRecurring:Z

.field private month:Ljava/lang/String;

.field private photoCount:I

.field private recurringDay:Lcom/biznessapps/events/EventEntity$RecurringDay;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public getCommentsCount()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/biznessapps/events/EventEntity;->commentsCount:I

    return v0
.end method

.method public getDatetimeBegin()Ljava/util/Date;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/events/EventEntity;->datetimeBegin:Ljava/util/Date;

    return-object v0
.end method

.method public getDatetimeEnd()Ljava/util/Date;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/biznessapps/events/EventEntity;->datetimeEnd:Ljava/util/Date;

    return-object v0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/biznessapps/events/EventEntity;->day:Ljava/lang/String;

    return-object v0
.end method

.method public getGoingCount()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/biznessapps/events/EventEntity;->goingCount:I

    return v0
.end method

.method public getMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/biznessapps/events/EventEntity;->month:Ljava/lang/String;

    return-object v0
.end method

.method public getPhotoCount()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/biznessapps/events/EventEntity;->photoCount:I

    return v0
.end method

.method public getRecurringDay()Lcom/biznessapps/events/EventEntity$RecurringDay;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/biznessapps/events/EventEntity;->recurringDay:Lcom/biznessapps/events/EventEntity$RecurringDay;

    return-object v0
.end method

.method public isRecurring()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/biznessapps/events/EventEntity;->isRecurring:Z

    return v0
.end method

.method public setCommentsCount(I)V
    .locals 0
    .param p1, "commentsCount"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/biznessapps/events/EventEntity;->commentsCount:I

    .line 111
    return-void
.end method

.method public setDatetimeBegin(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/biznessapps/events/EventEntity;->datetimeBegin:Ljava/util/Date;

    .line 81
    return-void
.end method

.method public setDatetimeEnd(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/biznessapps/events/EventEntity;->datetimeEnd:Ljava/util/Date;

    .line 87
    return-void
.end method

.method public setDay(Ljava/lang/String;)V
    .locals 0
    .param p1, "day"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/biznessapps/events/EventEntity;->day:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setGoingCount(I)V
    .locals 0
    .param p1, "goingCount"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/biznessapps/events/EventEntity;->goingCount:I

    .line 95
    return-void
.end method

.method public setMonth(Ljava/lang/String;)V
    .locals 0
    .param p1, "month"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/biznessapps/events/EventEntity;->month:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPhotoCount(I)V
    .locals 0
    .param p1, "photoCount"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/biznessapps/events/EventEntity;->photoCount:I

    .line 103
    return-void
.end method

.method public setRecurring(Z)V
    .locals 0
    .param p1, "isRecurring"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/biznessapps/events/EventEntity;->isRecurring:Z

    .line 65
    return-void
.end method

.method public setRecurringDay(Lcom/biznessapps/events/EventEntity$RecurringDay;)V
    .locals 0
    .param p1, "recurringDay"    # Lcom/biznessapps/events/EventEntity$RecurringDay;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/biznessapps/events/EventEntity;->recurringDay:Lcom/biznessapps/events/EventEntity$RecurringDay;

    .line 73
    return-void
.end method
