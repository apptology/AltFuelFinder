.class Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;
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
    .line 106
    iput-object p1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->access$100(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v0}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->access$100(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/location/entities/LocationEntity;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    iget-object v1, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    # getter for: Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->selectedLocation:Lcom/biznessapps/location/entities/LocationEntity;
    invoke-static {v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->access$100(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;)Lcom/biznessapps/location/entities/LocationEntity;

    move-result-object v1

    # invokes: Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->openDetail(Lcom/biznessapps/location/entities/LocationEntity;)V
    invoke-static {v0, v1}, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;->access$200(Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;Lcom/biznessapps/location/entities/LocationEntity;)V

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    sget v1, Lcom/biznessapps/layout/R$string;->fo_no_available_service:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/food_ordering/locations/LocationsMapActivity$3;->this$0:Lcom/biznessapps/food_ordering/locations/LocationsMapActivity;

    sget v1, Lcom/biznessapps/layout/R$string;->location_missed_alert:I

    invoke-static {v0, v1}, Lcom/biznessapps/utils/ViewUtils;->showWarningDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method
