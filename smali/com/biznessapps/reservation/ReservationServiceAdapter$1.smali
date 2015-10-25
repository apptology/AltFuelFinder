.class Lcom/biznessapps/reservation/ReservationServiceAdapter$1;
.super Ljava/lang/Object;
.source "ReservationServiceAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationServiceAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationServiceAdapter;

.field final synthetic val$item:Lcom/biznessapps/reservation/entities/ReservationServiceItem;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationServiceAdapter;Lcom/biznessapps/reservation/entities/ReservationServiceItem;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter$1;->this$0:Lcom/biznessapps/reservation/ReservationServiceAdapter;

    iput-object p2, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter$1;->val$item:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter$1;->this$0:Lcom/biznessapps/reservation/ReservationServiceAdapter;

    # getter for: Lcom/biznessapps/reservation/ReservationServiceAdapter;->listener:Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationServiceAdapter;->access$100(Lcom/biznessapps/reservation/ReservationServiceAdapter;)Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationServiceAdapter$1;->val$item:Lcom/biznessapps/reservation/entities/ReservationServiceItem;

    invoke-interface {v0, v1}, Lcom/biznessapps/reservation/ReservationServiceAdapter$OnServiceClickListener;->onBooked(Lcom/biznessapps/reservation/entities/ReservationServiceItem;)V

    .line 68
    return-void
.end method
