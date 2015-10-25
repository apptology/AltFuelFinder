.class Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/reservation/ReservationBookFragment$3$1;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment$3$1;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$3$1;

    iput-object p2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBooked(Lcom/biznessapps/reservation/entities/ReservationServiceItem;)V
    .locals 2
    .param p1, "item"    # Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$3$1;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->service:Lcom/biznessapps/reservation/entities/ReservationServiceItem;
    invoke-static {v0, p1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1702(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/reservation/entities/ReservationServiceItem;)Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    .line 224
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$3$1;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 225
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$3$1;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$3;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->timeButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$400(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 226
    return-void
.end method

.method public onShared(Lcom/biznessapps/reservation/entities/ReservationServiceItem;)V
    .locals 1
    .param p1, "item"    # Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    .prologue
    .line 230
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$3$1$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/biznessapps/common/social/ui/ShareComponent;->showSharingOptionDialog(Landroid/app/Activity;)V

    .line 231
    return-void
.end method
