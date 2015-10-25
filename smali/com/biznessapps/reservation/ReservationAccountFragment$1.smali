.class Lcom/biznessapps/reservation/ReservationAccountFragment$1;
.super Ljava/lang/Object;
.source "ReservationAccountFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationAccountFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationAccountFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationAccountFragment;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationAccountFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationAccountFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationAccountFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationAccountFragment;->updateProfile()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationAccountFragment;->access$000(Lcom/biznessapps/reservation/ReservationAccountFragment;)V

    .line 64
    return-void
.end method
