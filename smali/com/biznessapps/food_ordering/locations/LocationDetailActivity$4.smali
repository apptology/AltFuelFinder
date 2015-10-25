.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;
.super Ljava/lang/Object;
.source "LocationDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->defineTime(I)V
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
    .line 295
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;->val$view:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->timeViewList:Ljava/util/List;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$400(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;)Ljava/util/List;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->deactivateView(Ljava/util/List;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$200(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Ljava/util/List;)V

    .line 300
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$4;->val$view:Landroid/view/ViewGroup;

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->activateView(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->access$300(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Landroid/view/View;)V

    .line 301
    return-void
.end method
