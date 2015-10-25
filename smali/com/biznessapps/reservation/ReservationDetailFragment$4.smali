.class Lcom/biznessapps/reservation/ReservationDetailFragment$4;
.super Ljava/lang/Object;
.source "ReservationDetailFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationDetailFragment;->cancelAppointment()V
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
    .line 256
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationDetailFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 260
    return-void
.end method
