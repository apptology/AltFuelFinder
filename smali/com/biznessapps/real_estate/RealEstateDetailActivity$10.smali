.class Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;
.super Ljava/lang/Object;
.source "RealEstateDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/real_estate/RealEstateDetailActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v1}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "RealEstatePropertyViewController"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 414
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ITEM_EXTRA"

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    # getter for: Lcom/biznessapps/real_estate/RealEstateDetailActivity;->info:Lcom/biznessapps/real_estate/RealEstateEntity;
    invoke-static {v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->access$400(Lcom/biznessapps/real_estate/RealEstateDetailActivity;)Lcom/biznessapps/real_estate/RealEstateEntity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 415
    const-string v1, "TAB_UNIQUE_ID"

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getTabId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 416
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "RealEstatePropertyViewController"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v2}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 419
    iget-object v1, p0, Lcom/biznessapps/real_estate/RealEstateDetailActivity$10;->this$0:Lcom/biznessapps/real_estate/RealEstateDetailActivity;

    invoke-virtual {v1, v0}, Lcom/biznessapps/real_estate/RealEstateDetailActivity;->startActivity(Landroid/content/Intent;)V

    .line 420
    return-void
.end method
