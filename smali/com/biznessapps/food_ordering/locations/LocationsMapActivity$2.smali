.class Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;
.super Ljava/lang/Object;
.source "LocationsMapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "FO_LOCATIONS"

    invoke-static {v2}, Lcom/biznessapps/api/ActivitySelector;->getActivityClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "FO_LOCATIONS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    const-string v1, "TAB_LABEL"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    sget v3, Lcom/biznessapps/layout/R$string;->fo_locations:I

    invoke-virtual {v2, v3}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v1, "TAB_SPECIAL_ID"

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v2}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v1, v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->startActivity(Landroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$2;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-virtual {v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->finish()V

    .line 103
    return-void
.end method
