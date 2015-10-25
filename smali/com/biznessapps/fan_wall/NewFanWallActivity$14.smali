.class Lcom/biznessapps/fan_wall/NewFanWallActivity$14;
.super Ljava/lang/Object;
.source "NewFanWallActivity.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fan_wall/NewFanWallActivity;->getLocationListener()Landroid/location/LocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/fan_wall/NewFanWallActivity;)V
    .locals 0

    .prologue
    .line 544
    iput-object p1, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$14;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 557
    iget-object v0, p0, Lcom/biznessapps/fan_wall/NewFanWallActivity$14;->this$0:Lcom/biznessapps/fan_wall/NewFanWallActivity;

    # setter for: Lcom/biznessapps/fan_wall/NewFanWallActivity;->currentLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/biznessapps/fan_wall/NewFanWallActivity;->access$1402(Lcom/biznessapps/fan_wall/NewFanWallActivity;Landroid/location/Location;)Landroid/location/Location;

    .line 558
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 553
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 550
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 547
    return-void
.end method
