.class Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;
.super Ljava/lang/Object;
.source "ScoreBoardActivity.java"

# interfaces
.implements Lcom/biznessapps/golfcourse/OnMenuSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/ScoreBoardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuSelected(I)V
    .locals 7
    .param p1, "itemResId"    # I

    .prologue
    const/4 v3, 0x1

    .line 400
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    const-class v4, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v1, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 401
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "TAB_UNIQUE_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getTabId()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 402
    const-string v2, "TAB_SPECIAL_ID"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->tabId:Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$000(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 403
    const-string v2, "BG_URL_EXTRA"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # invokes: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->defineBgUrl()Ljava/lang/String;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$100(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    invoke-virtual {v2, v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->popupFragment(I)V

    .line 407
    sget v2, Lcom/biznessapps/layout/R$id;->tvCurrentGame:I

    if-ne p1, v2, :cond_2

    .line 408
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iget v2, v2, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 410
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/model/Game;->getCourse()Lcom/biznessapps/golfcourse/model/Course;

    move-result-object v2

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget v4, v4, Lcom/biznessapps/golfcourse/model/Game;->recentHoleNumber:I

    invoke-virtual {v2, v4}, Lcom/biznessapps/golfcourse/model/Course;->getHole(I)Lcom/biznessapps/golfcourse/model/Hole;

    move-result-object v0

    .line 412
    .local v0, "hole":Lcom/biznessapps/golfcourse/model/Hole;
    const-string v2, "TAB_FRAGMENT"

    const-string v4, "GOLF_DETAIL_HOLE_FRAGMENT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const-string v2, "game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 414
    const-string v2, "hole_number"

    iget v4, v0, Lcom/biznessapps/golfcourse/model/Hole;->holeNumber:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 415
    const-string v2, "tab_idx"

    sget v4, Lcom/biznessapps/layout/R$id;->btScore:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 416
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_hole_details_layout:I

    const/16 v5, 0x68

    invoke-virtual {v2, v4, v1, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    .line 445
    .end local v0    # "hole":Lcom/biznessapps/golfcourse/model/Hole;
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    iget-object v2, v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mMenuDrawer:Lnet/simonvt/menudrawer/MenuDrawer;

    invoke-virtual {v2, v3}, Lnet/simonvt/menudrawer/MenuDrawer;->closeMenu(Z)V

    .line 446
    return-void

    .line 408
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 417
    :cond_2
    sget v2, Lcom/biznessapps/layout/R$id;->tvNewGame:I

    if-ne p1, v2, :cond_3

    .line 418
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v6, Lcom/biznessapps/layout/R$string;->golf_leave_game:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2$1;

    invoke-direct {v6, p0}, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2$1;-><init>(Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;)V

    invoke-static {v2, v4, v5, v6, v3}, Lcom/biznessapps/utils/ViewUtils;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Z)V

    goto :goto_1

    .line 426
    :cond_3
    sget v2, Lcom/biznessapps/layout/R$id;->tvNotes:I

    if-ne p1, v2, :cond_4

    .line 427
    const-string v2, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v5, Lcom/biznessapps/layout/R$string;->add_note:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    const-string v2, "TAB_FRAGMENT"

    const-string v4, "GOLF_ADD_NOTE_FRAGMENT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 429
    const-string v2, "note"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 430
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_add_note_layout:I

    const/16 v5, 0x66

    invoke-virtual {v2, v4, v1, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    goto :goto_1

    .line 431
    :cond_4
    sget v2, Lcom/biznessapps/layout/R$id;->tvPlayers:I

    if-ne p1, v2, :cond_5

    .line 432
    const-string v2, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v5, Lcom/biznessapps/layout/R$string;->players:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 433
    const-string v2, "TAB_FRAGMENT"

    const-string v4, "GOLF_LIST_PLAYER_FRAGMENT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 434
    const-string v2, "selected_game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 435
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_list_player_layout:I

    const/16 v5, 0x65

    invoke-virtual {v2, v4, v1, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    goto :goto_1

    .line 436
    :cond_5
    sget v2, Lcom/biznessapps/layout/R$id;->tvOverview:I

    if-ne p1, v2, :cond_6

    .line 437
    const-string v2, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v5, Lcom/biznessapps/layout/R$string;->overview:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v2, "TAB_FRAGMENT"

    const-string v4, "GOLF_OVERVIEW_FRAGMENT"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    const-string v2, "game_id"

    iget-object v4, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    # getter for: Lcom/biznessapps/golfcourse/ScoreBoardActivity;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->access$200(Lcom/biznessapps/golfcourse/ScoreBoardActivity;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-wide v4, v4, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 440
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    sget v4, Lcom/biznessapps/layout/R$layout;->golf_course_overview_layout:I

    const/16 v5, 0x67

    invoke-virtual {v2, v4, v1, v5}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->startFragment(ILandroid/content/Intent;I)V

    goto/16 :goto_1

    .line 441
    :cond_6
    sget v2, Lcom/biznessapps/layout/R$id;->tvMainMenu:I

    if-ne p1, v2, :cond_0

    .line 442
    iget-object v2, p0, Lcom/biznessapps/golfcourse/ScoreBoardActivity$2;->this$0:Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/ScoreBoardActivity;->finish()V

    goto/16 :goto_1
.end method
