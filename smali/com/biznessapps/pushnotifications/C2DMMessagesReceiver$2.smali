.class Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$2;
.super Ljava/lang/Object;
.source "C2DMMessagesReceiver.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->getLocationListener()Landroid/location/LocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;


# direct methods
.method constructor <init>(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$2;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 333
    # getter for: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->lastSavedLocation:Landroid/location/Location;
    invoke-static {}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$300()Landroid/location/Location;

    move-result-object v1

    if-nez v1, :cond_1

    .line 335
    # setter for: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->lastSavedLocation:Landroid/location/Location;
    invoke-static {p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$302(Landroid/location/Location;)Landroid/location/Location;

    .line 336
    iget-object v1, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$2;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    # invokes: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->checkGFmessages()V
    invoke-static {v1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$400(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;)V

    .line 345
    :cond_0
    :goto_0
    return-void

    .line 338
    :cond_1
    # getter for: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->lastSavedLocation:Landroid/location/Location;
    invoke-static {}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$300()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 340
    .local v0, "distance":F
    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 341
    # setter for: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->lastSavedLocation:Landroid/location/Location;
    invoke-static {p1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$302(Landroid/location/Location;)Landroid/location/Location;

    .line 342
    iget-object v1, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$2;->this$0:Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    # invokes: Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->checkGFmessages()V
    invoke-static {v1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->access$400(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 329
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 326
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 323
    return-void
.end method
