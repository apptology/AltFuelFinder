.class Lcom/biznessapps/common/activities/CommonMapActivity$2;
.super Ljava/lang/Object;
.source "CommonMapActivity.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnInfoWindowClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/common/activities/CommonMapActivity;->addMapPoint(Lcom/biznessapps/common/entities/MapEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/common/activities/CommonMapActivity;


# direct methods
.method constructor <init>(Lcom/biznessapps/common/activities/CommonMapActivity;)V
    .locals 0

    .prologue
    .line 326
    iput-object p1, p0, Lcom/biznessapps/common/activities/CommonMapActivity$2;->this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfoWindowClick(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 329
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity$2;->this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

    iget-object v1, v1, Lcom/biznessapps/common/activities/CommonMapActivity;->markersHashMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/common/entities/MapEntity;

    .line 330
    .local v0, "mapItem":Lcom/biznessapps/common/entities/MapEntity;
    iget-object v1, p0, Lcom/biznessapps/common/activities/CommonMapActivity$2;->this$0:Lcom/biznessapps/common/activities/CommonMapActivity;

    invoke-virtual {v1, v0}, Lcom/biznessapps/common/activities/CommonMapActivity;->defineMapItemClickAction(Lcom/biznessapps/common/entities/MapEntity;)V

    .line 331
    return-void
.end method
