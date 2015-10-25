.class Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;
.super Ljava/lang/Object;
.source "ScoreBoardFragment.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnCellClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)V
    .locals 0

    .prologue
    .line 377
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCellClicked(II)V
    .locals 8
    .param p1, "row"    # I
    .param p2, "col"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 380
    if-nez p2, :cond_4

    if-le p1, v7, :cond_4

    .line 381
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$500(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    move-result-object v4

    add-int/lit8 v7, p1, -0x1

    invoke-virtual {v4, v7}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getPlayerFromRowIndex(I)Lcom/biznessapps/golfcourse/model/Player;

    move-result-object v3

    .line 382
    .local v3, "selectedPlayer":Lcom/biznessapps/golfcourse/model/Player;
    if-eqz v3, :cond_1

    move v4, v5

    :goto_0
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 383
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->scores:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/golfcourse/model/PlayerScore;

    .line 384
    .local v2, "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    if-eqz v2, :cond_2

    move v4, v5

    :goto_1
    invoke-static {v4}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 386
    iget-boolean v4, v2, Lcom/biznessapps/golfcourse/model/PlayerScore;->isExtended:Z

    if-nez v4, :cond_3

    :goto_2
    iput-boolean v5, v2, Lcom/biznessapps/golfcourse/model/PlayerScore;->isExtended:Z

    .line 388
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$500(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->notifyDataSetChanged()V

    .line 409
    .end local v2    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v3    # "selectedPlayer":Lcom/biznessapps/golfcourse/model/Player;
    :cond_0
    :goto_3
    return-void

    .restart local v3    # "selectedPlayer":Lcom/biznessapps/golfcourse/model/Player;
    :cond_1
    move v4, v6

    .line 382
    goto :goto_0

    .restart local v2    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    :cond_2
    move v4, v6

    .line 384
    goto :goto_1

    :cond_3
    move v5, v6

    .line 386
    goto :goto_2

    .line 389
    .end local v2    # "playerScore":Lcom/biznessapps/golfcourse/model/PlayerScore;
    .end local v3    # "selectedPlayer":Lcom/biznessapps/golfcourse/model/Player;
    :cond_4
    if-lez p2, :cond_0

    .line 390
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mSTScordBoardAdapter:Lcom/biznessapps/golfcourse/ScoreBoardAdapter;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$500(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/ScoreBoardAdapter;

    move-result-object v4

    add-int/lit8 v5, p2, -0x1

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardAdapter;->getHoleFromColumnIndex(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v0

    .line 391
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    if-eqz v0, :cond_0

    .line 395
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "GOLF_DETAIL_HOLE_FRAGMENT"

    invoke-static {v5}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 397
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "TAB_UNIQUE_ID"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 398
    const-string v4, "TAB_SPECIAL_ID"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$600(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v4, "BG_URL_EXTRA"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$700(Lcom/biznessapps/golfcourse/ScoreBoardFragment;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v4, "TAB_FRAGMENT"

    const-string v5, "GOLF_DETAIL_HOLE_FRAGMENT"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 402
    const-string v4, "game_id"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v5

    iget-wide v5, v5, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 403
    const-string v4, "hole_number"

    iget v5, v0, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 404
    if-le p1, v7, :cond_5

    .line 405
    const-string v4, "tab_idx"

    sget v5, Lcom/biznessapps/layout/R$id;->btScore:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 407
    :cond_5
    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardFragment$5;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardFragment;

    sget v5, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_layout:I

    const/16 v6, 0x68

    invoke-virtual {v4, v5, v1, v6}, Lcom/biznessapps/golfcourse/ScoreBoardFragment;->startFragment(ILandroid/content/Intent;I)V

    goto/16 :goto_3
.end method
