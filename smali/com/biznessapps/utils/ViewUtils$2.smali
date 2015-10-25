.class final Lcom/biznessapps/utils/ViewUtils$2;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/utils/ViewUtils;->showMailingListPropmt(Lcom/biznessapps/common/activities/CommonFragmentActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$holdActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/biznessapps/common/activities/CommonFragmentActivity;Lcom/biznessapps/common/entities/AppSettings;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$holdActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    iput-object p3, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 244
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$context:Landroid/content/Context;

    const-string v3, "MailingListViewController"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 246
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_LABEL"

    iget-object v3, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$holdActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v3}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_LABEL"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "MailingListViewController"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$appSettings:Lcom/biznessapps/common/entities/AppSettings;

    invoke-virtual {v2}, Lcom/biznessapps/common/entities/AppSettings;->getMailingTab()Lcom/biznessapps/more/Tab;

    move-result-object v1

    .line 249
    .local v1, "mailingTab":Lcom/biznessapps/more/Tab;
    const-string v2, "TAB_SPECIAL_ID"

    invoke-virtual {v1}, Lcom/biznessapps/more/Tab;->getTabId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    const-string v2, "TAB_LABEL"

    invoke-virtual {v1}, Lcom/biznessapps/more/Tab;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    iget-object v2, p0, Lcom/biznessapps/utils/ViewUtils$2;->val$holdActivity:Lcom/biznessapps/common/activities/CommonFragmentActivity;

    invoke-virtual {v2, v0}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 252
    if-eqz p1, :cond_0

    .line 253
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 255
    :cond_0
    return-void
.end method
