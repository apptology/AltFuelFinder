.class public Lcom/biznessapps/widgets/calendar/CalendarCellData;
.super Ljava/lang/Object;
.source "CalendarCellData.java"


# instance fields
.field private blockedDayName:Ljava/lang/String;

.field public cell:Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

.field public day:I

.field public dayOfWeek:I

.field public month:I

.field public year:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1, "d"    # I
    .param p2, "m"    # I
    .param p3, "y"    # I
    .param p4, "dayOfWeek"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->cell:Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->blockedDayName:Ljava/lang/String;

    .line 18
    iput p1, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    .line 19
    iput p2, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    .line 20
    iput p3, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    .line 21
    iput p4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->dayOfWeek:I

    .line 22
    return-void
.end method


# virtual methods
.method public afterToday()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 74
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 76
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-le v3, v4, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ge v3, v4, :cond_2

    move v1, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-gt v3, v4, :cond_0

    .line 82
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-ge v3, v4, :cond_3

    move v1, v2

    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-gt v3, v4, :cond_0

    .line 86
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-ge v3, v4, :cond_0

    move v1, v2

    .line 87
    goto :goto_0
.end method

.method public beforeToday()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 55
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 57
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ge v3, v4, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-le v3, v4, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-lt v3, v4, :cond_0

    .line 63
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-le v3, v4, :cond_3

    move v1, v2

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-lt v3, v4, :cond_0

    .line 67
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-le v3, v4, :cond_0

    move v1, v2

    .line 68
    goto :goto_0
.end method

.method public getBlockedDayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->blockedDayName:Ljava/lang/String;

    return-object v0
.end method

.method public isBlocked(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "blockedDays":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;>;"
    const/4 v3, 0x0

    .line 38
    .local v3, "isBlocked":Z
    if-eqz p1, :cond_1

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;

    .line 40
    .local v0, "blockedDay":Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 41
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->getDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 42
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-ne v4, v5, :cond_0

    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget v5, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-ne v4, v5, :cond_0

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;->getNote()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->blockedDayName:Ljava/lang/String;

    .line 51
    .end local v0    # "blockedDay":Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;
    .end local v1    # "calendar":Ljava/util/Calendar;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return v3
.end method

.method public isToday()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 25
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 27
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-ne v2, v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
