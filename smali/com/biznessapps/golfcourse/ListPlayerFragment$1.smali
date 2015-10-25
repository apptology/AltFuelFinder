.class Lcom/biznessapps/golfcourse/ListPlayerFragment$1;
.super Ljava/lang/Object;
.source "ListPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ListPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ListPlayerFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 248
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 249
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "TAB_UNIQUE_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 250
    const-string v3, "TAB_SPECIAL_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->tabId:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    const-string v3, "BG_URL_EXTRA"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    # invokes: Lcom/biznessapps/golfcourse/ListPlayerFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$100(Lcom/biznessapps/golfcourse/ListPlayerFragment;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 254
    const-string v3, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    sget v5, Lcom/biznessapps/layout/R$string;->select_players:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iget-object v3, v3, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 256
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iget-object v3, v3, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v1, v3, [J

    .line 257
    .local v1, "ids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iget-object v3, v3, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 258
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/ListPlayerFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v3}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->access$200(Lcom/biznessapps/golfcourse/ListPlayerFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v3

    iget-object v3, v3, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_0
    const-string v3, "except_players_id"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 262
    .end local v0    # "i":I
    .end local v1    # "ids":[J
    :cond_1
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOLF_SELECT_PLAYER_FRAGMENT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_select_player_layout:I

    const/16 v5, 0x66

    invoke-virtual {v3, v4, v2, v5}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->startFragment(ILandroid/content/Intent;I)V

    .line 269
    :goto_1
    return-void

    .line 265
    :cond_2
    const-string v3, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    sget v5, Lcom/biznessapps/layout/R$string;->new_player:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "GOLF_EDIT_PLAYER_FRAGMENT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    iget-object v3, p0, Lcom/biznessapps/golfcourse/ListPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/ListPlayerFragment;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_layout:I

    const/16 v5, 0x64

    invoke-virtual {v3, v4, v2, v5}, Lcom/biznessapps/golfcourse/ListPlayerFragment;->startFragment(ILandroid/content/Intent;I)V

    goto :goto_1
.end method
