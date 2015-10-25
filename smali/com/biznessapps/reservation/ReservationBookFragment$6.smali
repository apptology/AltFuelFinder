.class Lcom/biznessapps/reservation/ReservationBookFragment$6;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment;->initConfirmContainerControls(Landroid/view/ViewGroup;)V
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
    .line 469
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$6;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 473
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$6;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->showPaymentsDialog()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$3200(Lcom/biznessapps/reservation/ReservationBookFragment;)V

    .line 474
    return-void
.end method
