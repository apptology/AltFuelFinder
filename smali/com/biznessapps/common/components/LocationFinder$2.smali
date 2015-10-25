.class Lcom/biznessapps/common/components/LocationFinder$2;
.super Ljava/lang/Object;
.source "LocationFinder.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/components/LocationFinder;->getNetworkLocationListener()Landroid/location/LocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/components/LocationFinder;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/components/LocationFinder;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcom/biznessapps/common/components/LocationFinder$2;->this$0:Lcom/biznessapps/common/components/LocationFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder$2;->this$0:Lcom/biznessapps/common/components/LocationFinder;

    # invokes: Lcom/biznessapps/common/components/LocationFinder;->processNewLocation(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/biznessapps/common/components/LocationFinder;->access$000(Lcom/biznessapps/common/components/LocationFinder;Landroid/location/Location;)V

    .line 113
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 116
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 115
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 114
    return-void
.end method
