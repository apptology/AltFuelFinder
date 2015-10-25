.class Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$1;
.super Ljava/lang/Object;
.source "ReservationAccountRecoveryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->recoverPassword()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;->access$000(Lcom/biznessapps/reservation/ReservationAccountRecoveryFragment;)V

    .line 51
    return-void
.end method
