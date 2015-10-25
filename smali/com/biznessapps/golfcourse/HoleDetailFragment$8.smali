.class Lcom/biznessapps/golfcourse/HoleDetailFragment$8;
.super Ljava/lang/Object;
.source "HoleDetailFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/golfcourse/HoleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V
    .locals 0

    .prologue
    .line 735
    iput-object p1, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$8;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 748
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$8;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # setter for: Lcom/biznessapps/golfcourse/HoleDetailFragment;->mCurrentLocation:Landroid/location/Location;
    invoke-static {v0, p1}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$1302(Lcom/biznessapps/golfcourse/HoleDetailFragment;Landroid/location/Location;)Landroid/location/Location;

    .line 750
    iget-object v0, p0, Lcom/biznessapps/golfcourse/HoleDetailFragment$8;->this$0:Lcom/biznessapps/golfcourse/HoleDetailFragment;

    # invokes: Lcom/biznessapps/golfcourse/HoleDetailFragment;->updateUI()V
    invoke-static {v0}, Lcom/biznessapps/golfcourse/HoleDetailFragment;->access$800(Lcom/biznessapps/golfcourse/HoleDetailFragment;)V

    .line 751
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 744
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 741
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 738
    return-void
.end method
