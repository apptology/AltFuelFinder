.class Lcom/biznessapps/reservation/ReservationMainFragment$4;
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
    .line 156
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment$4;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-virtual {v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->loadData()V

    .line 161
    return-void
.end method
