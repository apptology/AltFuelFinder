.class Lcom/biznessapps/home_screen/HomeScreenActivity$10;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->getShortIconListener(Ljava/lang/String;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

.field final synthetic val$viewControoler:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    iput-object p2, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->val$viewControoler:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 659
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->val$viewControoler:Ljava/lang/String;

    invoke-static {v4}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 661
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    const-string v4, "ba.application.settings"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 662
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "TAB_LABEL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAB_LABEL"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->val$viewControoler:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 663
    const-string v3, "TAB_SPECIAL_ID"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TAB_SPECIAL_ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->val$viewControoler:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 665
    const-string v3, "messagesviewcontroller"

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->val$viewControoler:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 666
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    # getter for: Lcom/biznessapps/home_screen/HomeScreenActivity;->appSettings:Lcom/biznessapps/common/entities/AppSettings;
    invoke-static {v3}, Lcom/biznessapps/home_screen/HomeScreenActivity;->access$1200(Lcom/biznessapps/home_screen/HomeScreenActivity;)Lcom/biznessapps/common/entities/AppSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/common/entities/AppSettings;->getMessateLinkedTab()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "linkedTab":Ljava/lang/String;
    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    .end local v1    # "linkedTab":Ljava/lang/String;
    :cond_0
    const-string v3, "TAB_FRAGMENT"

    iget-object v4, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->val$viewControoler:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 670
    iget-object v3, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$10;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v3, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 671
    return-void
.end method
