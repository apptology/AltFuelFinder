.class Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;
.super Ljava/lang/Object;
.source "SelectPlayerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/SelectPlayerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 264
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-virtual {v1}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/common/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-virtual {v2}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 266
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    # getter for: Lcom/biznessapps/golfcourse/SelectPlayerFragment;->tabId:Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->access$000(Lcom/biznessapps/golfcourse/SelectPlayerFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, "BG_URL_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    iget-object v3, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    invoke-virtual {v3}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    # invokes: Lcom/biznessapps/golfcourse/SelectPlayerFragment;->defineBgUrl(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->access$100(Lcom/biznessapps/golfcourse/SelectPlayerFragment;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    sget v3, Lcom/biznessapps/layout/R$string;->new_player:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GOLF_EDIT_PLAYER_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/biznessapps/golfcourse/SelectPlayerFragment$1;->this$0:Lcom/biznessapps/golfcourse/SelectPlayerFragment;

    sget v2, Lcom/biznessapps/layout/R$layout;->golf_course_edit_player_layout:I

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v0, v3}, Lcom/biznessapps/golfcourse/SelectPlayerFragment;->startFragment(ILandroid/content/Intent;I)V

    .line 272
    return-void
.end method
