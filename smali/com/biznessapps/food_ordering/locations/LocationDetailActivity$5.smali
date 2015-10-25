.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;
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
    .line 334
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 338
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->mode:I
    invoke-static {v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$500(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getTimeStamp()J
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$700(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)J

    move-result-wide v1

    # setter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J
    invoke-static {v0, v1, v2}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$602(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;J)J

    .line 340
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeStamp:J
    invoke-static {v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$600(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->checkAvailability()V
    invoke-static {v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$800(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)V

    .line 348
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_day_time:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$5;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_select_order_type:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method
