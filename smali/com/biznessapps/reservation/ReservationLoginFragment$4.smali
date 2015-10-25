.class Lcom/biznessapps/reservation/ReservationLoginFragment$4;
.super Ljava/lang/Object;
.source "ReservationLoginFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationLoginFragment;->initListeners()V
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
    .line 143
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationLoginFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationLoginFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationLoginFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationLoginFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationLoginFragment;->openRecoveryWindow()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationLoginFragment;->access$300(Lcom/biznessapps/reservation/ReservationLoginFragment;)V

    .line 147
    return-void
.end method
