.class Lcom/biznessapps/reservation/ReservationBookFragment$4;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationBookFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V
    .locals 0

    .prologue
    .line 239
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 242
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v5

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->updateButtonsState(Landroid/widget/TextView;)V
    invoke-static {v4, v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$600(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/widget/TextView;)V

    .line 244
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->root:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1800(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->calendar_container:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 245
    .local v1, "calendarContainer":Landroid/view/ViewGroup;
    sget v4, Lcom/biznessapps/layout/R$id;->arrow_navigation:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 246
    .local v0, "arrow":Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1900(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v4

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->getOnClickListener(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;
    invoke-static {v0, v1, v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2000(Landroid/widget/ImageView;Landroid/view/ViewGroup;Lcom/biznessapps/api/UiSettings;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$000(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/reservation/entities/ReservationServiceItem;->getRestWeeks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/calendar/CalendarView;->setHolidayDays(Ljava/util/ArrayList;)V

    .line 248
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$000(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->dataKeeper:Lcom/biznessapps/reservation/ReservationDataKeeper;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$700(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/reservation/ReservationDataKeeper;->getBlockedDays()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/calendar/CalendarView;->setBlockedDays(Ljava/util/List;)V

    .line 249
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$000(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$200(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/DatePickerBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->getPickerDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/biznessapps/widgets/calendar/CalendarView;->setTimeInMillis(J)V

    .line 252
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_0

    .line 253
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 254
    .local v2, "currentTime":Ljava/util/Date;
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->isAvailableDate(Ljava/util/Date;)Z
    invoke-static {v4, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2100(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v4, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1302(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 261
    .end local v2    # "currentTime":Ljava/util/Date;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 262
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$000(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/calendar/CalendarView;->selectDate(Ljava/util/Date;)V

    .line 263
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$200(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/DatePickerBar;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/biznessapps/widgets/calendar/DatePickerBar;->setPickerDate(Ljava/util/Date;)V

    .line 265
    new-instance v4, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    invoke-direct {v4, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment$4;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    :goto_1
    return-void

    .line 257
    .restart local v2    # "currentTime":Ljava/util/Date;
    :cond_1
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v5, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v6, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->correctDateWithLocationTimezone(Ljava/util/Date;)Ljava/util/Date;
    invoke-static {v6, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2200(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v6

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->nextAvailableDate(Ljava/util/Date;)Ljava/util/Date;
    invoke-static {v5, v6}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2300(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v5

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v4, v5}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1302(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;

    goto :goto_0

    .line 315
    .end local v2    # "currentTime":Ljava/util/Date;
    :cond_2
    iget-object v4, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeContainer:Landroid/view/ViewGroup;
    invoke-static {v4}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/view/ViewGroup;

    move-result-object v4

    sget v5, Lcom/biznessapps/layout/R$id;->list_view:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    .line 316
    .local v3, "listView":Landroid/widget/ListView;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1
.end method
