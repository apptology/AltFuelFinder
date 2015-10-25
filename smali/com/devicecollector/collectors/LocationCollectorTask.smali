.class public Lcom/devicecollector/collectors/LocationCollectorTask;
.super Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;
.source "LocationCollectorTask.java"

# interfaces
.implements Landroid/location/LocationListener;


# static fields
.field private static final LOCATION_MAX_AGE:I = 0x36ee80

.field private static final MAX_DISTANCE_DELTA:I = 0xc8

.field private static final ONE_SECOND:I = 0x3e8


# instance fields
.field private currentLocation:Landroid/location/Location;

.field foundLocation:Z

.field private locationManager:Landroid/location/LocationManager;

.field private started:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;J)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "listener"    # Lcom/devicecollector/collectors/CollectorStatusListener;
    .param p3, "data"    # Lcom/devicecollector/DataCollection;
    .param p4, "timeout"    # J

    .prologue
    .line 79
    sget-object v4, Lcom/devicecollector/collectors/CollectorEnum;->GEO_LOCATION:Lcom/devicecollector/collectors/CollectorEnum;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/devicecollector/collectors/AbstractAsyncCollectorTask;-><init>(Landroid/app/Activity;Lcom/devicecollector/collectors/CollectorStatusListener;Lcom/devicecollector/DataCollection;Lcom/devicecollector/collectors/CollectorEnum;J)V

    .line 65
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->started:Ljava/util/Date;

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    .line 83
    return-void
.end method

.method private getOlderUpdate(Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    const-wide/16 v2, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v1, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 216
    return-void
.end method

.method private getSingleUpdate(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 205
    return-void
.end method

.method private isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 14
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "currentBestLocation"    # Landroid/location/Location;

    .prologue
    .line 288
    if-nez p2, :cond_0

    .line 290
    const/4 v10, 0x1

    .line 332
    :goto_0
    return v10

    .line 294
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getTime()J

    move-result-wide v12

    sub-long v8, v10, v12

    .line 295
    .local v8, "timeDelta":J
    const-wide/32 v10, 0x36ee80

    cmp-long v10, v8, v10

    if-lez v10, :cond_1

    const/4 v6, 0x1

    .line 297
    .local v6, "isSignificantlyNewer":Z
    :goto_1
    const-wide/32 v10, 0x36ee80

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    const/4 v7, 0x1

    .line 299
    .local v7, "isSignificantlyOlder":Z
    :goto_2
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    const/4 v4, 0x1

    .line 303
    .local v4, "isNewer":Z
    :goto_3
    if-eqz v6, :cond_4

    .line 304
    const/4 v10, 0x1

    goto :goto_0

    .line 295
    .end local v4    # "isNewer":Z
    .end local v6    # "isSignificantlyNewer":Z
    .end local v7    # "isSignificantlyOlder":Z
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 297
    .restart local v6    # "isSignificantlyNewer":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 299
    .restart local v7    # "isSignificantlyOlder":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 306
    .restart local v4    # "isNewer":Z
    :cond_4
    if-eqz v7, :cond_5

    .line 307
    const/4 v10, 0x0

    goto :goto_0

    .line 311
    :cond_5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getAccuracy()F

    move-result v11

    sub-float/2addr v10, v11

    float-to-int v0, v10

    .line 313
    .local v0, "accuracyDelta":I
    if-lez v0, :cond_6

    const/4 v2, 0x1

    .line 314
    .local v2, "isLessAccurate":Z
    :goto_4
    if-gez v0, :cond_7

    const/4 v3, 0x1

    .line 315
    .local v3, "isMoreAccurate":Z
    :goto_5
    const/16 v10, 0xc8

    if-le v0, v10, :cond_8

    const/4 v5, 0x1

    .line 319
    .local v5, "isSignificantlyLessAccurate":Z
    :goto_6
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p2 .. p2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/devicecollector/collectors/LocationCollectorTask;->isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 325
    .local v1, "isFromSameProvider":Z
    if-eqz v3, :cond_9

    .line 326
    const/4 v10, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "isFromSameProvider":Z
    .end local v2    # "isLessAccurate":Z
    .end local v3    # "isMoreAccurate":Z
    .end local v5    # "isSignificantlyLessAccurate":Z
    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    .line 314
    .restart local v2    # "isLessAccurate":Z
    :cond_7
    const/4 v3, 0x0

    goto :goto_5

    .line 315
    .restart local v3    # "isMoreAccurate":Z
    :cond_8
    const/4 v5, 0x0

    goto :goto_6

    .line 327
    .restart local v1    # "isFromSameProvider":Z
    .restart local v5    # "isSignificantlyLessAccurate":Z
    :cond_9
    if-eqz v4, :cond_a

    if-nez v2, :cond_a

    .line 328
    const/4 v10, 0x1

    goto :goto_0

    .line 329
    :cond_a
    if-eqz v4, :cond_b

    if-nez v5, :cond_b

    if-eqz v1, :cond_b

    .line 330
    const/4 v10, 0x1

    goto :goto_0

    .line 332
    :cond_b
    const/4 v10, 0x0

    goto :goto_0
.end method

.method private isSameProvider(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "provider1"    # Ljava/lang/String;
    .param p2, "provider2"    # Ljava/lang/String;

    .prologue
    .line 343
    if-nez p1, :cond_1

    .line 344
    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 346
    :goto_0
    return v0

    .line 344
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private stopListening()V
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 275
    :cond_0
    return-void
.end method

.method private submitLocation()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x3e8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 222
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->started:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    div-long v0, v2, v8

    .line 226
    .local v0, "time":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time it took:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    sget-object v3, Lcom/devicecollector/DataCollection$PostElement;->LATITUDE:Lcom/devicecollector/DataCollection$PostElement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    sget-object v3, Lcom/devicecollector/DataCollection$PostElement;->LONGITUDE:Lcom/devicecollector/DataCollection$PostElement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 232
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    sget-object v3, Lcom/devicecollector/DataCollection$PostElement;->GEO_DATE:Lcom/devicecollector/DataCollection$PostElement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v8

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 234
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->dc:Lcom/devicecollector/DataCollection;

    sget-object v3, Lcom/devicecollector/DataCollection$PostElement;->GEO_PROVIDER:Lcom/devicecollector/DataCollection$PostElement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/devicecollector/DataCollection;->addMobileData(Lcom/devicecollector/DataCollection$PostElement;Ljava/lang/String;)V

    .line 236
    iput-boolean v7, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->foundLocation:Z

    .line 247
    .end local v0    # "time":J
    :cond_0
    :goto_0
    iput-boolean v7, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->finished:Z

    .line 250
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->stopListening()V

    .line 253
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    iget-object v3, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCause:Ljava/lang/Exception;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/LocationCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    .line 255
    return-void

    .line 238
    :cond_1
    const-string v2, "No Location found."

    new-array v3, v6, [Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iget-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    if-nez v2, :cond_0

    .line 241
    sget-object v2, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    iput-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 242
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No location found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCause:Ljava/lang/Exception;

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 264
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 265
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->stopListening()V

    .line 266
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    .line 360
    iget-object v0, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-direct {p0, p1, v0}, Lcom/devicecollector/collectors/LocationCollectorTask;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iput-object p1, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    .line 363
    :cond_0
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->submitLocation()V

    .line 364
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 375
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->submitLocation()V

    .line 376
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 386
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 398
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->submitLocation()V

    .line 402
    :cond_1
    return-void
.end method

.method protected run()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    .line 96
    iput-boolean v13, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->foundLocation:Z

    .line 97
    const/4 v0, 0x0

    .line 109
    .local v0, "bestProvider":Ljava/lang/String;
    :try_start_0
    const-string v9, "Getting providers"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v7

    .line 113
    .local v7, "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 115
    sget-object v9, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    new-instance v10, Ljava/lang/RuntimeException;

    sget-object v11, Lcom/devicecollector/collectors/SoftErrorCode;->SERVICE_UNAVAILABLE:Lcom/devicecollector/collectors/SoftErrorCode;

    invoke-virtual {v11}, Lcom/devicecollector/collectors/SoftErrorCode;->name()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->endProcess(Lcom/devicecollector/collectors/SoftErrorCode;Ljava/lang/Exception;)V

    .line 195
    .end local v7    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v7    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 122
    .local v6, "provider":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_2

    .line 123
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Trying provider ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    if-nez v0, :cond_3

    .line 126
    move-object v0, v6

    .line 128
    :cond_3
    iget-object v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->locationManager:Landroid/location/LocationManager;

    const-string v10, "network"

    invoke-virtual {v9, v10}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v5

    .line 131
    .local v5, "location":Landroid/location/Location;
    if-eqz v5, :cond_2

    .line 132
    iget-object v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->started:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v11

    sub-long v1, v9, v11

    .line 133
    .local v1, "difference":J
    const-wide/32 v9, 0x36ee80

    cmp-long v9, v1, v9

    if-gez v9, :cond_2

    .line 134
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "New enough, using this location: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    iget-object v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    invoke-direct {p0, v5, v9}, Lcom/devicecollector/collectors/LocationCollectorTask;->isBetterLocation(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 138
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is better location"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iput-object v5, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->currentLocation:Landroid/location/Location;

    .line 140
    move-object v0, v6

    .line 141
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->foundLocation:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    .end local v1    # "difference":J
    .end local v5    # "location":Landroid/location/Location;
    .end local v6    # "provider":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    if-nez v9, :cond_0

    .line 160
    iget-boolean v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->foundLocation:Z

    if-eqz v9, :cond_5

    if-nez v0, :cond_8

    .line 161
    :cond_5
    const-string v9, "making a single request"

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    monitor-enter p0

    .line 164
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 165
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x8

    if-le v9, v10, :cond_7

    .line 168
    invoke-direct {p0, v0}, Lcom/devicecollector/collectors/LocationCollectorTask;->getSingleUpdate(Ljava/lang/String;)V

    .line 173
    :goto_1
    iget-boolean v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->finished:Z

    if-nez v9, :cond_6

    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->isCancelled()Z

    move-result v9

    if-nez v9, :cond_6

    .line 174
    const-string v9, "Waiting on location... for [%s] milliseconds"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->getTimeoutMs()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->getTimeoutMs()J

    move-result-wide v9

    invoke-virtual {p0, v9, v10}, Ljava/lang/Object;->wait(J)V

    .line 177
    const-string v9, "Done Waiting on location."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-boolean v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->foundLocation:Z

    if-nez v9, :cond_6

    .line 180
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->stopListening()V

    .line 182
    invoke-virtual {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->timeout()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 188
    :cond_6
    :goto_2
    :try_start_2
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v9

    .line 149
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v7    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v8

    .line 153
    .local v8, "se":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-array v10, v13, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    sget-object v9, Lcom/devicecollector/collectors/SoftErrorCode;->PERMISSION_DENIED:Lcom/devicecollector/collectors/SoftErrorCode;

    iput-object v9, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCode:Lcom/devicecollector/collectors/SoftErrorCode;

    .line 155
    iput-object v8, p0, Lcom/devicecollector/collectors/LocationCollectorTask;->errorCause:Ljava/lang/Exception;

    goto/16 :goto_0

    .line 170
    .end local v8    # "se":Ljava/lang/SecurityException;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v7    # "providers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_3
    invoke-direct {p0, v0}, Lcom/devicecollector/collectors/LocationCollectorTask;->getOlderUpdate(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 185
    :catch_1
    move-exception v4

    .line 186
    .local v4, "ie":Ljava/lang/Exception;
    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got exception(hiding it):"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/devicecollector/collectors/LocationCollectorTask;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 192
    .end local v4    # "ie":Ljava/lang/Exception;
    :cond_8
    invoke-direct {p0}, Lcom/devicecollector/collectors/LocationCollectorTask;->submitLocation()V

    goto/16 :goto_0
.end method
