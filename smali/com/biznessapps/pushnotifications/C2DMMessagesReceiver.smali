.class public Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMMessagesReceiver.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# static fields
.field private static final GEO_FENCING_ENABLED:Ljava/lang/String; = "gf=1"

.field private static final GEO_FENCING_MIN_DISTANCE:I = 0x64

.field private static final JELLY_BEAN_OS_NUMBER:I = 0x10

.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static lastSavedLocation:Landroid/location/Location;

.field private static locationListener:Landroid/location/LocationListener;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendForSpecificArea(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendForCircledArea(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    return-void
.end method

.method static synthetic access$300()Landroid/location/Location;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->lastSavedLocation:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$302(Landroid/location/Location;)Landroid/location/Location;
    .locals 0
    .param p0, "x0"    # Landroid/location/Location;

    .prologue
    .line 36
    sput-object p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->lastSavedLocation:Landroid/location/Location;

    return-object p0
.end method

.method static synthetic access$400(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->checkGFmessages()V

    return-void
.end method

.method private checkAndSendNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v3, -0x1

    .line 126
    const/4 v9, 0x3

    .line 129
    .local v9, "readOffset":I
    const-string v1, ";;;"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 130
    .local v4, "detailsIndex":I
    if-eq v4, v3, :cond_2

    .line 131
    add-int v1, v4, v9

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 134
    .local v5, "detailsText":Ljava/lang/String;
    const-string v1, "id"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 135
    .local v7, "idStartIndex":I
    if-eq v7, v3, :cond_1

    .line 136
    add-int v1, v7, v9

    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, "id":Ljava/lang/String;
    new-instance v0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;

    move-object v1, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$1;-><init>(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/content/Context;)V

    .line 171
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/biznessapps/messages/MessageEntity;>;"
    new-array v1, v10, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 188
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Lcom/biznessapps/messages/MessageEntity;>;"
    .end local v2    # "id":Ljava/lang/String;
    .end local v5    # "detailsText":Ljava/lang/String;
    .end local v7    # "idStartIndex":I
    :cond_0
    :goto_0
    return-void

    .line 175
    .restart local v5    # "detailsText":Ljava/lang/String;
    .restart local v7    # "idStartIndex":I
    :cond_1
    const-string v1, "la"

    invoke-virtual {v5, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 176
    .local v8, "locationIndex":I
    if-eq v8, v3, :cond_0

    .line 180
    invoke-virtual {p2, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, v6}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_0

    .line 186
    .end local v5    # "detailsText":Ljava/lang/String;
    .end local v7    # "idStartIndex":I
    .end local v8    # "locationIndex":I
    :cond_2
    invoke-direct {p0, p1, p2, v6}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_0
.end method

.method private checkGFmessages()V
    .locals 10

    .prologue
    .line 251
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/storage/StorageKeeper;->getMessages()Ljava/util/List;

    move-result-object v4

    .line 252
    .local v4, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/messages/MessageEntity;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/messages/MessageEntity;

    .line 254
    .local v3, "message":Lcom/biznessapps/messages/MessageEntity;
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->isGeoFencingEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getActiveTill()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 258
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getActiveTill()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/biznessapps/utils/DateUtils;->getDateWithOffset(J)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 259
    .local v0, "activeTillTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-lez v6, :cond_1

    .line 261
    iget-object v6, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->context:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 262
    iget-object v6, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendForSpecificArea(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_0

    .line 266
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Lcom/biznessapps/messages/MessageEntity;->setGeoFencingEnabled(Z)V

    goto :goto_0

    .line 270
    .end local v0    # "activeTillTime":J
    :cond_2
    iget-object v6, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->context:Landroid/content/Context;

    if-eqz v6, :cond_0

    .line 271
    iget-object v6, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->context:Landroid/content/Context;

    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendForSpecificArea(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    goto :goto_0

    .line 276
    .end local v3    # "message":Lcom/biznessapps/messages/MessageEntity;
    :cond_3
    const/4 v5, 0x0

    .line 277
    .local v5, "needToUse":Z
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/biznessapps/messages/MessageEntity;

    .line 278
    .restart local v3    # "message":Lcom/biznessapps/messages/MessageEntity;
    invoke-virtual {v3}, Lcom/biznessapps/messages/MessageEntity;->isGeoFencingEnabled()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 279
    const/4 v5, 0x1

    .line 284
    .end local v3    # "message":Lcom/biznessapps/messages/MessageEntity;
    :cond_5
    if-eqz v5, :cond_6

    .line 285
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/components/LocationFinder;->startSearching()V

    .line 289
    :goto_1
    return-void

    .line 287
    :cond_6
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/biznessapps/common/components/LocationFinder;->stopSearching()V

    goto :goto_1
.end method

.method private getLocationListener()Landroid/location/LocationListener;
    .locals 1

    .prologue
    .line 320
    new-instance v0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver$2;-><init>(Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;)V

    return-object v0
.end method

.method private getNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)Landroid/app/Notification;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationIcon"    # I
    .param p3, "titleMessage"    # Ljava/lang/String;
    .param p4, "bodyMessage"    # Ljava/lang/String;
    .param p5, "richNotification"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/biznessapps/layout/MainController;

    invoke-direct {v2, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v4, "OPEN_MESSAGE_TAB_PROPERTY"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 94
    if-eqz p5, :cond_1

    .line 95
    invoke-virtual {p5}, Lcom/biznessapps/messages/MessageEntity;->getTabId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p5}, Lcom/biznessapps/messages/MessageEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 96
    :cond_0
    const-string v4, "RICH_PUSH_PROPERTY"

    invoke-virtual {v2, v4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 99
    :cond_1
    const/high16 v4, 0x8000000

    invoke-static {p1, v6, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 102
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 103
    .local v1, "notification":Landroid/app/Notification;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_2

    .line 105
    new-instance v3, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v3}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    .line 106
    .local v3, "textDiv":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    invoke-virtual {v3, p4}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    .line 107
    new-instance v4, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v4, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    new-array v5, v6, [J

    invoke-virtual {v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setVibrate([J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 119
    .end local v3    # "textDiv":Landroid/support/v4/app/NotificationCompat$BigTextStyle;
    :goto_0
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 120
    invoke-virtual {v1, p1, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 121
    const/4 v4, 0x2

    invoke-static {v4}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 122
    return-object v1

    .line 117
    :cond_2
    new-instance v1, Landroid/app/Notification;

    .end local v1    # "notification":Landroid/app/Notification;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, p2, p3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .restart local v1    # "notification":Landroid/app/Notification;
    goto :goto_0
.end method

.method private static isInArea(DDDDD)Z
    .locals 12
    .param p0, "userLong"    # D
    .param p2, "userLat"    # D
    .param p4, "pointLong"    # D
    .param p6, "pointLat"    # D
    .param p8, "r"    # D

    .prologue
    .line 304
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, p0

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double p0, v8, v10

    .line 305
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, p2

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double p2, v8, v10

    .line 306
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, p4

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double p4, v8, v10

    .line 307
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, p6

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double p6, v8, v10

    .line 308
    sub-double v8, p4, p0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v0, v8, v10

    .line 309
    .local v0, "d1":D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v0, v8, v10

    .line 310
    sub-double v8, p6, p2

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double v2, v8, v10

    .line 311
    .local v2, "d2":D
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    invoke-static/range {p4 .. p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double v2, v8, v10

    .line 312
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v10, v0, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->asin(D)D

    move-result-wide v10

    mul-double v4, v8, v10

    .line 313
    .local v4, "fi":D
    const-wide v8, 0x40b8df71d50c9712L    # 6367.4446571225

    mul-double v6, v4, v8

    .line 314
    .local v6, "l":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    add-double v8, v8, p8

    cmpg-double v8, v6, v8

    if-gtz v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    return v8

    :cond_0
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private saveMessage(Lcom/biznessapps/messages/MessageEntity;)V
    .locals 1
    .param p1, "message"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 246
    invoke-static {}, Lcom/biznessapps/storage/StorageKeeper;->instance()Lcom/biznessapps/storage/StorageKeeper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/biznessapps/storage/StorageKeeper;->addMessage(Lcom/biznessapps/messages/MessageEntity;)V

    .line 247
    return-void
.end method

.method private sendForCircledArea(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "detailsText"    # Ljava/lang/String;
    .param p3, "messageToSend"    # Ljava/lang/String;
    .param p4, "richNotification"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 193
    invoke-virtual/range {p4 .. p4}, Lcom/biznessapps/messages/MessageEntity;->getLongitude()Ljava/lang/String;

    move-result-object v16

    .line 194
    .local v16, "longitude":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/biznessapps/messages/MessageEntity;->getLatitude()Ljava/lang/String;

    move-result-object v15

    .line 195
    .local v15, "latitude":Ljava/lang/String;
    invoke-virtual/range {p4 .. p4}, Lcom/biznessapps/messages/MessageEntity;->getRadius()Ljava/lang/String;

    move-result-object v17

    .line 198
    .local v17, "radiusValue":Ljava/lang/String;
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v16, v18, v19

    const/16 v19, 0x1

    aput-object v15, v18, v19

    const/16 v19, 0x2

    aput-object v17, v18, v19

    invoke-static/range {v18 .. v18}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 199
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 200
    .local v6, "pointLat":D
    invoke-static/range {v16 .. v16}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 201
    .local v4, "pointLong":D
    invoke-static/range {v17 .. v17}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 204
    .local v12, "radius":D
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v14

    .line 205
    .local v14, "currentLocation":Landroid/location/Location;
    if-eqz v14, :cond_0

    .line 206
    invoke-virtual {v14}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 207
    .local v10, "currentLat":D
    invoke-virtual {v14}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 208
    .local v8, "currentLong":D
    invoke-static/range {v4 .. v13}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->isInArea(DDDDD)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 209
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->saveMessage(Lcom/biznessapps/messages/MessageEntity;)V

    .line 214
    .end local v4    # "pointLong":D
    .end local v6    # "pointLat":D
    .end local v8    # "currentLong":D
    .end local v10    # "currentLat":D
    .end local v12    # "radius":D
    .end local v14    # "currentLocation":Landroid/location/Location;
    :cond_0
    return-void
.end method

.method private sendForSpecificArea(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "messageToSend"    # Ljava/lang/String;
    .param p3, "richNotification"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/common/components/LocationFinder;->getCurrentLocation()Landroid/location/Location;

    move-result-object v4

    .line 220
    .local v4, "currentLocation":Landroid/location/Location;
    if-eqz v4, :cond_0

    .line 221
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 222
    .local v2, "currentLat":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 223
    .local v5, "currentLong":D
    invoke-virtual/range {p3 .. p3}, Lcom/biznessapps/messages/MessageEntity;->getPaths()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;->createList(Ljava/lang/String;)[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    move-result-object v10

    .line 224
    .local v10, "points":[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    new-instance v9, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;

    invoke-direct {v9, v2, v3, v5, v6}, Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;-><init>(DD)V

    .line 225
    .local v9, "point":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    invoke-static {v10, v9}, Lcom/biznessapps/pushnotifications/GeoFencingHelper;->isContainCoordinate([Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;)Z

    move-result v8

    .line 226
    .local v8, "isInArea":Z
    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/biznessapps/messages/MessageEntity;->setTitle(Ljava/lang/String;)V

    .line 227
    if-eqz v8, :cond_1

    .line 228
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/biznessapps/messages/MessageEntity;->setGeoFencingEnabled(Z)V

    .line 229
    invoke-direct/range {p0 .. p3}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V

    .line 238
    :goto_0
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->saveMessage(Lcom/biznessapps/messages/MessageEntity;)V

    .line 243
    .end local v2    # "currentLat":D
    .end local v4    # "currentLocation":Landroid/location/Location;
    .end local v5    # "currentLong":D
    .end local v8    # "isInArea":Z
    .end local v9    # "point":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .end local v10    # "points":[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    :cond_0
    :goto_1
    return-void

    .line 232
    .restart local v2    # "currentLat":D
    .restart local v4    # "currentLocation":Landroid/location/Location;
    .restart local v5    # "currentLong":D
    .restart local v8    # "isInArea":Z
    .restart local v9    # "point":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .restart local v10    # "points":[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Lcom/biznessapps/messages/MessageEntity;->getActiveTill()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_2

    .line 233
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Lcom/biznessapps/messages/MessageEntity;->setGeoFencingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v2    # "currentLat":D
    .end local v4    # "currentLocation":Landroid/location/Location;
    .end local v5    # "currentLong":D
    .end local v8    # "isInArea":Z
    .end local v9    # "point":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .end local v10    # "points":[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 235
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v2    # "currentLat":D
    .restart local v4    # "currentLocation":Landroid/location/Location;
    .restart local v5    # "currentLong":D
    .restart local v8    # "isInArea":Z
    .restart local v9    # "point":Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    .restart local v10    # "points":[Lcom/biznessapps/pushnotifications/GeoFencingHelper$GeoPoint;
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/biznessapps/common/components/LocationFinder;->startSearching()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bodyMessage"    # Ljava/lang/String;
    .param p3, "richNotification"    # Lcom/biznessapps/messages/MessageEntity;

    .prologue
    .line 77
    const/4 v6, 0x1

    .line 78
    .local v6, "HELLO_ID":I
    sget v0, Lcom/biznessapps/layout/R$string;->app_name:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "titleMessage":Ljava/lang/String;
    sget v2, Lcom/biznessapps/layout/R$drawable;->icon_icon:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->getNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Lcom/biznessapps/messages/MessageEntity;)Landroid/app/Notification;

    move-result-object v7

    .line 81
    .local v7, "notification":Landroid/app/Notification;
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    .line 83
    .local v8, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v8, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 85
    invoke-static {p1}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->getInstance(Landroid/content/Context;)Lcom/biznessapps/common/social/stats/UserStatsProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/common/social/stats/UserStatsProfile;->updateNumberOfMessages()V

    .line 86
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->context:Landroid/content/Context;

    .line 55
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 58
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_1

    .line 63
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/biznessapps/api/AppCore;->init(Landroid/content/Context;)V

    .line 65
    :cond_1
    const-string v2, "payload"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 67
    invoke-direct {p0, p1, v1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->checkAndSendNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->locationListener:Landroid/location/LocationListener;

    if-nez v2, :cond_3

    .line 71
    invoke-direct {p0}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->getLocationListener()Landroid/location/LocationListener;

    move-result-object v2

    sput-object v2, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->locationListener:Landroid/location/LocationListener;

    .line 72
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getLocationFinder()Lcom/biznessapps/common/components/LocationFinder;

    move-result-object v2

    sget-object v3, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->locationListener:Landroid/location/LocationListener;

    invoke-virtual {v2, v3}, Lcom/biznessapps/common/components/LocationFinder;->addLocationListener(Landroid/location/LocationListener;)V

    .line 74
    :cond_3
    return-void
.end method
