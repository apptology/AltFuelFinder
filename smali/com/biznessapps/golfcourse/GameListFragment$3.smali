.class Lcom/biznessapps/golfcourse/GameListFragment$3;
.super Ljava/lang/Object;
.source "GameListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/GameListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/GameListFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/GameListFragment;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 287
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/GameListFragment;->access$400(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->players:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/GameListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListFragment;->defineBgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GOLF_LIST_PLAYER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$3;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/golfcourse/GameListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 295
    return-void
.end method
