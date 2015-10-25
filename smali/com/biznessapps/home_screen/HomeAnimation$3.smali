.class Lcom/biznessapps/home_screen/HomeAnimation$3;
.super Ljava/lang/Object;
.source "HomeAnimation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/home_screen/HomeAnimation;->setImage(Ljava/lang/String;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/home_screen/HomeAnimation;


# direct methods
.method constructor <init>(Lcom/biznessapps/home_screen/HomeAnimation;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/biznessapps/home_screen/HomeAnimation$3;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 158
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$3;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$100(Lcom/biznessapps/home_screen/HomeAnimation;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "GLOBAL_SEARCH_VIEW_CONTROLLER"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/biznessapps/home_screen/HomeAnimation$3;->this$0:Lcom/biznessapps/home_screen/HomeAnimation;

    # getter for: Lcom/biznessapps/home_screen/HomeAnimation;->activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/biznessapps/home_screen/HomeAnimation;->access$100(Lcom/biznessapps/home_screen/HomeAnimation;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 162
    return-void
.end method
