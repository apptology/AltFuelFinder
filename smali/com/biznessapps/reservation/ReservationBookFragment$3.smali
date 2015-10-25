.class Lcom/biznessapps/reservation/ReservationBookFragment$3;
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
    .line 190
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 193
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1200(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v1

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->updateButtonsState(Landroid/widget/TextView;)V
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$600(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/widget/TextView;)V

    .line 195
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    const/4 v1, 0x0

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1302(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 196
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 197
    new-instance v0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;-><init>(Lcom/biznessapps/reservation/ReservationBookFragment$3;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 237
    return-void
.end method
