.class Lcom/biznessapps/home_screen/HomeScreenActivity$5;
.super Ljava/lang/Object;
.source "HomeScreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeScreenActivity;->defineShortLinks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeScreenActivity;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$5;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 463
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$5;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v1}, Lcom/biznessapps/home_screen/HomeScreenActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 465
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeScreenActivity$5;->this$0:Lcom/biznessapps/home_screen/HomeScreenActivity;

    invoke-virtual {v1, v0}, Lcom/biznessapps/home_screen/HomeScreenActivity;->startActivity(Landroid/content/Intent;)V

    .line 467
    return-void
.end method
