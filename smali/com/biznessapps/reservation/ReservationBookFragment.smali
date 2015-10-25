.class public Lcom/biznessapps/reservation/ReservationBookFragment;
.super Lcom/biznessapps/common/fragments/CommonFragment;
.source "ReservationBookFragment.java"


# static fields
.field private static final days:[Ljava/lang/String;


# instance fields
.field private apptDate:Ljava/util/Date;

.field private apptTime:Lcom/biznessapps/reservation/entities/ReservationTimeItem;

.field private buttonsContainer:Landroid/view/ViewGroup;

.field private calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

.field private confirmButton:Landroid/widget/TextView;

.field private confirmContainer:Landroid/view/ViewGroup;

.field private dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

.field private datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;

.field private listView:Landroid/widget/ListView;

.field private location:Lcom/biznessapps/location/entities/LocationEntity;

.field private locationButton:Landroid/widget/TextView;

.field private locationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/location/entities/LocationEntity;",
            ">;"
        }
    .end annotation
.end field

.field private networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

.field private paymentTransactionID:Ljava/lang/String;

.field private paypalClientId:Ljava/lang/String;

.field private selectedDate:Ljava/util/Date;

.field private service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

.field private serviceButton:Landroid/widget/TextView;

.field private timeButton:Landroid/widget/TextView;

.field private timeContainer:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sunday"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "monday"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "tuesday"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "wednesday"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "thursday"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "friday"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "saturday"

    aput-object v2, v0, v1

    sput-object v0, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/biznessapps/common/fragments/CommonFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/CalendarView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->updateSelectedDate(Ljava/util/Date;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/location/entities/LocationEntity;)Lcom/biznessapps/location/entities/LocationEntity;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Lcom/biznessapps/location/entities/LocationEntity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/reservation/entities/ReservationServiceItem;)Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/DatePickerBar;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 57
    invoke-static {p0, p1, p2}, Lcom/biznessapps/reservation/ReservationBookFragment;->getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->isAvailableDate(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->correctDateWithLocationTimezone(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->nextAvailableDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/util/Date;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptDate:Ljava/util/Date;

    return-object p1
.end method

.method static synthetic access$300(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/widgets/calendar/DatePickerBar;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Lcom/biznessapps/widgets/calendar/DatePickerBar;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->updateDatePickerState(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V

    return-void
.end method

.method static synthetic access$3002(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/reservation/entities/ReservationTimeItem;)Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptTime:Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/biznessapps/reservation/ReservationBookFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->showPaymentsDialog()V

    return-void
.end method

.method static synthetic access$3300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->paypalClientId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->launchPaypal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/biznessapps/reservation/ReservationBookFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->processConfirmAppt(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->updateButtonsState(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/ReservationDataKeeper;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method static synthetic access$900(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/reservation/ReservationBookFragment;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    return-object v0
.end method

.method private correctDateWithLocationTimezone(Ljava/util/Date;)Ljava/util/Date;
    .locals 10
    .param p1, "primaryDate"    # Ljava/util/Date;

    .prologue
    const/4 v4, 0x0

    .line 634
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 635
    .local v7, "calendar":Ljava/util/Calendar;
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getTimezoneValue()F

    move-result v9

    .line 638
    .local v9, "locationTimeZone":F
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v8

    .line 639
    .local v8, "gmtOffset":I
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const v3, 0x4a5bba00    # 3600000.0f

    mul-float/2addr v3, v9

    float-to-int v3, v3

    int-to-long v5, v3

    add-long/2addr v1, v5

    int-to-long v5, v8

    sub-long/2addr v1, v5

    invoke-virtual {v7, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 642
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 643
    .local v0, "correctedDate":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {v7, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v7, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 644
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private static getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;
    .locals 2
    .param p0, "arrowNavigation"    # Landroid/widget/ImageView;
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "uiSettings"    # Lcom/biznessapps/api/UiSettings;

    .prologue
    .line 750
    sget v1, Lcom/biznessapps/layout/R$id;->data_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 751
    .local v0, "dataContainer":Landroid/view/ViewGroup;
    new-instance v1, Lcom/biznessapps/reservation/ReservationBookFragment$11;

    invoke-direct {v1, v0, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$11;-><init>(Landroid/view/ViewGroup;Landroid/widget/ImageView;)V

    return-object v1
.end method

.method private getTimeFromDate(Ljava/util/Date;I)Ljava/lang/String;
    .locals 8
    .param p1, "reservDate"    # Ljava/util/Date;
    .param p2, "timeFromValue"    # I

    .prologue
    .line 586
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 588
    .local v0, "currentDate":J
    int-to-long v4, p2

    const-wide/32 v6, 0xea60

    mul-long v2, v4, v6

    .line 589
    .local v2, "offset":J
    new-instance v4, Ljava/util/Date;

    add-long v5, v0, v2

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/biznessapps/utils/DateUtils;->getStandartDateFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initConfirmContainerControls(Landroid/view/ViewGroup;)V
    .locals 22
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 437
    sget v18, Lcom/biznessapps/layout/R$id;->thumbnail_image:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 438
    .local v15, "thumbnailView":Landroid/widget/ImageView;
    sget v18, Lcom/biznessapps/layout/R$id;->service_name_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 439
    .local v13, "serviceNameView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->address_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 440
    .local v4, "addressView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->address_2_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 442
    .local v3, "address2View":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->time_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 443
    .local v17, "timeView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->price_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 444
    .local v12, "priceView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->pre_payment_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 446
    .local v9, "prePaymentView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->time_label_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 447
    .local v16, "timeLabelView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->price_label_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 448
    .local v11, "priceLabelView":Landroid/widget/TextView;
    sget v18, Lcom/biznessapps/layout/R$id;->pre_payment_label_view:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 450
    .local v8, "prePaymentLabelView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getFeatureTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getEvenRowTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getOddRowTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 461
    sget v18, Lcom/biznessapps/layout/R$id;->middle_container:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 462
    .local v7, "middleContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getOddRowColor()I

    move-result v18

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 463
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    const/16 v19, 0x78

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 464
    sget v18, Lcom/biznessapps/layout/R$id;->price_container:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 465
    .local v10, "priceContainer":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getEvenRowColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 468
    sget v18, Lcom/biznessapps/layout/R$id;->confirm_button:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 469
    .local v5, "confirmButton":Landroid/widget/Button;
    new-instance v18, Lcom/biznessapps/reservation/ReservationBookFragment$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment$6;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    sget v18, Lcom/biznessapps/layout/R$id;->share_button:I

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 477
    .local v14, "shareButton":Landroid/widget/Button;
    new-instance v18, Lcom/biznessapps/reservation/ReservationBookFragment$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment$7;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v18

    invoke-virtual {v5}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v18

    invoke-virtual {v14}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/biznessapps/utils/CommonUtils;->overrideImageColor(ILandroid/graphics/drawable/Drawable;)V

    .line 489
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v6

    .line 490
    .local v6, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getThumbnail()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v15}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadCircledBackground(Ljava/lang/String;Landroid/view/View;)V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v4, v3, v0}, Lcom/biznessapps/location/LocationUtils;->setAddress(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptDate:Ljava/util/Date;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptDate:Ljava/util/Date;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptTime:Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getFrom()I

    move-result v19

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->getTimeFromDate(Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_0
    const-string v18, "%s%.2f"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getCurrencySign()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getPrice()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const-string v18, "%s%.2f"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getCurrencySign()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getReserveFee()F

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    sget v18, Lcom/biznessapps/layout/R$string;->time_label:I

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 502
    sget v18, Lcom/biznessapps/layout/R$string;->price:I

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 503
    sget v18, Lcom/biznessapps/layout/R$string;->pre_payment_label:I

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 504
    sget v18, Lcom/biznessapps/layout/R$string;->share:I

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/Button;->setText(I)V

    .line 505
    sget v18, Lcom/biznessapps/layout/R$string;->confirm:I

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setText(I)V

    .line 506
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;

    .line 372
    const-string v0, ""

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->paymentTransactionID:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getLocations()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationList:Ljava/util/List;

    .line 374
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationList:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 376
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;

    .line 382
    :cond_0
    :goto_0
    return-void

    .line 379
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationList:Ljava/util/List;

    .line 380
    new-instance v0, Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {v0}, Lcom/biznessapps/location/entities/LocationEntity;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;

    goto :goto_0
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationBookFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$2;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationBookFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$3;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;

    new-instance v1, Lcom/biznessapps/reservation/ReservationBookFragment$4;

    invoke-direct {v1, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$4;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    return-void
.end method

.method private isAvailableDate(Ljava/util/Date;)Z
    .locals 5
    .param p1, "dateToCheck"    # Ljava/util/Date;

    .prologue
    .line 698
    const/4 v2, 0x0

    .line 699
    .local v2, "isAvailable":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 700
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 703
    sget-object v3, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v3, v4

    .line 706
    .local v1, "dayString":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v3}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getRestWeeks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 707
    const/4 v2, 0x1

    .line 709
    :cond_0
    return v2
.end method

.method private launchPaypal(Ljava/lang/String;)V
    .locals 3
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getReserveFee()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PaymentIntegrateViewController"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const-string v1, "TAB_LABEL"

    sget v2, Lcom/biznessapps/layout/R$string;->pre_payment_label:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "PaymentIntegrateViewController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 361
    const-string v1, "CURRENCY_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getCurrency()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 362
    const-string v1, "CLIENT_ID_EXTRA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 363
    const-string v1, "serviceName"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 364
    const-string v1, "subTotal"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getReserveFee()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 365
    const-string v1, "service"

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 366
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 368
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private nextAvailableDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 5
    .param p1, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 648
    invoke-static {p1}, Lcom/biznessapps/utils/DateUtils;->getTomorrowDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 649
    .local v2, "nextDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 651
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 652
    sget-object v3, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v1, v3, v4

    .line 656
    .local v1, "dayString":Ljava/lang/String;
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v3}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getRestWeeks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v4, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_1

    .line 657
    const/4 v2, 0x0

    .line 668
    :cond_0
    return-object v2

    .line 661
    :cond_1
    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v3}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getRestWeeks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 662
    invoke-static {v2, p1}, Lcom/biznessapps/utils/DateUtils;->isBiggerOrEqual(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 666
    :cond_2
    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getTomorrowDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 667
    goto :goto_0
.end method

.method private prevAvailableDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "currentDate"    # Ljava/util/Date;

    .prologue
    .line 672
    invoke-static {p1}, Lcom/biznessapps/utils/DateUtils;->getYesterdayDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 675
    .local v2, "previousDate":Ljava/util/Date;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-static {v4}, Lcom/biznessapps/utils/DateUtils;->getTomorrowDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->correctDateWithLocationTimezone(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 677
    .local v3, "tomorrowsDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 680
    .local v0, "calendar":Ljava/util/Calendar;
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 681
    sget-object v4, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-object v1, v4, v5

    .line 683
    .local v1, "dayString":Ljava/lang/String;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getRestWeeks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 684
    invoke-static {v3, v2}, Lcom/biznessapps/utils/DateUtils;->isBiggerThan(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 685
    const/4 v2, 0x0

    .line 694
    :cond_0
    return-object v2

    .line 688
    :cond_1
    invoke-static {p1, v2}, Lcom/biznessapps/utils/DateUtils;->isBiggerThan(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 692
    :cond_2
    invoke-static {v2}, Lcom/biznessapps/utils/DateUtils;->getYesterdayDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 693
    goto :goto_0
.end method

.method private processConfirmAppt(I)V
    .locals 18
    .param p1, "paymentMethod"    # I

    .prologue
    .line 593
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v12, "yyyy-MM-dd"

    invoke-direct {v2, v12}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 594
    .local v2, "formatter":Ljava/text/SimpleDateFormat;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptDate:Ljava/util/Date;

    invoke-virtual {v2, v12}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "dateString":Ljava/lang/String;
    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptTime:Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    invoke-virtual {v15}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getFrom()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 596
    .local v9, "timeFrom":Ljava/lang/String;
    const-string v12, "%d"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->apptTime:Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    invoke-virtual {v15}, Lcom/biznessapps/reservation/entities/ReservationTimeItem;->getTo()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 597
    .local v10, "timeTo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v12}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getId()Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "itemId":Ljava/lang/String;
    const-string v12, "%f"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v15}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getReserveFee()F

    move-result v15

    invoke-static {v15}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 599
    .local v6, "paidAmount":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v12}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getName()Ljava/lang/String;

    move-result-object v8

    .line 600
    .local v8, "serviceName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v12}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getNote()Ljava/lang/String;

    move-result-object v5

    .line 601
    .local v5, "note":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v12}, Lcom/biznessapps/location/entities/LocationEntity;->getId()Ljava/lang/String;

    move-result-object v4

    .line 603
    .local v4, "locationId":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppHttpUtils;->getEmptyParams()Ljava/util/Map;

    move-result-object v7

    .line 604
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v12}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getSessionToken()Ljava/lang/String;

    move-result-object v11

    .line 605
    .local v11, "token":Ljava/lang/String;
    const-string v12, "app_code"

    invoke-virtual/range {p0 .. p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v13

    invoke-virtual {v13}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v12, "tab_id"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v12, "action"

    const-string v13, "1"

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    const-string v12, "tk"

    invoke-interface {v7, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v12, "created_time"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v14, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v12, "d"

    invoke-interface {v7, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v12, "tf"

    invoke-interface {v7, v12, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    const-string v12, "tt"

    invoke-interface {v7, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v12, "i"

    invoke-interface {v7, v12, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    const-string v12, "timezone"

    invoke-static {}, Lcom/biznessapps/utils/DateUtils;->getTimezoneValue()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v12, "pa"

    invoke-interface {v7, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v12, "sn"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    const-string v12, "n"

    invoke-interface {v7, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v12, "ti"

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/biznessapps/reservation/ReservationBookFragment;->paymentTransactionID:Ljava/lang/String;

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v12, "cm"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v12, "loc_id"

    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/biznessapps/reservation/ReservationBookFragment;->loadPostData(Ljava/util/Map;)V

    .line 624
    return-void
.end method

.method private showPaymentsDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    .line 510
    const/4 v9, 0x0

    .line 511
    .local v9, "usePaypal":Z
    const/4 v8, 0x0

    .line 512
    .local v8, "useCash":Z
    iget-object v11, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v11}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getPaymentMethods()Ljava/util/List;

    move-result-object v6

    .line 513
    .local v6, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;

    .line 514
    .local v5, "method":Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;
    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->getGatewayType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    .line 515
    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->getGatewayAppId()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->paypalClientId:Ljava/lang/String;

    .line 516
    const/4 v9, 0x1

    .line 518
    :cond_1
    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;->getGatewayType()I

    move-result v11

    if-ne v11, v13, :cond_0

    .line 519
    const/4 v8, 0x1

    goto :goto_0

    .line 525
    .end local v5    # "method":Lcom/biznessapps/reservation/ReservationDataKeeper$PaymentMethod;
    :cond_2
    iget-object v11, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v11}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getReserveFee()F

    move-result v11

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-nez v11, :cond_3

    .line 526
    invoke-direct {p0, v13}, Lcom/biznessapps/reservation/ReservationBookFragment;->processConfirmAppt(I)V

    .line 577
    :goto_1
    return-void

    .line 528
    :cond_3
    if-eqz v8, :cond_4

    if-eqz v9, :cond_4

    .line 530
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 531
    .local v2, "context":Landroid/content/Context;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v11

    invoke-direct {v0, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 532
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    sget v11, Lcom/biznessapps/layout/R$layout;->payment_options_layout:I

    invoke-static {v2, v11}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v10

    .line 533
    .local v10, "view":Landroid/view/View;
    sget v11, Lcom/biznessapps/layout/R$id;->paypal_button:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    .line 534
    .local v7, "paypalButton":Landroid/widget/Button;
    sget v11, Lcom/biznessapps/layout/R$id;->cash_button:I

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 535
    .local v1, "cashButton":Landroid/widget/Button;
    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 536
    sget v11, Lcom/biznessapps/layout/R$string;->payment_method:I

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 537
    sget v11, Lcom/biznessapps/layout/R$string;->cancel:I

    new-instance v12, Lcom/biznessapps/reservation/ReservationBookFragment$8;

    invoke-direct {v12, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$8;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    invoke-virtual {v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 546
    sget v11, Lcom/biznessapps/layout/R$string;->paypal:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/reservation/ReservationBookFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 547
    sget v11, Lcom/biznessapps/layout/R$string;->cash:I

    invoke-virtual {p0, v11}, Lcom/biznessapps/reservation/ReservationBookFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 548
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 549
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v11, Lcom/biznessapps/reservation/ReservationBookFragment$9;

    invoke-direct {v11, p0, v3}, Lcom/biznessapps/reservation/ReservationBookFragment$9;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 558
    new-instance v11, Lcom/biznessapps/reservation/ReservationBookFragment$10;

    invoke-direct {v11, p0, v3}, Lcom/biznessapps/reservation/ReservationBookFragment$10;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/app/AlertDialog;)V

    invoke-virtual {v1, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 568
    .end local v0    # "alertBuilder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "cashButton":Landroid/widget/Button;
    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "dialog":Landroid/app/AlertDialog;
    .end local v7    # "paypalButton":Landroid/widget/Button;
    .end local v10    # "view":Landroid/view/View;
    :cond_4
    if-eqz v8, :cond_5

    .line 569
    invoke-direct {p0, v13}, Lcom/biznessapps/reservation/ReservationBookFragment;->processConfirmAppt(I)V

    goto :goto_1

    .line 570
    :cond_5
    if-eqz v9, :cond_6

    .line 571
    iget-object v11, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->paypalClientId:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/biznessapps/reservation/ReservationBookFragment;->launchPaypal(Ljava/lang/String;)V

    goto :goto_1

    .line 574
    :cond_6
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v11

    sget v12, Lcom/biznessapps/layout/R$string;->payment_disabled:I

    invoke-static {v11, v12}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;I)V

    goto :goto_1
.end method

.method private updateButtonsState(Landroid/widget/TextView;)V
    .locals 4
    .param p1, "activeButton"    # Landroid/widget/TextView;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 323
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 324
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 325
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 326
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v1}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 328
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 330
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 332
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->book_step1:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 336
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 351
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v0}, Lcom/biznessapps/api/UiSettings;->getButtonBgColor()I

    move-result v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/utils/CommonUtils;->setColorWithoutMutation(ILandroid/graphics/drawable/Drawable;)V

    .line 352
    return-void

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->book_step2:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 340
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->book_step3:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 344
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 346
    :cond_2
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$drawable;->book_step4:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 348
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->initConfirmContainerControls(Landroid/view/ViewGroup;)V

    goto :goto_0
.end method

.method private updateDatePickerState(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V
    .locals 1
    .param p1, "datePickerBar"    # Lcom/biznessapps/widgets/calendar/DatePickerBar;

    .prologue
    .line 743
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 744
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->setPickerDate(Ljava/util/Date;)V

    .line 746
    :cond_0
    return-void
.end method

.method private updateSelectedDate(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 714
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getRestWeeks()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-object v3, Lcom/biznessapps/reservation/ReservationBookFragment;->days:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 715
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    .line 740
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->isAvailableDate(Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 721
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    goto :goto_0

    .line 725
    :cond_1
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    invoke-static {p1, v2}, Lcom/biznessapps/utils/DateUtils;->isBiggerOrEqual(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 726
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->nextAvailableDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 727
    .local v0, "nextDate":Ljava/util/Date;
    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    goto :goto_0

    .line 729
    .end local v0    # "nextDate":Ljava/util/Date;
    :cond_2
    invoke-direct {p0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->prevAvailableDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v1

    .line 733
    .local v1, "previousDate":Ljava/util/Date;
    if-eqz v1, :cond_3

    .line 734
    iput-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    goto :goto_0

    .line 736
    :cond_3
    invoke-static {p1}, Lcom/biznessapps/utils/DateUtils;->getTomorrowDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;

    goto :goto_0
.end method


# virtual methods
.method protected defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 165
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 386
    sget v0, Lcom/biznessapps/layout/R$layout;->reservation_book_layout:I

    return v0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    const-string v0, "reserv_order.php"

    return-object v0
.end method

.method protected getViewForBg()Landroid/view/View;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initViews(Landroid/view/ViewGroup;)V
    .locals 6
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 109
    sget v4, Lcom/biznessapps/layout/R$id;->location_button:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    .line 110
    sget v4, Lcom/biznessapps/layout/R$id;->service_button:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;

    .line 111
    sget v4, Lcom/biznessapps/layout/R$id;->time_button:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;

    .line 112
    sget v4, Lcom/biznessapps/layout/R$id;->confirm_button:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmButton:Landroid/widget/TextView;

    .line 113
    sget v4, Lcom/biznessapps/layout/R$id;->buttons_container:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    .line 114
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->buttonsContainer:Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 116
    sget v4, Lcom/biznessapps/layout/R$id;->buttons_top_container:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 117
    .local v1, "buttonsTopContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getNavigationBarColor()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 118
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-static {p1, v4}, Lcom/biznessapps/utils/ViewUtils;->setRootBgColor(Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 121
    sget v4, Lcom/biznessapps/layout/R$id;->time_root:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;

    .line 122
    sget v4, Lcom/biznessapps/layout/R$id;->confirm_root:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmContainer:Landroid/view/ViewGroup;

    .line 123
    sget v4, Lcom/biznessapps/layout/R$id;->top_container:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 124
    .local v3, "topContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmContainer:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->buttons_bottom_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 125
    .local v0, "buttonsBottomContainer":Landroid/view/ViewGroup;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 126
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v4}, Lcom/biznessapps/api/UiSettings;->getSectionBarColor()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 127
    sget v4, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;

    .line 128
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->listView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 130
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->calendar:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/widgets/calendar/CalendarView;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    .line 131
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    new-instance v5, Lcom/biznessapps/reservation/ReservationBookFragment$1;

    invoke-direct {v5, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$1;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/calendar/CalendarView;->setOnCellTouchListener(Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;)V

    .line 141
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;

    invoke-virtual {v4}, Lcom/biznessapps/widgets/calendar/CalendarView;->updateStrings()V

    .line 142
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->location_title:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 143
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->service:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 144
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->time:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 145
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->confirmButton:Landroid/widget/TextView;

    sget v5, Lcom/biznessapps/layout/R$string;->confirm:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 147
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;

    sget v5, Lcom/biznessapps/layout/R$id;->datepickerbar:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/biznessapps/widgets/calendar/DatePickerBar;

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;

    .line 148
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v5}, Lcom/biznessapps/api/UiSettings;->getButtonTextColor()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->setColor(I)V

    .line 149
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->initListeners()V

    .line 150
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->locationButton:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->performClick()Z

    .line 151
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    invoke-virtual {v4}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBackgroundUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->bgUrl:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getImageFetcherAccessor()Lcom/biznessapps/api/ImageFetcherAccessor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/ImageFetcherAccessor;->getImageFetcher()Lcom/biznessapps/utils/google/caching/ImageFetcher;

    move-result-object v2

    .line 153
    .local v2, "imageFetcher":Lcom/biznessapps/utils/google/caching/ImageFetcher;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->bgUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;

    invoke-virtual {v2, v4, p1, v5}, Lcom/biznessapps/utils/google/caching/ImageFetcher;->loadBgImage(Ljava/lang/String;Landroid/view/View;Lcom/biznessapps/api/UiSettings;)V

    .line 156
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "paymentTransactionID"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->paymentTransactionID:Ljava/lang/String;

    .line 103
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->processConfirmAppt(I)V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/biznessapps/common/fragments/CommonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 92
    invoke-virtual {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->tabId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;

    .line 93
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->root:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 94
    invoke-direct {p0}, Lcom/biznessapps/reservation/ReservationBookFragment;->initData()V

    .line 95
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 396
    invoke-static {p1}, Lcom/biznessapps/utils/json/JsonParser;->getNetworkResult(Ljava/lang/String;)Lcom/biznessapps/common/entities/NetworkResultEntity;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 6
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 404
    invoke-super {p0, p1}, Lcom/biznessapps/common/fragments/CommonFragment;->updateControlsWithData(Landroid/app/Activity;)V

    .line 405
    if-eqz p1, :cond_0

    .line 406
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/NetworkResultEntity;->isOk()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 407
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 408
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$string;->booking_successful:I

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/biznessapps/utils/ViewUtils;->showCustomToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 409
    const/16 v4, 0xf

    invoke-virtual {p1, v4, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 410
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 434
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment;->networkResult:Lcom/biznessapps/common/entities/NetworkResultEntity;

    invoke-virtual {v4}, Lcom/biznessapps/common/entities/NetworkResultEntity;->getErrorCode()I

    move-result v0

    .line 413
    .local v0, "errorCode":I
    const/4 v2, 0x0

    .line 414
    .local v2, "message":Ljava/lang/String;
    sget v4, Lcom/biznessapps/layout/R$string;->failure:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 415
    .local v3, "title":Ljava/lang/String;
    const/16 v4, 0x8

    if-ne v0, v4, :cond_3

    .line 416
    sget v4, Lcom/biznessapps/layout/R$string;->blocked_day:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 422
    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    .line 423
    new-instance v4, Lcom/biznessapps/reservation/ReservationBookFragment$5;

    invoke-direct {v4, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$5;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    invoke-static {p1, v3, v2, v4}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 417
    :cond_3
    const/4 v4, 0x5

    if-ne v0, v4, :cond_4

    .line 418
    sget v4, Lcom/biznessapps/layout/R$string;->reservation_max_service_limit:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 419
    :cond_4
    const/4 v4, 0x6

    if-ne v0, v4, :cond_2

    .line 420
    sget v4, Lcom/biznessapps/layout/R$string;->reservation_time_slot_filled:I

    invoke-virtual {p1, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
