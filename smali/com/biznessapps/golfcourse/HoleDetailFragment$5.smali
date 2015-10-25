.class Lcom/biznessapps/golfcourse/HoleDetailFragment$5;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/HoleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 674
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v1

    iput-boolean v4, v1, Lcom/biznessapps/golfcourse/model/Game;->isFinished:Z

    .line 677
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    sget v2, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    invoke-virtual {v1, v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->popupFragment(I)V

    .line 679
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/golfcourse/ScoreBoardActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 680
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 681
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->tabId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$900(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    iget-object v3, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/biznessapps/golfcourse/HoleDetailFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$1000(Lcom/biznessapps/golfcourse/HoleDetailFragment;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    const-string v1, "current_game_id"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # getter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$200(Lcom/biznessapps/golfcourse/HoleDetailFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v2

    iget-wide v2, v2, Lcom/biznessapps/golfcourse/model/Game;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 684
    const-string v1, "stay_on_scoreboard"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 686
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 688
    iget-object v1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$5;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    sget v2, Lcom/biznessapps/layout/R$layout;->golf_course_board_screen_layout:I

    invoke-virtual {v1, v2, v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->startFragment(ILandroid/content/Intent;)V

    .line 689
    return-void
.end method
