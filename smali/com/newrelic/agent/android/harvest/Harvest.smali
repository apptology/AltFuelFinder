.class public Lcom/newrelic/agent/android/harvest/Harvest;
.super Ljava/lang/Object;
.source "Harvest.java"


# static fields
.field private static final DISABLE_ACTIVITY_TRACE_LIMITS_FOR_DEBUGGING:Z

.field private static final activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

.field protected static instance:Lcom/newrelic/agent/android/harvest/Harvest;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final unregisteredLifecycleListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

.field private harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

.field protected harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

.field private harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

.field private harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

.field private harvester:Lcom/newrelic/agent/android/harvest/Harvester;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 23
    new-instance v0, Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    .line 35
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-void
.end method

.method public static addActivityTrace(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    .locals 8
    .param p0, "activityTrace"    # Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .prologue
    .line 148
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 188
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_1

    .line 151
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v4, p0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->add(Lcom/newrelic/agent/android/harvest/type/Harvestable;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    if-nez v4, :cond_2

    .line 156
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Activity trace is lacking a root trace!"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v4, v4, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    .line 161
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total trace exclusive time is zero. Ignoring trace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    iget-object v4, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-wide v4, v4, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v6

    .line 166
    .local v2, "traceExclusiveTime":D
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getActivity_trace_min_utilization()D

    move-result-wide v4

    cmpg-double v4, v2, v4

    if-gez v4, :cond_4

    .line 167
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v4

    const-string v5, "Supportability/AgentHealth/IgnoredTraces"

    invoke-virtual {v4, v5}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 168
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Total trace exclusive time is too low ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). Ignoring trace "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 172
    :cond_4
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestData;->getActivityTraces()Lcom/newrelic/agent/android/harvest/ActivityTraces;

    move-result-object v0

    .line 173
    .local v0, "activityTraces":Lcom/newrelic/agent/android/harvest/ActivityTraces;
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v1

    .line 175
    .local v1, "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/Harvester;->expireActivityTraces()V

    .line 180
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->count()I

    move-result v4

    invoke-virtual {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v5

    if-lt v4, v5, :cond_5

    .line 181
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Activity trace limit of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exceeded. Ignoring trace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :cond_5
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adding activity trace: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->toJsonString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/ActivityTraces;->add(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto/16 :goto_0
.end method

.method public static addAgentHealthException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V
    .locals 1
    .param p0, "exception"    # Lcom/newrelic/agent/android/harvest/AgentHealthException;

    .prologue
    .line 196
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getAgentHealth()Lcom/newrelic/agent/android/harvest/AgentHealth;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->addException(Lcom/newrelic/agent/android/harvest/AgentHealthException;)V

    goto :goto_0
.end method

.method public static addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 202
    if-nez p0, :cond_1

    .line 203
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: Argument to addHarvestListener cannot be null."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvester;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method public static addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V
    .locals 5
    .param p0, "error"    # Lcom/newrelic/agent/android/harvest/HttpError;

    .prologue
    .line 117
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->shouldCollectNetworkErrors()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpErrors()Lcom/newrelic/agent/android/harvest/HttpErrors;

    move-result-object v1

    .line 121
    .local v1, "errors":Lcom/newrelic/agent/android/harvest/HttpErrors;
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpErrors()V

    .line 123
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getError_limit()I

    move-result v0

    .line 124
    .local v0, "errorLimit":I
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpErrors;->count()I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 125
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/ErrorsDropped"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 126
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum number of HTTP errors ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reached. HTTP Error dropped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/harvest/HttpErrors;->addHttpError(Lcom/newrelic/agent/android/harvest/HttpError;)V

    goto :goto_0
.end method

.method public static addHttpTransaction(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 5
    .param p0, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 133
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    :goto_0
    return-void

    .line 135
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestData;->getHttpTransactions()Lcom/newrelic/agent/android/harvest/HttpTransactions;

    move-result-object v1

    .line 136
    .local v1, "transactions":Lcom/newrelic/agent/android/harvest/HttpTransactions;
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvester;->expireHttpTransactions()V

    .line 138
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getReport_max_transaction_count()I

    move-result v0

    .line 139
    .local v0, "transactionLimit":I
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->count()I

    move-result v2

    if-lt v2, v0, :cond_1

    .line 140
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v2

    const-string v3, "Supportability/AgentHealth/TransactionsDropped"

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 141
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Maximum number of transactions ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") reached. HTTP Transaction dropped."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {v1, p0}, Lcom/newrelic/agent/android/harvest/HttpTransactions;->add(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0
.end method

.method public static addMetric(Lcom/newrelic/agent/android/metric/Metric;)V
    .locals 1
    .param p0, "metric"    # Lcom/newrelic/agent/android/metric/Metric;

    .prologue
    .line 191
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;->getMetrics()Lcom/newrelic/agent/android/harvest/MachineMeasurements;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/MachineMeasurements;->addMetric(Lcom/newrelic/agent/android/metric/Metric;)V

    goto :goto_0
.end method

.method private static addUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 276
    if-nez p0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 279
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 280
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 281
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private flushActivityTraceCache()V
    .locals 4

    .prologue
    .line 269
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->flush()Ljava/util/Collection;

    move-result-object v1

    .line 270
    .local v1, "activityTraces":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/harvest/type/Harvestable;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/type/Harvestable;

    .line 271
    .local v0, "activityTrace":Lcom/newrelic/agent/android/harvest/type/Harvestable;
    check-cast v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .end local v0    # "activityTrace":Lcom/newrelic/agent/android/harvest/type/Harvestable;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addActivityTrace(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_0

    .line 273
    :cond_0
    return-void
.end method

.method private flushHarvestableCaches()V
    .locals 1

    .prologue
    .line 262
    :try_start_0
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->flushActivityTraceCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    :goto_0
    return-void

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getActivityTraceCacheSize()I
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->activityTraceCache:Lcom/newrelic/agent/android/harvest/HarvestableCache;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestableCache;->getSize()I

    move-result v0

    return v0
.end method

.method public static getHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 363
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 364
    invoke-static {}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDefaultHarvestConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v0

    goto :goto_0
.end method

.method private getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    return-object v0
.end method

.method public static getInstance()Lcom/newrelic/agent/android/harvest/Harvest;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    return-object v0
.end method

.method public static getMillisSinceStart()J
    .locals 2

    .prologue
    .line 241
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceStart()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMillisecondsSinceSessionStart()J
    .locals 3

    .prologue
    .line 390
    const-wide/16 v0, 0x0

    .line 391
    .local v0, "lTime":J
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 392
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v2

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 393
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v2}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceStart()J

    move-result-wide v0

    .line 396
    :cond_0
    return-wide v0
.end method

.method public static getSecondsSinceSessionStart()F
    .locals 3

    .prologue
    .line 400
    const/4 v0, 0x0

    .line 401
    .local v0, "fTime":F
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getInstance()Lcom/newrelic/agent/android/harvest/Harvest;

    move-result-object v1

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 403
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->timeSinceStart()J

    move-result-wide v1

    long-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float v0, v1, v2

    .line 406
    :cond_0
    return v0
.end method

.method public static harvestNow()V
    .locals 7

    .prologue
    .line 66
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v4

    if-nez v4, :cond_0

    .line 83
    .local v0, "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .local v1, "sessionDuration":J
    .local v3, "sessionEvent":Lcom/newrelic/agent/android/analytics/SessionEvent;
    :goto_0
    return-void

    .line 69
    .end local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .end local v1    # "sessionDuration":J
    .end local v3    # "sessionEvent":Lcom/newrelic/agent/android/analytics/SessionEvent;
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->getMillisecondsSinceSessionStart()J

    move-result-wide v1

    .line 70
    .restart local v1    # "sessionDuration":J
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v4

    const-string v5, "Session/Duration"

    invoke-virtual {v4, v5, v1, v2}, Lcom/newrelic/agent/android/stats/StatsEngine;->sampleTimeMs(Ljava/lang/String;J)V

    .line 72
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Harvest.harvestNow - Generating sessionDuration attribute with value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 73
    invoke-static {}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    move-result-object v0

    .line 75
    .restart local v0    # "analyticsController":Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    const-string v4, "sessionDuration"

    long-to-float v5, v1

    invoke-virtual {v0, v4, v5}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;F)Z

    .line 77
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Harvest.harvestNow - Generating session event."

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 78
    new-instance v3, Lcom/newrelic/agent/android/analytics/SessionEvent;

    invoke-direct {v3}, Lcom/newrelic/agent/android/analytics/SessionEvent;-><init>()V

    .line 79
    .restart local v3    # "sessionEvent":Lcom/newrelic/agent/android/analytics/SessionEvent;
    invoke-virtual {v0, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    .line 81
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/newrelic/agent/android/analytics/EventManager;->shutdown()V

    .line 82
    sget-object v4, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v4}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->tickNow()V

    goto :goto_0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 1
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 41
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->initializeHarvester(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 42
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->registerUnregisteredListeners()V

    .line 43
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 44
    return-void
.end method

.method public static isDisabled()Z
    .locals 1

    .prologue
    .line 380
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvester;->isDisabled()Z

    move-result v0

    goto :goto_0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 232
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z
    .locals 1
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 301
    if-nez p0, :cond_0

    .line 302
    const/4 v0, 0x0

    .line 303
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private static registerUnregisteredListeners()V
    .locals 3

    .prologue
    .line 294
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .line 295
    .local v0, "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 297
    .end local v0    # "harvestAware":Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->clear()V

    .line 298
    return-void
.end method

.method public static removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 217
    if-nez p0, :cond_1

    .line 218
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Harvest: Argument to removeHarvestListener cannot be null."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    .line 223
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->isUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0

    .line 228
    :cond_2
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvester;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method private static removeUnregisteredListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V
    .locals 2
    .param p0, "harvestAware"    # Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;

    .prologue
    .line 285
    if-nez p0, :cond_0

    .line 291
    :goto_0
    return-void

    .line 288
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    monitor-enter v1

    .line 289
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->unregisteredLifecycleListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setHarvestConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 3
    .param p0, "configuration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 353
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Cannot configure Harvester before initialization."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 355
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Harvest Configuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 359
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    goto :goto_0
.end method

.method public static setHarvestConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 3
    .param p0, "connectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 370
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Cannot configure Harvester before initialization."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 372
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting Harvest connect information: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 376
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/harvest/Harvest;->setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    goto :goto_0
.end method

.method public static setInstance(Lcom/newrelic/agent/android/harvest/Harvest;)V
    .locals 0
    .param p0, "harvestInstance"    # Lcom/newrelic/agent/android/harvest/Harvest;

    .prologue
    .line 86
    sput-object p0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    .line 87
    return-void
.end method

.method public static setPeriod(J)V
    .locals 1
    .param p0, "period"    # J

    .prologue
    .line 54
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->setPeriod(J)V

    .line 55
    return-void
.end method

.method public static shouldCollectActivityTraces()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 245
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 257
    .local v0, "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_0
    :goto_0
    return v1

    .line 249
    .end local v0    # "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 253
    sget-object v3, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/harvest/Harvest;->getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    .line 254
    .restart local v0    # "configurations":Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v0}, Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;->getMaxTotalTraceCount()I

    move-result v3

    if-gtz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->stop()V

    .line 113
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->shutdownHarvester()V

    goto :goto_0
.end method

.method public static start()V
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->start()V

    .line 59
    return-void
.end method

.method public static stop()V
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->getHarvestTimer()Lcom/newrelic/agent/android/harvest/HarvestTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->stop()V

    .line 63
    return-void
.end method


# virtual methods
.method public createHarvester()V
    .locals 2

    .prologue
    .line 91
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestConnection;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 92
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestData;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 93
    new-instance v0, Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/Harvester;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 94
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V

    .line 95
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setHarvestData(Lcom/newrelic/agent/android/harvest/HarvestData;)V

    .line 96
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestTimer;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestTimer;-><init>(Lcom/newrelic/agent/android/harvest/Harvester;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    .line 97
    new-instance v0, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    invoke-direct {v0}, Lcom/newrelic/agent/android/harvest/HarvestDataValidator;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    .line 98
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestDataValidator:Lcom/newrelic/agent/android/harvest/HarvestDataValidator;

    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 99
    return-void
.end method

.method protected getActivityTraceConfiguration()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getAt_capture()Lcom/newrelic/agent/android/activity/config/ActivityTraceConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    return-object v0
.end method

.method public getHarvestConnection()Lcom/newrelic/agent/android/harvest/HarvestConnection;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    return-object v0
.end method

.method public getHarvestData()Lcom/newrelic/agent/android/harvest/HarvestData;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    return-object v0
.end method

.method protected getHarvester()Lcom/newrelic/agent/android/harvest/Harvester;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    return-object v0
.end method

.method public initializeHarvester(Lcom/newrelic/agent/android/AgentConfiguration;)V
    .locals 2
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->createHarvester()V

    .line 48
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/Harvester;->setAgentConfiguration(Lcom/newrelic/agent/android/AgentConfiguration;)V

    .line 49
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    sget-object v1, Lcom/newrelic/agent/android/harvest/Harvest;->instance:Lcom/newrelic/agent/android/harvest/Harvest;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/Harvest;->getConfiguration()Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 50
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->flushHarvestableCaches()V

    .line 51
    return-void
.end method

.method public setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V
    .locals 5
    .param p1, "newConfiguration"    # Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->reconfigure(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 341
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getData_report_period()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->setPeriod(J)V

    .line 342
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getServer_timestamp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setServerTimestamp(J)V

    .line 343
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->getDataToken()Lcom/newrelic/agent/android/harvest/DataToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDataToken(Lcom/newrelic/agent/android/harvest/DataToken;)V

    .line 344
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    iget-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/Harvester;->setConfiguration(Lcom/newrelic/agent/android/harvest/HarvestConfiguration;)V

    .line 345
    return-void
.end method

.method public setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V
    .locals 2
    .param p1, "connectInformation"    # Lcom/newrelic/agent/android/harvest/ConnectInformation;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/HarvestConnection;->setConnectInformation(Lcom/newrelic/agent/android/harvest/ConnectInformation;)V

    .line 349
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/ConnectInformation;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/harvest/HarvestData;->setDeviceInformation(Lcom/newrelic/agent/android/harvest/DeviceInformation;)V

    .line 350
    return-void
.end method

.method public setHarvestConnection(Lcom/newrelic/agent/android/harvest/HarvestConnection;)V
    .locals 0
    .param p1, "connection"    # Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 332
    return-void
.end method

.method public shouldCollectNetworkErrors()Z
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->configuration:Lcom/newrelic/agent/android/harvest/HarvestConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestConfiguration;->isCollect_network_errors()Z

    move-result v0

    return v0
.end method

.method public shutdownHarvester()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    iget-object v0, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/HarvestTimer;->shutdown()V

    .line 103
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestTimer:Lcom/newrelic/agent/android/harvest/HarvestTimer;

    .line 104
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvester:Lcom/newrelic/agent/android/harvest/Harvester;

    .line 105
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestConnection:Lcom/newrelic/agent/android/harvest/HarvestConnection;

    .line 106
    iput-object v1, p0, Lcom/newrelic/agent/android/harvest/Harvest;->harvestData:Lcom/newrelic/agent/android/harvest/HarvestData;

    .line 107
    return-void
.end method
