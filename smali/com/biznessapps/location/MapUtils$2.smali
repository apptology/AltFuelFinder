.class final Lcom/biznessapps/location/MapUtils$2;
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
.field final synthetic val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

.field final synthetic val$map:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/model/LatLngBounds;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/biznessapps/location/MapUtils$2;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    iput-object p2, p0, Lcom/biznessapps/location/MapUtils$2;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapLoaded()V
    .locals 3

    .prologue
    .line 86
    iget-object v1, p0, Lcom/biznessapps/location/MapUtils$2;->val$bounds:Lcom/google/android/gms/maps/model/LatLngBounds;

    const/16 v2, 0x32

    invoke-static {v1, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngBounds(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    .line 87
    .local v0, "cu":Lcom/google/android/gms/maps/CameraUpdate;
    iget-object v1, p0, Lcom/biznessapps/location/MapUtils$2;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 88
    iget-object v1, p0, Lcom/biznessapps/location/MapUtils$2;->val$map:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/maps/GoogleMap;->animateCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 89
    return-void
.end method
