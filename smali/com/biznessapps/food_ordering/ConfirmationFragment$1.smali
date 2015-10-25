.class Lcom/biznessapps/food_ordering/ConfirmationFragment$1;
.super Ljava/lang/Object;
.source "ConfirmationFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/ConfirmationFragment;->initViews(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/ConfirmationFragment;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "LOCATION_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "locId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "FO_CATEGORIES"

    invoke-static {v3}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "TAB_FRAGMENT"

    const-string v3, "FO_CATEGORIES"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    const-string v2, "TAB_LABEL"

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    sget v4, Lcom/biznessapps/layout/R$string;->fo_categories:I

    invoke-virtual {v3, v4}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v2, "BG_URL_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    # getter for: Lcom/biznessapps/food_ordering/ConfirmationFragment;->bgUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->access$000(Lcom/biznessapps/food_ordering/ConfirmationFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v2, "TIMESTAMP_EXTRA"

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TIMESTAMP_EXTRA"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 81
    const-string v2, "LOCATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string v2, "TAB_SPECIAL_ID"

    iget-object v3, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v3}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "TAB_SPECIAL_ID"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v2, v0}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->startActivity(Landroid/content/Intent;)V

    .line 87
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 85
    :cond_0
    iget-object v2, p0, Lcom/biznessapps/food_ordering/ConfirmationFragment$1;->this$0:Lcom/biznessapps/food_ordering/ConfirmationFragment;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/ConfirmationFragment;->getHoldActivity()Lcom/biznessapps/common/activities/CommonFragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/common/activities/CommonFragmentActivity;->finish()V

    goto :goto_0
.end method
