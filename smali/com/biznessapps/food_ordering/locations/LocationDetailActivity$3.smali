.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;
.super Ljava/lang/Object;
.source "LocationDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineDay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

.field final synthetic val$view:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 207
    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->val$view:Landroid/view/ViewGroup;

    sget v3, Lcom/biznessapps/layout/R$id;->CALENDAR_TAG:I

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 208
    .local v0, "selectedCalendar":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 209
    .local v1, "selectedDay":I
    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineTime(I)V
    invoke-static {v2, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$000(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;I)V

    .line 210
    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->dateViewList:Ljava/util/List;
    invoke-static {v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$100(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Ljava/util/List;

    move-result-object v3

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deactivateView(Ljava/util/List;)V
    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$200(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Ljava/util/List;)V

    .line 211
    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iget-object v3, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$3;->val$view:Landroid/view/ViewGroup;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->activateView(Landroid/view/View;)V
    invoke-static {v2, v3}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$300(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Landroid/view/View;)V

    .line 212
    return-void
.end method
