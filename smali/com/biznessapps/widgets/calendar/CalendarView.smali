.class public Lcom/biznessapps/widgets/calendar/CalendarView;
.super Landroid/widget/LinearLayout;
.source "CalendarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;
    }
.end annotation


# instance fields
.field private blockedDays:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;"
        }
    .end annotation
.end field

.field private calendarRightNow:Ljava/util/Calendar;

.field private calendarView:Landroid/widget/GridView;

.field private date:Ljava/util/Date;

.field private holidayDays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private holidays:[I

.field private monthHelper:Landroid/util/MonthDisplayHelper;

.field private monthYearView:Landroid/widget/TextView;

.field private nextMonthButton:Landroid/widget/ImageButton;

.field private onCellTouchListener:Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

.field private prevMonthButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput-object v3, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    .line 26
    iput-object v3, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->onCellTouchListener:Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

    .line 48
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 50
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/biznessapps/layout/R$layout;->calendar_layout:I

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 52
    .local v1, "root":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Lcom/biznessapps/widgets/calendar/CalendarView;->addView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0, v1}, Lcom/biznessapps/widgets/calendar/CalendarView;->initViews(Landroid/view/ViewGroup;)V

    .line 54
    invoke-direct {p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->initCalendarView()V

    .line 55
    invoke-direct {p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->initCells()V

    .line 56
    return-void
.end method

.method private initCalendarView()V
    .locals 4

    .prologue
    .line 92
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    .line 93
    new-instance v0, Landroid/util/MonthDisplayHelper;

    iget-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/MonthDisplayHelper;-><init>(II)V

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    .line 96
    return-void
.end method

.method private initCells()V
    .locals 22

    .prologue
    .line 107
    const/16 v17, 0x6

    const/16 v18, 0x7

    filled-new-array/range {v17 .. v18}, [I

    move-result-object v17

    const-class v18, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .line 109
    .local v15, "tmp":[[Lcom/biznessapps/widgets/calendar/CalendarCellData;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v5, "cellData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/widgets/calendar/CalendarCellData;>;"
    const/4 v14, -0x1

    .line 111
    .local v14, "selectedItem":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    array-length v0, v15

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v7, v0, :cond_7

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/util/MonthDisplayHelper;->getDigitsForRow(I)[I

    move-result-object v9

    .line 113
    .local v9, "n":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/biznessapps/widgets/calendar/CalendarView;->weekIsOutMonth(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 111
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 114
    :cond_1
    const/4 v6, 0x0

    .local v6, "d":I
    :goto_1
    array-length v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_0

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v6}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 116
    aget-object v17, v15, v7

    new-instance v18, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    aget v19, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/biznessapps/widgets/calendar/CalendarCellData;-><init>(IIII)V

    aput-object v18, v17, v6

    .line 141
    :goto_2
    aget-object v17, v15, v7

    aget-object v17, v17, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/biznessapps/widgets/calendar/CalendarView;->isSelectedDay(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 142
    mul-int/lit8 v17, v7, 0x7

    add-int v14, v17, v6

    .line 144
    :cond_2
    aget-object v17, v15, v7

    aget-object v17, v17, v6

    move-object/from16 v0, v17

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 119
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v16

    .line 120
    .local v16, "year":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v8

    .line 121
    .local v8, "month":I
    if-nez v7, :cond_5

    .line 122
    add-int/lit8 v12, v8, -0x1

    .line 123
    .local v12, "prevMonth":I
    move/from16 v13, v16

    .line 124
    .local v13, "prevYear":I
    if-gez v12, :cond_4

    .line 125
    const/16 v12, 0xb

    .line 126
    add-int/lit8 v16, v16, -0x1

    .line 128
    :cond_4
    aget-object v17, v15, v7

    new-instance v18, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    aget v19, v9, v6

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v12, v13, v6}, Lcom/biznessapps/widgets/calendar/CalendarCellData;-><init>(IIII)V

    aput-object v18, v17, v6

    goto :goto_2

    .line 131
    .end local v12    # "prevMonth":I
    .end local v13    # "prevYear":I
    :cond_5
    add-int/lit8 v10, v8, 0x1

    .line 132
    .local v10, "nextMonth":I
    move/from16 v11, v16

    .line 133
    .local v11, "nextYear":I
    const/16 v17, 0xc

    move/from16 v0, v17

    if-lt v10, v0, :cond_6

    .line 134
    const/4 v10, 0x0

    .line 135
    add-int/lit8 v11, v11, 0x1

    .line 137
    :cond_6
    aget-object v17, v15, v7

    new-instance v18, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    aget v19, v9, v6

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v1, v10, v11, v6}, Lcom/biznessapps/widgets/calendar/CalendarCellData;-><init>(IIII)V

    aput-object v18, v17, v6

    goto :goto_2

    .line 148
    .end local v6    # "d":I
    .end local v8    # "month":I
    .end local v9    # "n":[I
    .end local v10    # "nextMonth":I
    .end local v11    # "nextYear":I
    .end local v16    # "year":I
    :cond_7
    new-instance v4, Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v4, v0, v5, v1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;-><init>(Lcom/biznessapps/widgets/calendar/CalendarView;Ljava/util/List;Landroid/util/MonthDisplayHelper;)V

    .line 149
    .local v4, "adapter":Lcom/biznessapps/widgets/calendar/CalendarAdapter;
    invoke-virtual {v4, v14}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->setSelectedItem(I)V

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarView:Landroid/widget/GridView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->updateTitle()V

    .line 153
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_prev_month:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->prevMonthButton:Landroid/widget/ImageButton;

    .line 71
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_next_month:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->nextMonthButton:Landroid/widget/ImageButton;

    .line 73
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_month_year:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthYearView:Landroid/widget/TextView;

    .line 74
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_grid:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarView:Landroid/widget/GridView;

    .line 76
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->prevMonthButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/widgets/calendar/CalendarView$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/calendar/CalendarView$1;-><init>(Lcom/biznessapps/widgets/calendar/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->nextMonthButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/biznessapps/widgets/calendar/CalendarView$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/widgets/calendar/CalendarView$2;-><init>(Lcom/biznessapps/widgets/calendar/CalendarView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void
.end method

.method private isSelectedDay(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    .locals 6
    .param p1, "obj"    # Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .prologue
    const/4 v3, 0x1

    .line 99
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 100
    .local v2, "year":I
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 101
    .local v1, "month":I
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 103
    .local v0, "day":I
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ne v2, v4, :cond_0

    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-ne v1, v4, :cond_0

    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    if-ne v0, v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public firstDay(I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    const/4 v0, 0x1

    .line 200
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBlockedDays()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->blockedDays:Ljava/util/List;

    return-object v0
.end method

.method public getDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->date:Ljava/util/Date;

    return-object v0
.end method

.method public getHolidayDays()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 239
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidayDays:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getHolidays()[I
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidays:[I

    return-object v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v0}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v0

    return v0
.end method

.method public getOnCellTouchListener()Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->onCellTouchListener:Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

    return-object v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v0}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v0

    return v0
.end method

.method public goToday()V
    .locals 4

    .prologue
    .line 208
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 209
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Landroid/util/MonthDisplayHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/MonthDisplayHelper;-><init>(II)V

    iput-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    .line 211
    invoke-direct {p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->initCells()V

    .line 212
    return-void
.end method

.method public isInHolidayDays(I)Z
    .locals 6
    .param p1, "day"    # I

    .prologue
    const/4 v3, 0x0

    .line 267
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 268
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    .line 269
    const/4 v4, 0x7

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 270
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "EEEE"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 271
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "dayString":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidayDays:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidayDays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v3

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidayDays:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isInHolidays(I)Z
    .locals 3
    .param p1, "date"    # I

    .prologue
    const/4 v1, 0x0

    .line 255
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidays:[I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidays:[I

    array-length v2, v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    :goto_0
    return v1

    .line 258
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidays:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 259
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidays:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    .line 260
    const/4 v1, 0x1

    goto :goto_0

    .line 258
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public lastDay(I)Z
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v0}, Landroid/util/MonthDisplayHelper;->getNumberOfDaysInMonth()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextMonth()V
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v0}, Landroid/util/MonthDisplayHelper;->nextMonth()V

    .line 185
    invoke-direct {p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->initCells()V

    .line 186
    return-void
.end method

.method public previousMonth()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v0}, Landroid/util/MonthDisplayHelper;->previousMonth()V

    .line 190
    invoke-direct {p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->initCells()V

    .line 191
    return-void
.end method

.method public selectDate(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/widgets/calendar/CalendarView;->setTimeInMillis(J)V

    .line 164
    return-void
.end method

.method public setBlockedDays(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 251
    .local p1, "blockedDays":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$BlockedDayEntity;>;"
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->blockedDays:Ljava/util/List;

    .line 252
    return-void
.end method

.method protected setDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->date:Ljava/util/Date;

    .line 220
    return-void
.end method

.method public setHolidayDays(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 243
    .local p1, "holidayDays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidayDays:Ljava/util/ArrayList;

    .line 244
    return-void
.end method

.method public setHolidays([I)V
    .locals 0
    .param p1, "holidays"    # [I

    .prologue
    .line 235
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->holidays:[I

    .line 236
    return-void
.end method

.method public setOnCellTouchListener(Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;)V
    .locals 0
    .param p1, "p"    # Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->onCellTouchListener:Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;

    .line 224
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 4
    .param p1, "milliseconds"    # J

    .prologue
    .line 156
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    new-instance v0, Landroid/util/MonthDisplayHelper;

    iget-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/MonthDisplayHelper;-><init>(II)V

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    .line 158
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->calendarRightNow:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->date:Ljava/util/Date;

    .line 159
    invoke-direct {p0}, Lcom/biznessapps/widgets/calendar/CalendarView;->initCells()V

    .line 160
    return-void
.end method

.method public updateStrings()V
    .locals 2

    .prologue
    .line 59
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_sunday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_sunday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 60
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_monday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_monday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_tuesday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_tuesday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 62
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_wednesday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_wednesday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_thursday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_thursday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 64
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_friday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_friday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 65
    sget v0, Lcom/biznessapps/layout/R$id;->calendar_saturday_label_view:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/widgets/calendar/CalendarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/biznessapps/layout/R$string;->calendar_saturday:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 66
    return-void
.end method

.method protected updateTitle()V
    .locals 5

    .prologue
    .line 194
    new-instance v0, Ljava/util/Date;

    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v2}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, -0x76c

    iget-object v3, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v3}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Ljava/util/Date;-><init>(III)V

    .line 195
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MMMM yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 196
    .local v1, "formatter":Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthYearView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    return-void
.end method

.method protected weekIsOutMonth(I)Z
    .locals 2
    .param p1, "w"    # I

    .prologue
    .line 175
    const/4 v0, 0x0

    .local v0, "d":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 176
    iget-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarView;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v1, p1, v0}, Landroid/util/MonthDisplayHelper;->isWithinCurrentMonth(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x0

    .line 180
    :goto_1
    return v1

    .line 175
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method
