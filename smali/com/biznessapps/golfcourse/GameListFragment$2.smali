.class Lcom/biznessapps/golfcourse/GameListFragment$2;
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
    .line 266
    iput-object p1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 269
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 271
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->tabId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/GameListFragment;->access$200(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->new_game:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/GameListFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/GameListFragment;->defineBgUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GOLF_ADD_GAME_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->access$300(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->access$300(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->access$300(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/golfcourse/model/Course;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/model/Course;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const-string v2, "course"

    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    # getter for: Lcom/biznessapps/golfcourse/GameListFragment;->mCourseList:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/golfcourse/GameListFragment;->access$300(Lcom/biznessapps/golfcourse/GameListFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/golfcourse/GameListFragment$2;->this$0:Lcom/biznessapps/golfcourse/GameListFragment;

    const/16 v2, 0x65

    invoke-virtual {v1, v0, v2}, Lcom/biznessapps/golfcourse/GameListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 281
    return-void
.end method
