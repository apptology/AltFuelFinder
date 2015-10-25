.class Lcom/biznessapps/fan_wall/NewFanWallActivity$13;
.super Ljava/lang/Object;
.source "NewFanWallActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->openCommentsContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0

    .prologue
    .line 494
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x0

    .line 497
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v3

    invoke-interface {v3, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/fan_wall/CommentEntity;

    .line 498
    .local v1, "item":Lcom/biznessapps/fan_wall/CommentEntity;
    if-eqz v1, :cond_0

    .line 499
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {v3}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "FanWallViewController"

    invoke-static {v4}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "parent_id"

    invoke-virtual {v1}, Lcom/biznessapps/fan_wall/CommentEntity;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 502
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {v3}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "tabId":Ljava/lang/String;
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "FanWallViewController"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 504
    const-string v3, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    sget v5, Lcom/biznessapps/layout/R$string;->replies:I

    invoke-virtual {v4, v5}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v3, "HAS_CHILDS"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 506
    const-string v3, "USE_V2_API"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 507
    const-string v3, "ITEM_EXTRA"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 508
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    iget-object v3, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$13;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-virtual {v3, v0, v6}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 511
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v2    # "tabId":Ljava/lang/String;
    :cond_0
    return-void
.end method
