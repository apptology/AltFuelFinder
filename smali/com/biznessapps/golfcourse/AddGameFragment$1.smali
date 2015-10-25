.class Lcom/biznessapps/golfcourse/AddGameFragment$1;
.super Ljava/lang/Object;
.source "AddGameFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/AddGameFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/AddGameFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/AddGameFragment;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/common/entities/CommonListEntity;

    .line 250
    .local v3, "item":Lcom/biznessapps/common/entities/CommonListEntity;
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-virtual {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 251
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "TAB_UNIQUE_ID"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-virtual {v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 252
    const-string v4, "TAB_SPECIAL_ID"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->tabId:Ljava/lang/String;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$000(Lcom/biznessapps/golfcourse/AddGameFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v4, "BG_URL_EXTRA"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    iget-object v6, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    invoke-virtual {v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    # invokes: Lcom/biznessapps/golfcourse/AddGameFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$100(Lcom/biznessapps/golfcourse/AddGameFragment;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->golf_course:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    const-string v4, "TAB_LABEL"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->select_course:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v4, "TAB_FRAGMENT"

    const-string v5, "GOLF_SELECT_COURSE_FRAGMENT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 258
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    const/16 v5, 0x64

    invoke-virtual {v4, v2, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 278
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->players:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 260
    const-string v4, "TAB_LABEL"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->select_players:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 262
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v1, v4, [J

    .line 263
    .local v1, "ids":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 264
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v4

    iget-object v4, v4, Lcom/biznessapps/golfcourse/model/Game;->playerIdList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v1, v0

    .line 263
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 266
    :cond_2
    const-string v4, "selected_players_id"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 268
    .end local v0    # "i":I
    .end local v1    # "ids":[J
    :cond_3
    const-string v4, "TAB_FRAGMENT"

    const-string v5, "GOLF_SELECT_PLAYER_FRAGMENT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    const/16 v5, 0x65

    invoke-virtual {v4, v2, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 270
    :cond_4
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->notes:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 271
    const-string v4, "TAB_LABEL"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->add_note:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v4, "TAB_FRAGMENT"

    const-string v5, "GOLF_ADD_NOTE_FRAGMENT"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v4, "note"

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mGame:Lcom/biznessapps/golfcourse/model/Game;
    invoke-static {v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$200(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/golfcourse/model/Game;

    move-result-object v5

    iget-object v5, v5, Lcom/biznessapps/golfcourse/model/Game;->notes:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    const/16 v5, 0x66

    invoke-virtual {v4, v2, v5}, Lcom/biznessapps/golfcourse/AddGameFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 275
    :cond_5
    invoke-virtual {v3}, Lcom/biznessapps/common/entities/CommonListEntity;->getTitle()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    sget v6, Lcom/biznessapps/layout/R$string;->date:I

    invoke-virtual {v5, v6}, Lcom/biznessapps/golfcourse/AddGameFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget-object v4, p0, Lcom/biznessapps/golfcourse/AddGameFragment$1;->this$0:Lcom/biznessapps/golfcourse/AddGameFragment;

    # getter for: Lcom/biznessapps/golfcourse/AddGameFragment;->mDatePicker:Lcom/biznessapps/common/components/WheelDelegate;
    invoke-static {v4}, Lcom/biznessapps/golfcourse/AddGameFragment;->access$300(Lcom/biznessapps/golfcourse/AddGameFragment;)Lcom/biznessapps/common/components/WheelDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/common/components/WheelDelegate;->show()V

    goto/16 :goto_0
.end method
