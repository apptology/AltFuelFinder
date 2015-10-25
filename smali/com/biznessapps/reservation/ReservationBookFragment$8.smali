.class Lcom/biznessapps/reservation/ReservationBookFragment$8;
.super Ljava/lang/Object;
.source "ReservationBookFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationBookFragment;)V
    .locals 0

    .prologue
    .line 537
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationBookFragment$8;->this$0:Lcom/biznessapps/reservation/ReservationBookFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 540
    if-eqz p1, :cond_0

    .line 541
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 543
    :cond_0
    return-void
.end method
