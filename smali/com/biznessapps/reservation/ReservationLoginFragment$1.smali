.class Lcom/biznessapps/reservation/ReservationLoginFragment$1;
.super Ljava/lang/Object;
.source "ReservationLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationLoginFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationLoginFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationLoginFragment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationLoginFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationLoginFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationLoginFragment;->loginButton:Landroid/widget/Button;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->access$000(Lcom/biznessapps/reservation/ReservationLoginFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 75
    return-void
.end method
