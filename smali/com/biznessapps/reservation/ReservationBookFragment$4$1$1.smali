.class Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->onPostExecute(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

.field final synthetic val$items:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment$4$1;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iput-object p2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->val$items:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->val$items:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    .line 305
    .local v0, "item":Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->selectedDate:Ljava/util/Date;
    invoke-static {v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1300(Lcom/biznessapps/reservation/ReservationBookFragment;)Ljava/util/Date;

    move-result-object v2

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->apptDate:Ljava/util/Date;
    invoke-static {v1, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$2902(Lcom/biznessapps/reservation/ReservationBookFragment;Ljava/util/Date;)Ljava/util/Date;

    .line 306
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->apptTime:Lcom/biznessapps/reservation/entities/ReservationTimeItem;
    invoke-static {v1, v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$3002(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/reservation/entities/ReservationTimeItem;)Lcom/biznessapps/reservation/entities/ReservationTimeItem;

    .line 307
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->confirmButton:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$3100(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 308
    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v1, v1, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$4$1$1;->this$2:Lcom/biznessapps/reservation/ReservationBookFragment$4$1;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationBookFragment$4$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$4;

    iget-object v2, v2, Lcom/biznessapps/reservation/ReservationBookFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->confirmButton:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$3100(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v2

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->updateButtonsState(Landroid/widget/TextView;)V
    invoke-static {v1, v2}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$600(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/widget/TextView;)V

    .line 309
    return-void
.end method
