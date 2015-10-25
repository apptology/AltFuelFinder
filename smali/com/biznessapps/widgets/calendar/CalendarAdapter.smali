.class public Lcom/biznessapps/widgets/calendar/CalendarAdapter;
.super Landroid/widget/BaseAdapter;
.source "CalendarAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


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

.field private calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

.field private cellData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/widgets/calendar/CalendarCellData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private inflater:Landroid/view/LayoutInflater;

.field private monthHelper:Landroid/util/MonthDisplayHelper;

.field private selectedItem:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/biznessapps/widgets/calendar/CalendarView;Ljava/util/List;)V
    .locals 4
    .param p1, "view"    # Lcom/biznessapps/widgets/calendar/CalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/widgets/calendar/CalendarView;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/widgets/calendar/CalendarCellData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "cellData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/widgets/calendar/CalendarCellData;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 38
    sget-boolean v1, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    .line 40
    invoke-virtual {p1}, Lcom/biznessapps/widgets/calendar/CalendarView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->context:Landroid/content/Context;

    .line 41
    iput-object p2, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 43
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v1, Landroid/util/MonthDisplayHelper;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/util/MonthDisplayHelper;-><init>(II)V

    iput-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    .line 44
    const/4 v1, -0x1

    iput v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->selectedItem:I

    .line 46
    iget-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->context:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/biznessapps/widgets/calendar/CalendarView;Ljava/util/List;Landroid/util/MonthDisplayHelper;)V
    .locals 1
    .param p1, "view"    # Lcom/biznessapps/widgets/calendar/CalendarView;
    .param p3, "helper"    # Landroid/util/MonthDisplayHelper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/biznessapps/widgets/calendar/CalendarView;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/widgets/calendar/CalendarCellData;",
            ">;",
            "Landroid/util/MonthDisplayHelper;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p2, "cellData":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/widgets/calendar/CalendarCellData;>;"
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;-><init>(Lcom/biznessapps/widgets/calendar/CalendarView;Ljava/util/List;)V

    .line 33
    iput-object p3, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    .line 34
    invoke-virtual {p1}, Lcom/biznessapps/widgets/calendar/CalendarView;->getBlockedDays()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->blockedDays:Ljava/util/List;

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/widgets/calendar/CalendarAdapter;Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/calendar/CalendarAdapter;
    .param p1, "x1"    # Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->isInPreviousMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)Lcom/biznessapps/widgets/calendar/CalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/calendar/CalendarAdapter;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/biznessapps/widgets/calendar/CalendarAdapter;Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/widgets/calendar/CalendarAdapter;
    .param p1, "x1"    # Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->isInNextMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z

    move-result v0

    return v0
.end method

.method private isInCurrentMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    .locals 3
    .param p1, "obj"    # Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v2}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v1

    .line 83
    .local v1, "thisYear":I
    iget-object v2, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v2}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v0

    .line 85
    .local v0, "thisMonth":I
    iget v2, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ne v1, v2, :cond_0

    iget v2, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isInNextMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    .locals 5
    .param p1, "obj"    # Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 102
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v4}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v1

    .line 103
    .local v1, "thisYear":I
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v4}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v0

    .line 105
    .local v0, "thisMonth":I
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-le v4, v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 107
    :cond_1
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ge v4, v1, :cond_2

    move v2, v3

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-gt v4, v0, :cond_0

    move v2, v3

    .line 111
    goto :goto_0
.end method

.method private isInPreviousMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z
    .locals 5
    .param p1, "obj"    # Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v4}, Landroid/util/MonthDisplayHelper;->getYear()I

    move-result v1

    .line 90
    .local v1, "thisYear":I
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->monthHelper:Landroid/util/MonthDisplayHelper;

    invoke-virtual {v4}, Landroid/util/MonthDisplayHelper;->getMonth()I

    move-result v0

    .line 92
    .local v0, "thisMonth":I
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-ge v4, v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v2

    .line 94
    :cond_1
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->year:I

    if-le v4, v1, :cond_2

    move v2, v3

    .line 95
    goto :goto_0

    .line 96
    :cond_2
    iget v4, p1, Lcom/biznessapps/widgets/calendar/CalendarCellData;->month:I

    if-lt v4, v0, :cond_0

    move v2, v3

    .line 98
    goto :goto_0
.end method


# virtual methods
.method public getCalendarView()Lcom/biznessapps/widgets/calendar/CalendarView;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 52
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSelectedItem()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->selectedItem:I

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "cell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    if-nez p2, :cond_1

    .line 118
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->inflater:Landroid/view/LayoutInflater;

    sget v6, Lcom/biznessapps/layout/R$layout;->calendar_cell:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 119
    new-instance v0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

    .end local v0    # "cell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    invoke-direct {v0, p0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;-><init>(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)V

    .line 121
    .restart local v0    # "cell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    sget v4, Lcom/biznessapps/layout/R$id;->calendar_cell_date:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 122
    .local v3, "textView":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setDateView(Landroid/widget/TextView;)V

    .line 123
    invoke-virtual {v0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->getDateView()Landroid/widget/TextView;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 126
    new-instance v4, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$1;-><init>(Lcom/biznessapps/widgets/calendar/CalendarAdapter;)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    .end local v3    # "textView":Landroid/widget/TextView;
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->cellData:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/widgets/calendar/CalendarCellData;

    .line 163
    .local v2, "obj":Lcom/biznessapps/widgets/calendar/CalendarCellData;
    const-string v4, "%d"

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, v2, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {v2}, Lcom/biznessapps/widgets/calendar/CalendarCellData;->isToday()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {v0, v8}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setTextColor(I)V

    .line 172
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->blockedDays:Ljava/util/List;

    invoke-virtual {v2, v4}, Lcom/biznessapps/widgets/calendar/CalendarCellData;->isBlocked(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    sget v4, Lcom/biznessapps/layout/R$drawable;->today:I

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(I)V

    .line 174
    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBlocked(Z)V

    .line 189
    :goto_2
    iget v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->selectedItem:I

    if-ne p1, v4, :cond_0

    .line 190
    sget v4, Lcom/biznessapps/layout/R$drawable;->datecellselected:I

    invoke-virtual {v0, v4, v5}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(IZ)V

    .line 191
    invoke-virtual {v0, v8, v5}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setTextColor(IZ)V

    .line 193
    :cond_0
    iput-object v0, v2, Lcom/biznessapps/widgets/calendar/CalendarCellData;->cell:Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

    .line 194
    return-object p2

    .line 159
    .end local v2    # "obj":Lcom/biznessapps/widgets/calendar/CalendarCellData;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    check-cast v0, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;

    .restart local v0    # "cell":Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;
    goto :goto_0

    .line 166
    .restart local v2    # "obj":Lcom/biznessapps/widgets/calendar/CalendarCellData;
    :cond_2
    invoke-direct {p0, v2}, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->isInCurrentMonth(Lcom/biznessapps/widgets/calendar/CalendarCellData;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 167
    const v4, -0xc4b6a8

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setTextColor(I)V

    goto :goto_1

    .line 169
    :cond_3
    const v4, -0x7f7f80

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setTextColor(I)V

    goto :goto_1

    .line 175
    :cond_4
    invoke-virtual {v2}, Lcom/biznessapps/widgets/calendar/CalendarCellData;->isToday()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 176
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    iget v6, v2, Lcom/biznessapps/widgets/calendar/CalendarCellData;->dayOfWeek:I

    invoke-virtual {v4, v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->isInHolidayDays(I)Z

    move-result v4

    if-nez v4, :cond_5

    .line 177
    .local v1, "isEnabledToday":Z
    :goto_3
    if-eqz v1, :cond_6

    sget v4, Lcom/biznessapps/layout/R$drawable;->datecell:I

    :goto_4
    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(I)V

    .line 178
    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setEnabled(Z)V

    goto :goto_2

    .end local v1    # "isEnabledToday":Z
    :cond_5
    move v1, v5

    .line 176
    goto :goto_3

    .line 177
    .restart local v1    # "isEnabledToday":Z
    :cond_6
    sget v4, Lcom/biznessapps/layout/R$drawable;->today:I

    goto :goto_4

    .line 179
    .end local v1    # "isEnabledToday":Z
    :cond_7
    invoke-virtual {v2}, Lcom/biznessapps/widgets/calendar/CalendarCellData;->beforeToday()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 180
    sget v4, Lcom/biznessapps/layout/R$drawable;->today:I

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(I)V

    .line 181
    invoke-virtual {v0, v5}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setEnabled(Z)V

    goto :goto_2

    .line 182
    :cond_8
    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    iget v6, v2, Lcom/biznessapps/widgets/calendar/CalendarCellData;->dayOfWeek:I

    invoke-virtual {v4, v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->isInHolidayDays(I)Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v4, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    iget v6, v2, Lcom/biznessapps/widgets/calendar/CalendarCellData;->day:I

    invoke-virtual {v4, v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->isInHolidays(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 183
    :cond_9
    sget v4, Lcom/biznessapps/layout/R$drawable;->today:I

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(I)V

    .line 184
    invoke-virtual {v0, v5}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setEnabled(Z)V

    goto :goto_2

    .line 186
    :cond_a
    sget v4, Lcom/biznessapps/layout/R$drawable;->datecell:I

    invoke-virtual {v0, v4}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setBackground(I)V

    .line 187
    invoke-virtual {v0, v1}, Lcom/biznessapps/widgets/calendar/CalendarAdapter$CalendarCell;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setCalendarView(Lcom/biznessapps/widgets/calendar/CalendarView;)V
    .locals 0
    .param p1, "calendarView"    # Lcom/biznessapps/widgets/calendar/CalendarView;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    .line 79
    return-void
.end method

.method public setSelectedItem(I)V
    .locals 0
    .param p1, "selectedItem"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/biznessapps/widgets/calendar/CalendarAdapter;->selectedItem:I

    .line 71
    return-void
.end method
