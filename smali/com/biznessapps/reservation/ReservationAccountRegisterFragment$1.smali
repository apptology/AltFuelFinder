.class Lcom/biznessapps/reservation/ReservationAccountRegisterFragment$1;
.super Ljava/lang/Object;
.source "ReservationAccountRegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->registerAccount()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;->access$000(Lcom/biznessapps/reservation/ReservationAccountRegisterFragment;)V

    .line 77
    return-void
.end method
