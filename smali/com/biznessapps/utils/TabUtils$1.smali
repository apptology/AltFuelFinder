.class final Lcom/biznessapps/utils/TabUtils$1;
.super Ljava/lang/Object;
.source "TabUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/TabUtils;->getTabViews(Ljava/util/List;ILandroid/app/Activity;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$tab:Lcom/biznessapps/more/Tab;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/biznessapps/more/Tab;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/biznessapps/utils/TabUtils$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/biznessapps/utils/TabUtils$1;->val$tab:Lcom/biznessapps/more/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v1, p0, Lcom/biznessapps/utils/TabUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/utils/TabUtils$1;->val$tab:Lcom/biznessapps/more/Tab;

    invoke-static {v1, v2, v3, v3}, Lcom/biznessapps/utils/ApiUtils;->getTabIntent(Landroid/content/Context;Lcom/biznessapps/more/Tab;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/biznessapps/utils/TabUtils$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 76
    return-void
.end method
