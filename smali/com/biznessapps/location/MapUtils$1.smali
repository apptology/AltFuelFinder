.class final Lcom/biznessapps/location/MapUtils$1;
.super Ljava/lang/Object;
.source "MapUtils.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMapLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/location/MapUtils;->defineZoom(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/Set;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$map:Lcom/google/android/gms/maps/GoogleMap;

.field final synthetic val$singlePin:Lcom/google/android/gms/maps/model/Marker;

.field final synthetic val$singleZoomLevel:I


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap;Lcom/google/android/gms/maps/model/Marker;I)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/biznessapps/location/MapUtils$1;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    iput-object p2, p0, Lcom/biznessapps/location/MapUtils$1;->val$singlePin:Lcom/google/android/gms/maps/model/Marker;

    iput p3, p0, Lcom/biznessapps/location/MapUtils$1;->val$singleZoomLevel:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/location/MapUtils$1;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/biznessapps/location/MapUtils$1;->val$singlePin:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iget v2, p0, Lcom/biznessapps/location/MapUtils$1;->val$singleZoomLevel:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 73
    return-void
.end method
