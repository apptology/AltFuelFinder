.class Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;
.super Ljava/lang/Object;
.source "LocationDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->showAddressInfo(Lcom/biznessapps/location/entities/LocationEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

.field final synthetic val$item:Lcom/biznessapps/location/entities/LocationEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;Lcom/biznessapps/location/entities/LocationEntity;)V
    .locals 0

    .prologue
    .line 520
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    iput-object p2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;->val$item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 524
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;->this$0:Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;

    invoke-virtual {v0}, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;->val$item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v1}, Lcom/biznessapps/location/entities/LocationEntity;->getLongitude()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/food_ordering/locations/LocationDetailActivity$10;->val$item:Lcom/biznessapps/location/entities/LocationEntity;

    invoke-virtual {v2}, Lcom/biznessapps/location/entities/LocationEntity;->getLatitude()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/biznessapps/utils/ViewUtils;->openGoogleMap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method
