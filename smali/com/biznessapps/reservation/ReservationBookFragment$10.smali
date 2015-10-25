.class Lcom/biznessapps/reservation/ReservationBookFragment$10;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationBookFragment;->showPaymentsDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$10;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    iput-object p2, p0, Lcom/biznessapps/reservation/ReservationBookFragment$10;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 561
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$10;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    const/4 v1, 0x4

    # invokes: Lcom/biznessapps/reservation/ReservationBookFragment;->processConfirmAppt(I)V
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationBookFragment;->access$3500(Lcom/biznessapps/reservation/ReservationBookFragment;I)V

    .line 562
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$10;->val$dialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationBookFragment$10;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 565
    :cond_0
    return-void
.end method
