.class public Lcom/newrelic/agent/android/NewRelic;
.super Ljava/lang/Object;
.source "NewRelic.java"


# static fields
.field private static final DEFAULT_COLLECTOR_ADDR:Ljava/lang/String; = "mobile-collector.newrelic.com"

.field private static final UNKNOWN_HTTP_REQUEST_TYPE:Ljava/lang/String; = "unknown"

.field private static final agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static started:Z


# instance fields
.field private logLevel:I

.field private loggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 47
    new-instance v0, Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-direct {v0}, Lcom/newrelic/agent/android/AgentConfiguration;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 48
    const/4 v0, 0x0

    sput-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    .line 51
    const/4 v0, 0x3

    iput v0, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    .line 54
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setApplicationToken(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method private static _noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 20
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "appData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 476
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "noticeHttpTransaction: url must not be empty."

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v5, "noticeHttpTransaction: httpMethod must not be empty."

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :try_start_0
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    sub-long v5, p5, p3

    long-to-double v12, v5

    .line 487
    .local v12, "totalTime":D
    double-to-int v5, v12

    const-string v6, "noticeHttpTransaction: the startTimeMs is later than the endTimeMs, resulting in a negative total time."

    invoke-static {v5, v6}, Lcom/newrelic/agent/android/NewRelic;->checkNegative(ILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 490
    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double/2addr v12, v5

    .line 492
    new-instance v5, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    const/4 v9, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-wide/from16 v10, p3

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    move-object/from16 v18, p13

    invoke-direct/range {v5 .. v18}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v5}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 495
    move/from16 v0, p2

    int-to-long v5, v0

    const-wide/16 v7, 0x190

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 496
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p11

    move-object/from16 v4, p12

    invoke-static {v0, v1, v2, v3, v4}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    .line 499
    :cond_0
    return-void

    .line 481
    .end local v12    # "totalTime":D
    :catch_0
    move-exception v19

    .line 482
    .local v19, "e":Ljava/net/MalformedURLException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "noticeHttpTransaction: URL is malformed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private static checkEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "string"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 540
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 542
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 543
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    return-void
.end method

.method private static checkNegative(ILjava/lang/String;)Z
    .locals 1
    .param p0, "number"    # I
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 548
    if-gez p0, :cond_0

    .line 549
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 550
    const/4 v0, 0x1

    .line 552
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static checkNull(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 534
    if-nez p0, :cond_0

    .line 535
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 537
    :cond_0
    return-void
.end method

.method public static crashNow()V
    .locals 1

    .prologue
    .line 563
    const-string v0, "This is a demonstration crash courtesy of New Relic"

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->crashNow(Ljava/lang/String;)V

    .line 564
    return-void
.end method

.method public static crashNow(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 572
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static currentSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .locals 0
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 218
    invoke-static {p0}, Lcom/newrelic/agent/android/FeatureFlag;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 219
    return-void
.end method

.method public static enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .locals 0
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 207
    invoke-static {p0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 208
    return-void
.end method

.method public static endInteraction(Ljava/lang/String;)V
    .locals 0
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endTrace(Ljava/lang/String;)V

    .line 355
    return-void
.end method

.method public static incrementAttribute(Ljava/lang/String;)Z
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 609
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static incrementAttribute(Ljava/lang/String;F)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 620
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method private isInstrumented()Z
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getUnityInstrumentationFlag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStarted()Z
    .locals 1

    .prologue
    .line 253
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    return v0
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJ)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 457
    const-string v1, "unknown"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 458
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    const-string v1, "unknown"

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 467
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "unknown"

    const/4 v13, 0x0

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 468
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .param p12, "appData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 472
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "unknown"

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .param p12, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 452
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "unknown"

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V

    .line 453
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "statusCode"    # I
    .param p2, "startTimeMs"    # J
    .param p4, "endTimeMs"    # J
    .param p6, "bytesSent"    # J
    .param p8, "bytesReceived"    # J
    .param p10, "responseBody"    # Ljava/lang/String;
    .param p12, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 447
    .local p11, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "unknown"

    move-object v0, p0

    move v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V

    .line 448
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJ)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J

    .prologue
    .line 400
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 401
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 404
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-static/range {v0 .. v13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 409
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "appData"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p0 .. p13}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/net/URLConnection;)V
    .locals 29
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "urlConnection"    # Ljava/net/URLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .prologue
    .line 429
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p13, :cond_0

    .line 430
    const-string v1, "X-NewRelic-ID"

    move-object/from16 v0, p13

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 432
    .local v14, "header":Ljava/lang/String;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 433
    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 439
    .end local v14    # "header":Ljava/lang/String;
    :goto_0
    return-void

    .line 438
    :cond_0
    const/16 v28, 0x0

    move-object/from16 v15, p0

    move-object/from16 v16, p1

    move/from16 v17, p2

    move-wide/from16 v18, p3

    move-wide/from16 v20, p5

    move-wide/from16 v22, p7

    move-wide/from16 v24, p9

    move-object/from16 v26, p11

    move-object/from16 v27, p12

    invoke-static/range {v15 .. v28}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Lorg/apache/http/HttpResponse;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "statusCode"    # I
    .param p3, "startTimeMs"    # J
    .param p5, "endTimeMs"    # J
    .param p7, "bytesSent"    # J
    .param p9, "bytesReceived"    # J
    .param p11, "responseBody"    # Ljava/lang/String;
    .param p13, "httpResponse"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJJJ",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/apache/http/HttpResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    .local p12, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p13, :cond_0

    .line 417
    const-string v1, "X-NewRelic-ID"

    move-object/from16 v0, p13

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v15

    .line 419
    .local v15, "header":Lorg/apache/http/Header;
    if-eqz v15, :cond_0

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 420
    invoke-interface {v15}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    .line 426
    .end local v15    # "header":Lorg/apache/http/Header;
    :goto_0
    return-void

    .line 425
    :cond_0
    const/4 v14, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-static/range {v1 .. v14}, Lcom/newrelic/agent/android/NewRelic;->_noticeHttpTransaction(Ljava/lang/String;Ljava/lang/String;IJJJJLjava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "failure"    # Lcom/newrelic/agent/android/util/NetworkFailure;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 523
    const-string v1, "unknown"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V

    .line 524
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "e"    # Ljava/lang/Exception;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 528
    const-string v1, "unknown"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V

    .line 529
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V
    .locals 16
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "failure"    # Lcom/newrelic/agent/android/util/NetworkFailure;

    .prologue
    .line 506
    sget-object v2, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NewRelic.noticeNetworkFailure invoke - url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", httpMethod: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", startTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p2

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", endTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", failure: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 507
    new-instance v2, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    const/4 v5, 0x0

    invoke-virtual/range {p6 .. p6}, Lcom/newrelic/agent/android/util/NetworkFailure;->getErrorCode()I

    move-result v6

    move-wide/from16 v0, p4

    long-to-double v9, v0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v7, p2

    invoke-direct/range {v2 .. v15}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v2}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 508
    return-void
.end method

.method public static noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLjava/lang/Exception;)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "httpMethod"    # Ljava/lang/String;
    .param p2, "startTime"    # J
    .param p4, "endTime"    # J
    .param p6, "e"    # Ljava/lang/Exception;

    .prologue
    .line 511
    const-string v0, "noticeHttpException: url must not be empty."

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {p6}, Lcom/newrelic/agent/android/util/NetworkFailure;->exceptionToNetworkFailure(Ljava/lang/Exception;)Lcom/newrelic/agent/android/util/NetworkFailure;

    move-result-object v6

    .local v6, "failure":Lcom/newrelic/agent/android/util/NetworkFailure;
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 514
    invoke-static/range {v0 .. v6}, Lcom/newrelic/agent/android/NewRelic;->noticeNetworkFailure(Ljava/lang/String;Ljava/lang/String;JJLcom/newrelic/agent/android/util/NetworkFailure;)V

    .line 515
    return-void
.end method

.method public static recordEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->recordEvent(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 391
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {p0, p1, v0, v1}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;D)V

    .line 392
    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;D)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    const/4 v7, 0x0

    .line 387
    const/4 v2, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p2

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 388
    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;IDD)V
    .locals 9
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D

    .prologue
    const/4 v7, 0x0

    .line 373
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/newrelic/agent/android/NewRelic;->recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 374
    return-void
.end method

.method public static recordMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "totalValue"    # D
    .param p5, "exclusiveValue"    # D
    .param p7, "countUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;
    .param p8, "valueUnit"    # Lcom/newrelic/agent/android/metric/MetricUnit;

    .prologue
    .line 377
    const-string v0, "recordMetric: category must not be null. If no MetricCategory is applicable, use MetricCategory.NONE."

    invoke-static {p1, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 379
    const-string v0, "recordMetric: name must not be empty."

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/NewRelic;->checkEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const-string v0, "recordMetric: count must not be negative."

    invoke-static {p2, v0}, Lcom/newrelic/agent/android/NewRelic;->checkNegative(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 382
    invoke-static/range {p0 .. p8}, Lcom/newrelic/agent/android/Measurements;->addCustomMetric(Ljava/lang/String;Ljava/lang/String;IDDLcom/newrelic/agent/android/metric/MetricUnit;Lcom/newrelic/agent/android/metric/MetricUnit;)V

    .line 384
    :cond_0
    return-void
.end method

.method public static removeAllAttributes()Z
    .locals 1

    .prologue
    .line 640
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAllAttributes()Z

    move-result v0

    return v0
.end method

.method public static removeAttribute(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 630
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setAttribute(Ljava/lang/String;F)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F

    .prologue
    .line 599
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method public static setAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 588
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setInteractionName(Ljava/lang/String;)V
    .locals 0
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->setRootDisplayName(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public static setMaxEventBufferTime(I)V
    .locals 1
    .param p0, "maxBufferTimeInSec"    # I

    .prologue
    .line 675
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setMaxEventBufferTime(I)V

    .line 676
    return-void
.end method

.method public static setMaxEventPoolSize(I)V
    .locals 1
    .param p0, "maxSize"    # I

    .prologue
    .line 666
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setMaxEventPoolSize(I)V

    .line 667
    return-void
.end method

.method public static shutdown()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 264
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Deprecated/Shutdown"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 265
    sget-boolean v0, Lcom/newrelic/agent/android/NewRelic;->started:Z

    if-eqz v0, :cond_0

    .line 267
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getImpl()Lcom/newrelic/agent/android/AgentImpl;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/AgentImpl;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    sget-object v0, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v0}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 270
    sput-boolean v2, Lcom/newrelic/agent/android/NewRelic;->started:Z

    .line 273
    :cond_0
    return-void

    .line 269
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/newrelic/agent/android/NullAgentImpl;->instance:Lcom/newrelic/agent/android/NullAgentImpl;

    invoke-static {v1}, Lcom/newrelic/agent/android/Agent;->setImpl(Lcom/newrelic/agent/android/AgentImpl;)V

    .line 270
    sput-boolean v2, Lcom/newrelic/agent/android/NewRelic;->started:Z

    throw v0
.end method

.method public static startInteraction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 316
    const-string v1, "startInteraction: context must be an Activity instance."

    invoke-static {p0, v1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 318
    const-string v1, "startInteraction: actionName must be an action/method name."

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "."

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    .line 323
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static startInteraction(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "actionName"    # Ljava/lang/String;
    .param p2, "cancelRunningTrace"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 342
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "startInteraction: An interaction is already being traced, and invalidateActiveTrace is false. This interaction will not be traced."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 343
    const/4 v0, 0x0

    .line 345
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->startInteraction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static startInteraction(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "actionName"    # Ljava/lang/String;

    .prologue
    .line 295
    const-string v1, "startInteraction: actionName must be an action/method name."

    invoke-static {p0, v1}, Lcom/newrelic/agent/android/NewRelic;->checkNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;Z)V

    .line 300
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->getId()Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 302
    :goto_0
    return-object v1

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static withApplicationToken(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p0, "token"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Lcom/newrelic/agent/android/NewRelic;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/NewRelic;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public start(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    sget-boolean v1, Lcom/newrelic/agent/android/NewRelic;->started:Z

    if-eqz v1, :cond_0

    .line 228
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "NewRelic is already running."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 245
    :goto_0
    return-void

    .line 232
    :cond_0
    :try_start_0
    iget-boolean v1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/newrelic/agent/android/logging/AndroidAgentLog;

    invoke-direct {v1}, Lcom/newrelic/agent/android/logging/AndroidAgentLog;-><init>()V

    :goto_1
    invoke-static {v1}, Lcom/newrelic/agent/android/logging/AgentLogManager;->setAgentLog(Lcom/newrelic/agent/android/logging/AgentLog;)V

    .line 233
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    iget v2, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->setLevel(I)V

    .line 235
    invoke-direct {p0}, Lcom/newrelic/agent/android/NewRelic;->isInstrumented()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/AndroidAgentImpl;->init(Landroid/content/Context;Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 237
    const/4 v1, 0x1

    sput-boolean v1, Lcom/newrelic/agent/android/NewRelic;->started:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Error occurred while starting the New Relic agent!"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 232
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :try_start_1
    new-instance v1, Lcom/newrelic/agent/android/logging/NullAgentLog;

    invoke-direct {v1}, Lcom/newrelic/agent/android/logging/NullAgentLog;-><init>()V

    goto :goto_1

    .line 239
    :cond_2
    sget-object v1, Lcom/newrelic/agent/android/NewRelic;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Failed to detect New Relic instrumentation.  Something likely went wrong during your build process and you should visit http://support.newrelic.com."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public usingCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 77
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCollectorHost(Ljava/lang/String;)V

    .line 78
    return-object p0
.end method

.method public usingCrashCollectorAddress(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 82
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCrashCollectorHost(Ljava/lang/String;)V

    .line 83
    return-object p0
.end method

.method public usingSsl(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "useSsl"    # Z

    .prologue
    .line 69
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setUseSsl(Z)V

    .line 70
    return-object p0
.end method

.method public withAnalyticsEvents(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 196
    :goto_0
    return-object p0

    .line 194
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withApplicationBuild(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "buildId"    # Ljava/lang/String;

    .prologue
    .line 178
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCustomBuildIdentifier(Ljava/lang/String;)V

    .line 181
    :cond_0
    return-object p0
.end method

.method public withApplicationVersion(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 152
    if-eqz p1, :cond_0

    .line 153
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setCustomApplicationVersion(Ljava/lang/String;)V

    .line 155
    :cond_0
    return-object p0
.end method

.method public withBuildIdentifier(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;
    .locals 2
    .param p1, "buildId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    const-string v1, "Supportability/AgentHealth/Deprecated/WithBuildIdentifier"

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/NewRelic;->withApplicationBuild(Ljava/lang/String;)Lcom/newrelic/agent/android/NewRelic;

    move-result-object v0

    return-object v0
.end method

.method public withCrashReportingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 125
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setReportCrashes(Z)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 130
    :goto_0
    return-object p0

    .line 129
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withHttpResponseBodyCaptureEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 139
    if-eqz p1, :cond_0

    .line 140
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 143
    :goto_0
    return-object p0

    .line 142
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/NewRelic;->disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    goto :goto_0
.end method

.method public withLocationServiceEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 92
    sget-object v0, Lcom/newrelic/agent/android/NewRelic;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/AgentConfiguration;->setUseLocationService(Z)V

    .line 93
    return-object p0
.end method

.method public withLogLevel(I)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/newrelic/agent/android/NewRelic;->logLevel:I

    .line 116
    return-object p0
.end method

.method public withLoggingEnabled(Z)Lcom/newrelic/agent/android/NewRelic;
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/newrelic/agent/android/NewRelic;->loggingEnabled:Z

    .line 101
    return-object p0
.end method
