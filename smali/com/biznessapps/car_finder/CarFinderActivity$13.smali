.class Lcom/biznessapps/car_finder/CarFinderActivity$13;
.super Ljava/lang/Object;
.source "CarFinderActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/car_finder/CarFinderActivity;->getLocationListener()Landroid/location/LocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/car_finder/CarFinderActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/car_finder/CarFinderActivity;)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lcom/biznessapps/car_finder/CarFinderActivity$13;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 559
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$13;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # setter for: Lcom/biznessapps/car_finder/CarFinderActivity;->myLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$602(Lcom/biznessapps/car_finder/CarFinderActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 560
    iget-object v0, p0, Lcom/biznessapps/car_finder/CarFinderActivity$13;->this$0:Lcom/biznessapps/car_finder/CarFinderActivity;

    # invokes: Lcom/biznessapps/car_finder/CarFinderActivity;->initPois()V
    invoke-static {v0}, Lcom/biznessapps/car_finder/CarFinderActivity;->access$1200(Lcom/biznessapps/car_finder/CarFinderActivity;)V

    .line 561
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 555
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 552
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 549
    return-void
.end method
