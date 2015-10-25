.class Lcom/biznessapps/reservation/ReservationMainFragment$5;
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
    .line 163
    iput-object p1, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 166
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # getter for: Lcom/biznessapps/reservation/ReservationMainFragment;->tabId:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$800(Lcom/biznessapps/reservation/ReservationMainFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/biznessapps/api/CachingManager;->getReservSystemCacher(Ljava/lang/String;)Lcom/biznessapps/reservation/ReservationDataKeeper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationDataKeeper;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "ReservationAccountViewController"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    invoke-virtual {v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, "tabId":Ljava/lang/String;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "ReservationAccountViewController"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v2, "TAB_LABEL"

    iget-object v3, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->account:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/reservation/ReservationMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/biznessapps/reservation/ReservationMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 177
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "tabId":Ljava/lang/String;
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/reservation/ReservationMainFragment$5;->this$0:Lcom/biznessapps/reservation/ReservationMainFragment;

    # invokes: Lcom/biznessapps/reservation/ReservationMainFragment;->openLoginWindow()V
    invoke-static {v2}, Lcom/biznessapps/reservation/ReservationMainFragment;->access$900(Lcom/biznessapps/reservation/ReservationMainFragment;)V

    goto :goto_0
.end method
