.class Lcom/biznessapps/reservation/ReservationMainFragment$1;
.super Ljava/lang/Object;
.source "ReservationMainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/reservation/ReservationMainFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/reservation/ReservationMainFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/reservation/ReservationMainFragment;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment$1;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationMainFragment;->openScheduleWindow()V
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$100(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    .line 138
    return-void
.end method
