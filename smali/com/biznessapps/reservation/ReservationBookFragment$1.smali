.class Lcom/biznessapps/reservation/ReservationBookFragment$1;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Lcom/biznessapps/widgets/calendar/CalendarView$OnCellTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment;->initViews(Landroid/view/ViewGroup;)V
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
    .line 131
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->calendarView:Lcom/biznessapps/widgets/calendar/CalendarView;
    invoke-static {v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$000(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/CalendarView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/biznessapps/widgets/calendar/CalendarView;->getDate()Ljava/util/Date;

    move-result-object v1

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->updateSelectedDate(Ljava/util/Date;)V
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$100(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)V

    .line 136
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->datePicker:Lcom/biznessapps/widgets/calendar/DatePickerBar;
    invoke-static {v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$200(Lcom/biznessapps/reservation/ReservationBookFragment;)Lcom/biznessapps/widgets/calendar/DatePickerBar;

    move-result-object v1

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->updateDatePickerState(Lcom/biznessapps/widgets/calendar/DatePickerBar;)V
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$300(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/widgets/calendar/DatePickerBar;)V

    .line 138
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 139
    return-void
.end method
