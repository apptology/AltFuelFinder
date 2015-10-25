.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;
.super Ljava/lang/Object;
.source "LocationDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V
    .locals 0

    .prologue
    .line 376
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 380
    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-virtual {v4}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->settings:Lcom/biznessapps/api/UiSettings;
    invoke-static {v5}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1700(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Lcom/biznessapps/api/UiSettings;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/widget/Button;

    iget-object v7, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->takeoutButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1200(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/Button;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deliveryButton:Landroid/widget/Button;
    invoke-static {v8}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1100(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/Button;

    move-result-object v8

    aput-object v8, v6, v7

    iget-object v7, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dineInButton:Landroid/widget/Button;
    invoke-static {v7}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1000(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/Button;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-static {v4, v5, v6}, Lcom/biznessapps/food_ordering/FOUtils;->updateButtons(Landroid/content/Context;Lcom/biznessapps/api/UiSettings;[Landroid/widget/Button;)Z

    move-result v0

    .line 381
    .local v0, "shouldActivate":Z
    iget-object v4, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    if-eqz v0, :cond_1

    :goto_0
    # setter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I
    invoke-static {v4, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$502(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;I)I

    .line 382
    if-eqz v0, :cond_0

    .line 383
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineDay()V
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1300(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateTimeContainer:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1400(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/view/ViewGroup;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 386
    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$8;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeContainer:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$1500(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 387
    return-void

    :cond_1
    move v1, v2

    .line 381
    goto :goto_0

    :cond_2
    move v1, v3

    .line 385
    goto :goto_1

    :cond_3
    move v2, v3

    .line 386
    goto :goto_2
.end method
