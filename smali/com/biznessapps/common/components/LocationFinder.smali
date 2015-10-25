.class public Lcom/biznessapps/common/components/LocationFinder;
.super Ljava/lang/Object;
.source "LocationFinder.java"


# static fields
.field private static final GOLF_COURSE_DELAY:I = 0x3a98

.field private static final TWO_MINUTES_DELAY:I = 0x1d4c0


# instance fields
.field private currentBestLocation:Landroid/location/Location;

.field private gpsLocationListener:Landroid/location/LocationListener;

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/location/LocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private locationManager:Landroid/location/LocationManager;

.field private networkLocationListener:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->listeners:Ljava/util/List;

    .line 36
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/common/components/LocationFinder;->getNetworkLocationListener()Landroid/location/LocationListener;

    .line 38
    invoke-direct {p0}, Lcom/biznessapps/common/components/LocationFinder;->getGpsLocationListener()Landroid/location/LocationListener;

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/common/components/LocationFinder;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/common/components/LocationFinder;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/biznessapps/common/components/LocationFinder;->processNewLocation(Landroid/location/Location;)V

    return-void
.end method

.method private getGpsLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/biznessapps/common/components/LocationFinder$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/components/LocationFinder$1;-><init>(Lcom/biznessapps/common/components/LocationFinder;)V

    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private getNetworkLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lcom/biznessapps/common/components/LocationFinder$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/common/components/LocationFinder$2;-><init>(Lcom/biznessapps/common/components/LocationFinder;)V

    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 136
    if-nez p2, :cond_0

    .line 138
    const/4 v10, 0x1

    .line 174
    :goto_0
    return v10

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 143
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x1d4c0

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 144
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, -0x1d4c0

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 145
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 149
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 150
    const/4 v10, 0x1

    goto :goto_0

    .line 143
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 144
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 145
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 152
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 153
    const/4 v10, 0x0

    goto :goto_0

    .line 157
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 158
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 159
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 160
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 163
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/biznessapps/common/components/LocationFinder;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 167
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 168
    const/4 v10, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 159
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 160
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 169
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 170
    const/4 v10, 0x1

    goto :goto_0

    .line 171
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 172
    const/4 v10, 0x1

    goto :goto_0

    .line 174
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 179
    if-nez p1, :cond_1

    .line 180
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 182
    :goto_0
    return v0

    .line 180
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 182
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private declared-synchronized processNewLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/biznessapps/common/components/LocationFinder;->currentBestLocation:Landroid/location/Location;

    invoke-direct {p0, p1, v2}, Lcom/biznessapps/common/components/LocationFinder;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    iput-object p1, p0, Lcom/biznessapps/common/components/LocationFinder;->currentBestLocation:Landroid/location/Location;

    .line 125
    iget-object v2, p0, Lcom/biznessapps/common/components/LocationFinder;->listeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationListener;

    .line 126
    .local v1, "listener":Landroid/location/LocationListener;
    iget-object v2, p0, Lcom/biznessapps/common/components/LocationFinder;->currentBestLocation:Landroid/location/Location;

    invoke-interface {v1, v2}, Landroid/location/LocationListener;->onLocationChanged(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 123
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Landroid/location/LocationListener;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 129
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public addLocationListener(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "listenerToAdd"    # Landroid/location/LocationListener;

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->listeners:Ljava/util/List;

    .line 61
    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    .line 62
    iput-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    .line 63
    return-void
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 5

    .prologue
    .line 78
    iget-object v3, p0, Lcom/biznessapps/common/components/LocationFinder;->currentBestLocation:Landroid/location/Location;

    if-eqz v3, :cond_0

    .line 79
    iget-object v2, p0, Lcom/biznessapps/common/components/LocationFinder;->currentBestLocation:Landroid/location/Location;

    .line 91
    .local v2, "resultLocation":Landroid/location/Location;
    :goto_0
    return-object v2

    .line 81
    .end local v2    # "resultLocation":Landroid/location/Location;
    :cond_0
    iget-object v3, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 82
    .local v0, "lastKnownGpsLoc":Landroid/location/Location;
    iget-object v3, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    const-string v4, "network"

    invoke-virtual {v3, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .line 84
    .local v1, "lastKnownNetworkLoc":Landroid/location/Location;
    if-eqz v1, :cond_1

    invoke-direct {p0, v1, v0}, Lcom/biznessapps/common/components/LocationFinder;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    move-object v2, v1

    .restart local v2    # "resultLocation":Landroid/location/Location;
    goto :goto_0

    .line 88
    .end local v2    # "resultLocation":Landroid/location/Location;
    :cond_1
    move-object v2, v0

    .restart local v2    # "resultLocation":Landroid/location/Location;
    goto :goto_0
.end method

.method public removeLocationListener(Landroid/location/LocationListener;)V
    .locals 1
    .param p1, "listenerToRemove"    # Landroid/location/LocationListener;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->listeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    return-void
.end method

.method public startSearching()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/biznessapps/common/components/LocationFinder;->startSearching(Z)V

    .line 44
    return-void
.end method

.method public startSearching(Z)V
    .locals 7
    .param p1, "useGolfDelay"    # Z

    .prologue
    const/4 v4, 0x0

    .line 47
    if-eqz p1, :cond_0

    const/16 v6, 0x3a98

    .line 48
    .local v6, "delay":I
    :goto_0
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    const-string v1, "network"

    int-to-long v2, v6

    iget-object v5, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 49
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    int-to-long v2, v6

    iget-object v5, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 50
    return-void

    .line 47
    .end local v6    # "delay":I
    :cond_0
    const v6, 0x1d4c0

    goto :goto_0
.end method

.method public stopSearching()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 53
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    if-eqz v3, :cond_2

    :goto_1
    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/biznessapps/common/components/LocationFinder;->networkLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 55
    iget-object v0, p0, Lcom/biznessapps/common/components/LocationFinder;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/biznessapps/common/components/LocationFinder;->gpsLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 57
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 53
    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
