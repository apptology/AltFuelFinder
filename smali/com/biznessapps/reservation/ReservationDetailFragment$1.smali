.class Lcom/biznessapps/reservation/ReservationDetailFragment$1;
.super Ljava/lang/Object;
.source "ReservationDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationDetailFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationDetailFragment;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelAppointment()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationDetailFragment;->access$000(Lcom/biznessapps/reservation/ReservationDetailFragment;)V

    .line 124
    return-void
.end method
