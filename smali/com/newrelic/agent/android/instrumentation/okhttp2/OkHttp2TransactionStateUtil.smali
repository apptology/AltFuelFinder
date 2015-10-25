.class public Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;
.super Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;
.source "OkHttp2TransactionStateUtil.java"


# static fields
.field private static final NO_BODY_TEXT:Ljava/lang/String; = "Response BODY not found."

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/newrelic/agent/android/instrumentation/TransactionStateUtil;-><init>()V

    return-void
.end method

.method private static addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)V
    .locals 19
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->end()Lcom/newrelic/agent/android/api/common/TransactionData;

    move-result-object v18

    .line 62
    .local v18, "transactionData":Lcom/newrelic/agent/android/api/common/TransactionData;
    if-nez v18, :cond_1

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    new-instance v1, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getErrorCode()I

    move-result v5

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getTime()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesSent()J

    move-result-wide v10

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getBytesReceived()J

    move-result-wide v12

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getAppData()Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lcom/newrelic/agent/android/measurement/http/HttpTransactionMeasurement;-><init>(Ljava/lang/String;Ljava/lang/String;IIJDJJLjava/lang/String;)V

    invoke-static {v1}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getStatusCode()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x190

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    .line 74
    const-string v1, "Content-Type"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 75
    .local v16, "contentTypeHeader":Ljava/lang/String;
    const/4 v15, 0x0

    .line 76
    .local v15, "contentType":Ljava/lang/String;
    new-instance v17, Ljava/util/TreeMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/TreeMap;-><init>()V

    .line 78
    .local v17, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v16, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, ""

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 79
    const-string v1, "content_type"

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_2
    const-string v1, "content_length"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/newrelic/agent/android/instrumentation/TransactionState;->getBytesReceived()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getHttpMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Lcom/newrelic/agent/android/api/common/TransactionData;->getStatusCode()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/squareup/okhttp/Response;->message()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-static {v1, v2, v3, v4, v0}, Lcom/newrelic/agent/android/Measurements;->addHttpError(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public static inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Request;)V
    .locals 2
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "request"    # Lcom/squareup/okhttp/Request;

    .prologue
    .line 41
    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->urlString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/squareup/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrument(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public static inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)V
    .locals 5
    .param p0, "transactionState"    # Lcom/newrelic/agent/android/instrumentation/TransactionState;
    .param p1, "response"    # Lcom/squareup/okhttp/Response;

    .prologue
    .line 45
    const-string v4, "X-NewRelic-App-Data"

    invoke-virtual {p1, v4}, Lcom/squareup/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "appData":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->code()I

    move-result v3

    .line 48
    .local v3, "statusCode":I
    invoke-virtual {p1}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/okhttp/ResponseBody;->contentLength()J

    move-result-wide v1

    .line 50
    .local v1, "contentLength":J
    long-to-int v4, v1

    invoke-static {p0, v0, v4, v3}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->inspectAndInstrumentResponse(Lcom/newrelic/agent/android/instrumentation/TransactionState;Ljava/lang/String;II)V

    .line 51
    invoke-static {p0, p1}, Lcom/newrelic/agent/android/instrumentation/okhttp2/OkHttp2TransactionStateUtil;->addTransactionAndErrorData(Lcom/newrelic/agent/android/instrumentation/TransactionState;Lcom/squareup/okhttp/Response;)V

    .line 52
    return-void
.end method
