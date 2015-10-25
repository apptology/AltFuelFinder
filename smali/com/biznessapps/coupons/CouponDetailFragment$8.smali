.class Lcom/biznessapps/coupons/CouponDetailFragment$8;
.super Ljava/lang/Object;
.source "CouponDetailFragment.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/coupons/CouponDetailFragment;->getLocationListener()Landroid/location/LocationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/coupons/CouponDetailFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/coupons/CouponDetailFragment;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lcom/biznessapps/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 531
    iget-object v0, p0, Lcom/biznessapps/coupons/CouponDetailFragment$8;->this$0:Lcom/biznessapps/coupons/CouponDetailFragment;

    # invokes: Lcom/biznessapps/coupons/CouponDetailFragment;->updateLocationData(Landroid/location/Location;)V
    invoke-static {v0, p1}, Lcom/biznessapps/coupons/CouponDetailFragment;->access$1200(Lcom/biznessapps/coupons/CouponDetailFragment;Landroid/location/Location;)V

    .line 532
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 527
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 524
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 521
    return-void
.end method
