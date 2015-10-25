.class Lcom/biznessapps/reservation/ReservationBookFragment$2$1;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/reservation/ReservationBookFragment$2;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment$2;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 183
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$2;

    iget-object v1, v0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/location/entities/LocationEntity;

    # setter for: Lcom/biznessapps/reservation/ReservationBookFragment;->location:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v1, v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1102(Lcom/biznessapps/reservation/ReservationBookFragment;Lcom/biznessapps/location/entities/LocationEntity;)Lcom/biznessapps/location/entities/LocationEntity;

    .line 184
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$2;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1200(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 185
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$2$1;->this$1:Lcom/biznessapps/reservation/ReservationBookFragment$2;

    iget-object v0, v0, Lcom/biznessapps/reservation/ReservationBookFragment$2;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationBookFragment;->serviceButton:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$1200(Lcom/biznessapps/reservation/ReservationBookFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->performClick()Z

    .line 186
    return-void
.end method
