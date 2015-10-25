.class final Ltwitter4j/internal/json/StatusJSONImpl;
.super Ltwitter4j/internal/json/TwitterResponseImpl;
.source "StatusJSONImpl.java"

# interfaces
.implements Ltwitter4j/Status;
.implements Ljava/io/Serializable;


# static fields
.field private static final logger:Ltwitter4j/internal/logging/Logger;

.field private static final serialVersionUID:J = 0x68c214e4e0c8cc29L


# instance fields
.field private contributorsIDs:[J

.field private createdAt:Ljava/util/Date;

.field private currentUserRetweetId:J

.field private favoriteCount:J

.field private geoLocation:Ltwitter4j/GeoLocation;

.field private hashtagEntities:[Ltwitter4j/HashtagEntity;

.field private id:J

.field private inReplyToScreenName:Ljava/lang/String;

.field private inReplyToStatusId:J

.field private inReplyToUserId:J

.field private isFavorited:Z

.field private isPossiblySensitive:Z

.field private isRetweeted:Z

.field private isTruncated:Z

.field private isoLanguageCode:Ljava/lang/String;

.field private mediaEntities:[Ltwitter4j/MediaEntity;

.field private place:Ltwitter4j/Place;

.field private retweetCount:J

.field private retweetedStatus:Ltwitter4j/Status;

.field private source:Ljava/lang/String;

.field private symbolEntities:[Ltwitter4j/SymbolEntity;

.field private text:Ljava/lang/String;

.field private urlEntities:[Ltwitter4j/URLEntity;

.field private user:Ltwitter4j/User;

.field private userMentionEntities:[Ltwitter4j/UserMentionEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Ltwitter4j/internal/json/StatusJSONImpl;

    invoke-static {v0}, Ltwitter4j/internal/logging/Logger;->getLogger(Ljava/lang/Class;)Ltwitter4j/internal/logging/Logger;

    move-result-object v0

    sput-object v0, Ltwitter4j/internal/json/StatusJSONImpl;->logger:Ltwitter4j/internal/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 52
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 53
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 324
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 94
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)V
    .locals 4
    .param p1, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 69
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>(Ltwitter4j/internal/http/HttpResponse;)V

    .line 52
    iput-object v3, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 53
    iput-object v3, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 66
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 324
    iput-object v3, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 70
    invoke-virtual {p1}, Ltwitter4j/internal/http/HttpResponse;->asJSONObject()Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v0

    .line 71
    .local v0, "json":Ltwitter4j/internal/org/json/JSONObject;
    invoke-direct {p0, v0}, Ltwitter4j/internal/json/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 72
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 74
    invoke-static {p0, v0}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    :cond_0
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 3
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 52
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 53
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 324
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 88
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 89
    return-void
.end method

.method constructor <init>(Ltwitter4j/internal/org/json/JSONObject;Ltwitter4j/conf/Configuration;)V
    .locals 3
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p2, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0}, Ltwitter4j/internal/json/TwitterResponseImpl;-><init>()V

    .line 52
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 53
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 66
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 324
    iput-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 80
    invoke-direct {p0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;->init(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 81
    invoke-interface {p2}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-static {p0, p1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    :cond_0
    return-void
.end method

.method static createStatusList(Ltwitter4j/internal/http/HttpResponse;Ltwitter4j/conf/Configuration;)Ltwitter4j/ResponseList;
    .locals 8
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;
    .param p1, "conf"    # Ltwitter4j/conf/Configuration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltwitter4j/internal/http/HttpResponse;",
            "Ltwitter4j/conf/Configuration;",
            ")",
            "Ltwitter4j/ResponseList",
            "<",
            "Ltwitter4j/Status;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 432
    :try_start_0
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 433
    invoke-static {}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->clearThreadLocalMap()V

    .line 435
    :cond_0
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->asJSONArray()Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 436
    .local v3, "list":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v4

    .line 437
    .local v4, "size":I
    new-instance v6, Ltwitter4j/internal/json/ResponseListImpl;

    invoke-direct {v6, v4, p0}, Ltwitter4j/internal/json/ResponseListImpl;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 438
    .local v6, "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 439
    invoke-virtual {v3, v0}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v1

    .line 440
    .local v1, "json":Ltwitter4j/internal/org/json/JSONObject;
    new-instance v5, Ltwitter4j/internal/json/StatusJSONImpl;

    invoke-direct {v5, v1}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    .line 441
    .local v5, "status":Ltwitter4j/Status;
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 442
    invoke-static {v5, v1}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_1
    invoke-interface {v6, v5}, Ltwitter4j/ResponseList;->add(Ljava/lang/Object;)Z

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "json":Ltwitter4j/internal/org/json/JSONObject;
    .end local v5    # "status":Ltwitter4j/Status;
    :cond_2
    invoke-interface {p1}, Ltwitter4j/conf/Configuration;->isJSONStoreEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 447
    invoke-static {v6, v3}, Ltwitter4j/internal/json/DataObjectFactoryUtil;->registerJSONObject(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :cond_3
    return-object v6

    .line 450
    .end local v0    # "i":I
    .end local v3    # "list":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "size":I
    .end local v6    # "statuses":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<Ltwitter4j/Status;>;"
    :catch_0
    move-exception v2

    .line 451
    .local v2, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v7, Ltwitter4j/TwitterException;

    invoke-direct {v7, v2}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v7
.end method

.method private init(Ltwitter4j/internal/org/json/JSONObject;)V
    .locals 16
    .param p1, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ltwitter4j/TwitterException;
        }
    .end annotation

    .prologue
    .line 97
    const-string v11, "id"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    .line 98
    const-string v11, "source"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->source:Ljava/lang/String;

    .line 99
    const-string v11, "created_at"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getDate(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/util/Date;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->createdAt:Ljava/util/Date;

    .line 100
    const-string v11, "truncated"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->isTruncated:Z

    .line 101
    const-string v11, "in_reply_to_status_id"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToStatusId:J

    .line 102
    const-string v11, "in_reply_to_user_id"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToUserId:J

    .line 103
    const-string v11, "favorited"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->isFavorited:Z

    .line 104
    const-string v11, "retweeted"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->isRetweeted:Z

    .line 105
    const-string v11, "in_reply_to_screen_name"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    .line 106
    const-string v11, "retweet_count"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetCount:J

    .line 107
    const-string v11, "favorite_count"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->favoriteCount:J

    .line 108
    const-string v11, "possibly_sensitive"

    move-object/from16 v0, p1

    invoke-static {v11, v0}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getBoolean(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Z

    move-result v11

    move-object/from16 v0, p0

    iput-boolean v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->isPossiblySensitive:Z

    .line 110
    :try_start_0
    const-string v11, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 111
    new-instance v11, Ltwitter4j/internal/json/UserJSONImpl;

    const-string v12, "user"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/internal/json/UserJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    .line 113
    :cond_0
    invoke-static/range {p1 .. p1}, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->createGeoLocation(Ltwitter4j/internal/org/json/JSONObject;)Ltwitter4j/GeoLocation;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    .line 114
    const-string v11, "place"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 115
    new-instance v11, Ltwitter4j/internal/json/PlaceJSONImpl;

    const-string v12, "place"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/internal/json/PlaceJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    .line 118
    :cond_1
    const-string v11, "retweeted_status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 119
    new-instance v11, Ltwitter4j/internal/json/StatusJSONImpl;

    const-string v12, "retweeted_status"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v12

    invoke-direct {v11, v12}, Ltwitter4j/internal/json/StatusJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    .line 121
    :cond_2
    const-string v11, "contributors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 122
    const-string v11, "contributors"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v1

    .line 123
    .local v1, "contributorsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v11

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    .line 124
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v1}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v11

    if-ge v4, v11, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v1, v4}, Ltwitter4j/internal/org/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    aput-wide v12, v11, v4

    .line 124
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "contributorsArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "i":I
    :cond_3
    const/4 v11, 0x0

    new-array v11, v11, [J

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    .line 130
    :cond_4
    const-string v11, "entities"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 131
    const-string v11, "entities"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v2

    .line 133
    .local v2, "entities":Ltwitter4j/internal/org/json/JSONObject;
    const-string v11, "user_mentions"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 134
    const-string v11, "user_mentions"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v10

    .line 135
    .local v10, "userMentionsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v10}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 136
    .local v6, "len":I
    new-array v11, v6, [Ltwitter4j/UserMentionEntity;

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 137
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_1
    if-ge v4, v6, :cond_5

    .line 138
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    new-instance v12, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;

    invoke-virtual {v10, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/internal/json/UserMentionEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 137
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v10    # "userMentionsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_5
    const-string v11, "urls"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 142
    const-string v11, "urls"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v9

    .line 143
    .local v9, "urlsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v9}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 144
    .restart local v6    # "len":I
    new-array v11, v6, [Ltwitter4j/URLEntity;

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 145
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v6, :cond_6

    .line 146
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    new-instance v12, Ltwitter4j/internal/json/URLEntityJSONImpl;

    invoke-virtual {v9, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/internal/json/URLEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 145
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 150
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v9    # "urlsArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_6
    const-string v11, "hashtags"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 151
    const-string v11, "hashtags"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 152
    .local v3, "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 153
    .restart local v6    # "len":I
    new-array v11, v6, [Ltwitter4j/HashtagEntity;

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 154
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v6, :cond_7

    .line 155
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    new-instance v12, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 159
    .end local v3    # "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "len":I
    :cond_7
    const-string v11, "symbols"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 160
    const-string v11, "symbols"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v3

    .line 161
    .restart local v3    # "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v3}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 162
    .restart local v6    # "len":I
    new-array v11, v6, [Ltwitter4j/SymbolEntity;

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 163
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4
    if-ge v4, v6, :cond_8

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    new-instance v12, Ltwitter4j/internal/json/HashtagEntityJSONImpl;

    invoke-virtual {v3, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/internal/json/HashtagEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 163
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 169
    .end local v3    # "hashtagsArray":Ltwitter4j/internal/org/json/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "len":I
    :cond_8
    const-string v11, "media"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_9

    .line 170
    const-string v11, "media"

    invoke-virtual {v2, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONArray(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONArray;

    move-result-object v7

    .line 171
    .local v7, "mediaArray":Ltwitter4j/internal/org/json/JSONArray;
    invoke-virtual {v7}, Ltwitter4j/internal/org/json/JSONArray;->length()I

    move-result v6

    .line 172
    .restart local v6    # "len":I
    new-array v11, v6, [Ltwitter4j/MediaEntity;

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 173
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5
    if-ge v4, v6, :cond_9

    .line 174
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    new-instance v12, Ltwitter4j/internal/json/MediaEntityJSONImpl;

    invoke-virtual {v7, v4}, Ltwitter4j/internal/org/json/JSONArray;->getJSONObject(I)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v13

    invoke-direct {v12, v13}, Ltwitter4j/internal/json/MediaEntityJSONImpl;-><init>(Ltwitter4j/internal/org/json/JSONObject;)V

    aput-object v12, v11, v4

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 178
    .end local v2    # "entities":Ltwitter4j/internal/org/json/JSONObject;
    .end local v4    # "i":I
    .end local v6    # "len":I
    .end local v7    # "mediaArray":Ltwitter4j/internal/org/json/JSONArray;
    :cond_9
    const-string v11, "metadata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 179
    const-string v11, "metadata"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v8

    .line 180
    .local v8, "metadata":Ltwitter4j/internal/org/json/JSONObject;
    const-string v11, "iso_language_code"

    invoke-virtual {v8, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 181
    const-string v11, "iso_language_code"

    invoke-static {v11, v8}, Ltwitter4j/internal/json/z_T4JInternalParseUtil;->getUnescapedString(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    .line 185
    .end local v8    # "metadata":Ltwitter4j/internal/org/json/JSONObject;
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v11, :cond_c

    const/4 v11, 0x0

    new-array v11, v11, [Ltwitter4j/UserMentionEntity;

    :goto_6
    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    .line 186
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v11, :cond_d

    const/4 v11, 0x0

    new-array v11, v11, [Ltwitter4j/URLEntity;

    :goto_7
    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    .line 187
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v11, :cond_e

    const/4 v11, 0x0

    new-array v11, v11, [Ltwitter4j/HashtagEntity;

    :goto_8
    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    .line 188
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    if-nez v11, :cond_f

    const/4 v11, 0x0

    new-array v11, v11, [Ltwitter4j/SymbolEntity;

    :goto_9
    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    .line 189
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v11, :cond_10

    const/4 v11, 0x0

    new-array v11, v11, [Ltwitter4j/MediaEntity;

    :goto_a
    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    .line 190
    const-string v11, "text"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    move-object/from16 v0, p0

    iget-object v13, v0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    move-object/from16 v0, p0

    iget-object v14, v0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    move-object/from16 v0, p0

    iget-object v15, v0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v11, v12, v13, v14, v15}, Ltwitter4j/internal/json/HTMLEntity;->unescapeAndSlideEntityIncdices(Ljava/lang/String;[Ltwitter4j/UserMentionEntity;[Ltwitter4j/URLEntity;[Ltwitter4j/HashtagEntity;[Ltwitter4j/MediaEntity;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->text:Ljava/lang/String;

    .line 192
    const-string v11, "current_user_retweet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 193
    const-string v11, "current_user_retweet"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ltwitter4j/internal/org/json/JSONObject;->getJSONObject(Ljava/lang/String;)Ltwitter4j/internal/org/json/JSONObject;

    move-result-object v11

    const-string v12, "id"

    invoke-virtual {v11, v12}, Ltwitter4j/internal/org/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    move-object/from16 v0, p0

    iput-wide v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    .line 198
    :cond_b
    return-void

    .line 185
    :cond_c
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    goto :goto_6

    .line 186
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    goto :goto_7

    .line 187
    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    goto :goto_8

    .line 188
    :cond_f
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    goto :goto_9

    .line 189
    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;
    :try_end_0
    .catch Ltwitter4j/internal/org/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    .line 195
    :catch_0
    move-exception v5

    .line 196
    .local v5, "jsone":Ltwitter4j/internal/org/json/JSONException;
    new-instance v11, Ltwitter4j/TwitterException;

    invoke-direct {v11, v5}, Ltwitter4j/TwitterException;-><init>(Ljava/lang/Exception;)V

    throw v11
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 37
    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ltwitter4j/internal/json/StatusJSONImpl;->compareTo(Ltwitter4j/Status;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ltwitter4j/Status;)I
    .locals 6
    .param p1, "that"    # Ltwitter4j/Status;

    .prologue
    .line 202
    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 203
    .local v0, "delta":J
    const-wide/32 v2, -0x80000000

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 204
    const/high16 v2, -0x80000000

    .line 208
    :goto_0
    return v2

    .line 205
    :cond_0
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 206
    const v2, 0x7fffffff

    goto :goto_0

    .line 208
    :cond_1
    long-to-int v2, v0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 462
    if-nez p1, :cond_1

    move v0, v1

    .line 468
    .end local p1    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 465
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_1
    if-eq p0, p1, :cond_0

    .line 468
    instance-of v2, p1, Ltwitter4j/Status;

    if-eqz v2, :cond_2

    check-cast p1, Ltwitter4j/Status;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-interface {p1}, Ltwitter4j/Status;->getId()J

    move-result-wide v2

    iget-wide v4, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getContributors()[J
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    return-object v0
.end method

.method public getCreatedAt()Ljava/util/Date;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public getCurrentUserRetweetId()J
    .locals 2

    .prologue
    .line 371
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    return-wide v0
.end method

.method public getFavoriteCount()J
    .locals 2

    .prologue
    .line 321
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->favoriteCount:J

    return-wide v0
.end method

.method public getGeoLocation()Ltwitter4j/GeoLocation;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    return-object v0
.end method

.method public getHashtagEntities()[Ltwitter4j/HashtagEntity;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 224
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    return-wide v0
.end method

.method public getInReplyToScreenName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    return-object v0
.end method

.method public getInReplyToStatusId()J
    .locals 2

    .prologue
    .line 257
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToStatusId:J

    return-wide v0
.end method

.method public getInReplyToUserId()J
    .locals 2

    .prologue
    .line 265
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToUserId:J

    return-wide v0
.end method

.method public getIsoLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaEntities()[Ltwitter4j/MediaEntity;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    return-object v0
.end method

.method public getPlace()Ltwitter4j/Place;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    return-object v0
.end method

.method public getRetweetCount()J
    .locals 2

    .prologue
    .line 355
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetCount:J

    return-wide v0
.end method

.method public getRetweetedStatus()Ltwitter4j/Status;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    return-object v0
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->source:Ljava/lang/String;

    return-object v0
.end method

.method public getSymbolEntities()[Ltwitter4j/SymbolEntity;
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->symbolEntities:[Ltwitter4j/SymbolEntity;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getURLEntities()[Ltwitter4j/URLEntity;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    return-object v0
.end method

.method public getUser()Ltwitter4j/User;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    return-object v0
.end method

.method public getUserMentionEntities()[Ltwitter4j/UserMentionEntity;
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 457
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    long-to-int v0, v0

    return v0
.end method

.method public isFavorited()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isFavorited:Z

    return v0
.end method

.method public isPossiblySensitive()Z
    .locals 1

    .prologue
    .line 379
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isPossiblySensitive:Z

    return v0
.end method

.method public isRetweet()Z
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetweeted()Z
    .locals 1

    .prologue
    .line 313
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isRetweeted:Z

    return v0
.end method

.method public isRetweetedByMe()Z
    .locals 4

    .prologue
    .line 363
    iget-wide v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTruncated()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isTruncated:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    const/4 v1, 0x0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StatusJSONImpl{createdAt="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->createdAt:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", text=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->text:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", source=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->source:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isTruncated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isTruncated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", inReplyToStatusId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToStatusId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", inReplyToUserId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToUserId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isFavorited="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isFavorited:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isRetweeted="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isRetweeted:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", favoriteCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->favoriteCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", inReplyToScreenName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->inReplyToScreenName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", geoLocation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->geoLocation:Ltwitter4j/GeoLocation;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", place="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->place:Ltwitter4j/Place;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", retweetCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isPossiblySensitive="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isPossiblySensitive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", isoLanguageCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->isoLanguageCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", contributorsIDs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->contributorsIDs:[J

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", retweetedStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->retweetedStatus:Ltwitter4j/Status;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", userMentionEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", urlEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", hashtagEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mediaEntities="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    if-nez v2, :cond_3

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentUserRetweetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->currentUserRetweetId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->user:Ltwitter4j/User;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->userMentionEntities:[Ltwitter4j/UserMentionEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->urlEntities:[Ltwitter4j/URLEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ltwitter4j/internal/json/StatusJSONImpl;->hashtagEntities:[Ltwitter4j/HashtagEntity;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Ltwitter4j/internal/json/StatusJSONImpl;->mediaEntities:[Ltwitter4j/MediaEntity;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_3
.end method
