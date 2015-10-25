.class Lcom/biznessapps/reservation/ReservationMainFragment$3;
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
    .line 148
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x2

    .line 151
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # setter for: Lcom/biznessapps/reservation/ReservationMainFragment;->searchType:I
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$202(Lcom/biznessapps/reservation/ReservationMainFragment;I)I

    .line 152
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationMainFragment;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v0}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$700(Lcom/biznessapps/reservation/ReservationMainFragment;)Lcom/biznessapps/api/UiSettings;

    move-result-object v0

    new-array v1, v1, [Landroid/widget/Button;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationMainFragment;->pastEventsButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$500(Lcom/biznessapps/reservation/ReservationMainFragment;)Landroid/widget/Button;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationMainFragment;->upcomingEventsButton:Landroid/widget/Button;
    invoke-static {v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$400(Lcom/biznessapps/reservation/ReservationMainFragment;)Landroid/widget/Button;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->updateButtonsState(Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)V

    .line 153
    iget-object v0, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    iget-object v1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$3;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-virtual {v1}, Lcom/biznessapps/reservation/ReservationMainFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v1

    # invokes: Lcom/biznessapps/reservation/ReservationMainFragment;->plugListView(Landroid/app/Activity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$600(Lcom/biznessapps/reservation/ReservationMainFragment;Landroid/app/Activity;)V

    .line 154
    return-void
.end method
