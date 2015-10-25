.class public Lcom/newrelic/agent/android/tracing/TraceMachine;
.super Lcom/newrelic/agent/android/harvest/HarvestAdapter;
.source "TraceMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/tracing/TraceMachine$1;,
        Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;
    }
.end annotation


# static fields
.field public static final ACTIVITY_BACKGROUND_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Background/Name/"

.field public static final ACTIVITY_METRIC_PREFIX:Ljava/lang/String; = "Mobile/Activity/Name/"

.field public static final ACTIVTY_DISPLAY_NAME_PREFIX:Ljava/lang/String; = "Display "

.field public static final HEALTHY_TRACE_TIMEOUT:I = 0x1f4

.field public static final NR_TRACE_FIELD:Ljava/lang/String; = "_nr_trace"

.field public static final NR_TRACE_TYPE:Ljava/lang/String; = "Lcom/newrelic/agent/android/tracing/Trace;"

.field public static final UNHEALTHY_TRACE_TIMEOUT:I = 0xea60

.field private static final activityHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/harvest/ActivitySighting;",
            ">;"
        }
    .end annotation
.end field

.field public static final disabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final threadLocalTrace:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/newrelic/agent/android/tracing/Trace;",
            ">;"
        }
    .end annotation
.end field

.field private static final threadLocalTraceStack:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;",
            ">;"
        }
    .end annotation
.end field

.field private static final traceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;",
            ">;"
        }
    .end annotation
.end field

.field private static traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

.field private static traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;


# instance fields
.field private activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->disabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 36
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    .line 38
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    .line 39
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    .line 41
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    return-void
.end method

.method protected constructor <init>(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1
    .param p1, "rootTrace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/newrelic/agent/android/harvest/HarvestAdapter;-><init>()V

    .line 51
    new-instance v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-direct {v0, p1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;-><init>(Lcom/newrelic/agent/android/tracing/Trace;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    .line 54
    invoke-static {p0}, Lcom/newrelic/agent/android/harvest/Harvest;->addHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 55
    return-void
.end method

.method public static addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V
    .locals 1
    .param p0, "listener"    # Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .prologue
    .line 62
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public static clearActivityHistory()V
    .locals 1

    .prologue
    .line 589
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 590
    return-void
.end method

.method public static endLastActivitySighting()V
    .locals 3

    .prologue
    .line 582
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getLastActivitySighting()Lcom/newrelic/agent/android/harvest/ActivitySighting;

    move-result-object v0

    .line 584
    .local v0, "activitySighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    if-eqz v0, :cond_0

    .line 585
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->end(J)V

    .line 586
    :cond_0
    return-void
.end method

.method public static endTrace()V
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 152
    return-void
.end method

.method public static endTrace(Ljava/lang/String;)V
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .prologue
    .line 156
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;

    move-result-object v0

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 12
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/tracing/Trace;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 255
    .local p2, "annotationParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 296
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 259
    .local v1, "currentTime":J
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v10, v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v7, v10, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 260
    .local v7, "lastUpdatedAt":J
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v10, v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v5, v10, Lcom/newrelic/agent/android/tracing/ActivityTrace;->startedAt:J

    .line 262
    .local v5, "inception":J
    const-wide/16 v10, 0x1f4

    add-long/2addr v10, v7

    cmp-long v10, v10, v1

    if-gez v10, :cond_1

    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v10, v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v10}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->hasMissingChildren()Z

    move-result v10

    if-nez v10, :cond_1

    .line 263
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v11, "Completing activity trace after hitting healthy timeout (500ms)"

    invoke-interface {v10, v11}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 264
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v10}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    goto :goto_0

    .line 290
    .end local v1    # "currentTime":J
    .end local v5    # "inception":J
    .end local v7    # "lastUpdatedAt":J
    :catch_0
    move-exception v10

    goto :goto_0

    .line 268
    .restart local v1    # "currentTime":J
    .restart local v5    # "inception":J
    .restart local v7    # "lastUpdatedAt":J
    :cond_1
    const-wide/32 v10, 0xea60

    add-long/2addr v10, v5

    cmp-long v10, v10, v1

    if-gez v10, :cond_2

    .line 269
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v11, "Completing activity trace after hitting unhealthy timeout (60000ms)"

    invoke-interface {v10, v11}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 270
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v10}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 292
    .end local v1    # "currentTime":J
    .end local v5    # "inception":J
    .end local v7    # "lastUpdatedAt":J
    :catch_1
    move-exception v3

    .line 293
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v11, "Caught error while calling enterMethod()"

    invoke-interface {v10, v11, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    invoke-static {v3}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 274
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "currentTime":J
    .restart local v5    # "inception":J
    .restart local v7    # "lastUpdatedAt":J
    :cond_2
    :try_start_1
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->loadTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 276
    invoke-static {p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->registerNewTrace(Ljava/lang/String;)Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    .line 278
    .local v0, "childTrace":Lcom/newrelic/agent/android/tracing/Trace;
    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->pushTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 280
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/newrelic/agent/android/tracing/Trace;->scope:Ljava/lang/String;

    .line 282
    invoke-virtual {v0, p2}, Lcom/newrelic/agent/android/tracing/Trace;->setAnnotationParams(Ljava/util/List;)V

    .line 285
    sget-object v10, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 286
    .local v9, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    invoke-interface {v9}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onEnterMethod()V

    goto :goto_1

    .line 289
    .end local v9    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, v0, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J
    :try_end_1
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method

.method public static enterMethod(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 245
    invoke-static {v0, p0, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 246
    return-void
.end method

.method public static enterMethod(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 249
    .local p1, "annotationParams":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 250
    return-void
.end method

.method public static enterNetworkSegment(Ljava/lang/String;)V
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 221
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    .line 227
    .local v0, "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/Trace;->getType()Lcom/newrelic/agent/android/tracing/TraceType;

    move-result-object v3

    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceType;->NETWORK:Lcom/newrelic/agent/android/tracing/TraceType;

    if-ne v3, v4, :cond_1

    .line 228
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    .line 231
    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v3, p0, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 233
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 234
    .local v2, "networkTrace":Lcom/newrelic/agent/android/tracing/Trace;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceType;->NETWORK:Lcom/newrelic/agent/android/tracing/TraceType;

    invoke-virtual {v2, v3}, Lcom/newrelic/agent/android/tracing/Trace;->setType(Lcom/newrelic/agent/android/tracing/TraceType;)V
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 235
    .end local v0    # "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    .end local v2    # "networkTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 237
    :catch_1
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Caught error while calling enterNetworkSegment()"

    invoke-interface {v3, v4, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 239
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static exitMethod()V
    .locals 9

    .prologue
    .line 301
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 358
    .local v4, "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_0
    :goto_0
    return-void

    .line 304
    .end local v4    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_1
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/newrelic/agent/android/tracing/Trace;

    .line 306
    .restart local v4    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    if-nez v4, :cond_2

    .line 307
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "threadLocalTrace is null"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Caught error while calling exitMethod()"

    invoke-interface {v5, v6, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 356
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/newrelic/agent/android/tracing/Trace;->exitTimestamp:J

    .line 315
    iget-wide v5, v4, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_3

    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    if-eqz v5, :cond_3

    .line 316
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v5}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->getCurrentThreadId()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/newrelic/agent/android/tracing/Trace;->threadId:J

    .line 317
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v5}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->getCurrentThreadName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/newrelic/agent/android/tracing/Trace;->threadName:Ljava/lang/String;

    .line 321
    :cond_3
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 322
    .local v2, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    invoke-interface {v2}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onExitMethod()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 327
    .end local v2    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/Trace;->complete()V
    :try_end_2
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 338
    :try_start_3
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->pop()Ljava/lang/Object;

    .line 342
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->empty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 343
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 352
    :goto_2
    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/Trace;->getType()Lcom/newrelic/agent/android/tracing/TraceType;

    move-result-object v5

    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceType;->TRACE:Lcom/newrelic/agent/android/tracing/TraceType;

    if-ne v5, v6, :cond_0

    .line 353
    invoke-static {v4}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 328
    :catch_1
    move-exception v0

    .line 329
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 330
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->remove()V

    .line 331
    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/Trace;->getType()Lcom/newrelic/agent/android/tracing/TraceType;

    move-result-object v5

    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceType;->TRACE:Lcom/newrelic/agent/android/tracing/TraceType;

    if-ne v5, v6, :cond_0

    .line 332
    invoke-static {v4}, Lcom/newrelic/agent/android/TaskQueue;->queue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 345
    .end local v0    # "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    :cond_5
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v5}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/Trace;

    .line 346
    .local v3, "parentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    sget-object v5, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 349
    iget-wide v5, v3, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/Trace;->getDurationAsMilliseconds()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v3, Lcom/newrelic/agent/android/tracing/Trace;->childExclusiveTime:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2
.end method

.method public static formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Activity/Background/Name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatActivityDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mobile/Activity/Name/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getActivityHistory()Lcom/newrelic/agent/android/harvest/ActivityHistory;
    .locals 2

    .prologue
    .line 571
    new-instance v0, Lcom/newrelic/agent/android/harvest/ActivityHistory;

    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/newrelic/agent/android/harvest/ActivityHistory;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static getActivityTrace()Lcom/newrelic/agent/android/tracing/ActivityTrace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 564
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v1, v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1
.end method

.method public static getCurrentScope()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 516
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 520
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v2}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->isUIThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 521
    :cond_1
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v1, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    goto :goto_0

    .line 524
    :cond_2
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-object v2, v2, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v1, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Caught error while calling getCurrentScope()"

    invoke-interface {v2, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 527
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 449
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1

    .line 452
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/Trace;

    .line 453
    .local v0, "trace":Lcom/newrelic/agent/android/tracing/Trace;
    if-eqz v0, :cond_1

    .line 456
    .end local v0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :goto_0
    return-object v0

    .restart local v0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getRootTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCurrentTraceParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 461
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getLastActivitySighting()Lcom/newrelic/agent/android/harvest/ActivitySighting;
    .locals 2

    .prologue
    .line 575
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 578
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    goto :goto_0
.end method

.method public static getRootTrace()Lcom/newrelic/agent/android/tracing/Trace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 556
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v1, v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-object v1, v1, Lcom/newrelic/agent/android/tracing/ActivityTrace;->rootTrace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v1}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v1
.end method

.method public static getTraceMachine()Lcom/newrelic/agent/android/tracing/TraceMachine;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    return-object v0
.end method

.method public static haltTracing()V
    .locals 2

    .prologue
    .line 134
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    .local v0, "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    :goto_0
    return-void

    .line 137
    .end local v0    # "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 138
    .restart local v0    # "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    const/4 v1, 0x0

    sput-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 140
    iget-object v1, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->discard()V

    .line 141
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endLastActivitySighting()V

    .line 144
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    .line 146
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 147
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0
.end method

.method public static isTracingActive()Z
    .locals 1

    .prologue
    .line 533
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTracingInactive()Z
    .locals 1

    .prologue
    .line 537
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static loadTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 4
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x5

    .line 376
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 381
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 383
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    new-instance v1, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-direct {v1, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;-><init>(Lcom/newrelic/agent/android/tracing/TraceMachine$1;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 386
    if-eqz p0, :cond_0

    .line 389
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_2
    :goto_1
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 412
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trace "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is now active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :cond_3
    if-nez p0, :cond_2

    .line 397
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 398
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v0}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v0

    if-ne v0, v2, :cond_4

    .line 399
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "No context to load!"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 400
    :cond_4
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_5
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    check-cast p0, Lcom/newrelic/agent/android/tracing/Trace;

    .line 405
    .restart local p0    # "trace":Lcom/newrelic/agent/android/tracing/Trace;
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private static pushTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 2
    .param p0, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 361
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    .line 366
    .local v0, "traceStack":Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->empty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_2
    :goto_1
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 368
    :cond_3
    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->peek()Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 369
    invoke-virtual {v0, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static registerNewTrace(Ljava/lang/String;)Lcom/newrelic/agent/android/tracing/Trace;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/newrelic/agent/android/tracing/TracingInactiveException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 176
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Tried to register a new trace but tracing is inactive!"

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 177
    new-instance v3, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v3}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v3

    .line 180
    :cond_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 183
    .local v2, "parentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    new-instance v0, Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-direct {v0, p0, v3, v4}, Lcom/newrelic/agent/android/tracing/Trace;-><init>(Ljava/lang/String;Ljava/util/UUID;Lcom/newrelic/agent/android/tracing/TraceMachine;)V

    .line 185
    .local v0, "childTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :try_start_0
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v3, v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v3, v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->addTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v3}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 191
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Registering trace of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with parent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 193
    :cond_1
    invoke-virtual {v2, v0}, Lcom/newrelic/agent/android/tracing/Trace;->addChild(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 198
    return-object v0

    .line 186
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Lcom/newrelic/agent/android/tracing/TracingInactiveException;

    invoke-direct {v3}, Lcom/newrelic/agent/android/tracing/TracingInactiveException;-><init>()V

    throw v3
.end method

.method public static removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V
    .locals 1
    .param p0, "listener"    # Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .prologue
    .line 66
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private static renameActivityHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "oldName"    # Ljava/lang/String;
    .param p1, "newName"    # Ljava/lang/String;

    .prologue
    .line 508
    sget-object v2, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    .line 509
    .local v0, "activitySighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 510
    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/harvest/ActivitySighting;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 512
    .end local v0    # "activitySighting":Lcom/newrelic/agent/android/harvest/ActivitySighting;
    :cond_1
    return-void
.end method

.method public static setCurrentDisplayName(Ljava/lang/String;)V
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 476
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 484
    :goto_0
    return-void

    .line 480
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v1

    iput-object p0, v1, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 481
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    goto :goto_0
.end method

.method public static setCurrentTraceParam(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 465
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    :goto_0
    return-void

    .line 469
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newrelic/agent/android/tracing/Trace;->getParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    goto :goto_0
.end method

.method public static setRootDisplayName(Ljava/lang/String;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 489
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    :goto_0
    return-void

    .line 493
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getRootTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v2

    .line 494
    .local v2, "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/newrelic/agent/android/Measurements;->renameActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v3, p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->renameActivityHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    .line 497
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    .line 498
    iput-object p0, v2, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 500
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentTrace()Lcom/newrelic/agent/android/tracing/Trace;

    move-result-object v0

    .line 501
    .local v0, "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getCurrentScope()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/newrelic/agent/android/tracing/Trace;->scope:Ljava/lang/String;
    :try_end_0
    .catch Lcom/newrelic/agent/android/tracing/TracingInactiveException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 502
    .end local v0    # "currentTrace":Lcom/newrelic/agent/android/tracing/Trace;
    .end local v2    # "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :catch_0
    move-exception v1

    .line 503
    .local v1, "e":Lcom/newrelic/agent/android/tracing/TracingInactiveException;
    goto :goto_0
.end method

.method public static setTraceMachineInterface(Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;)V
    .locals 0
    .param p0, "traceMachineInterface"    # Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    .prologue
    .line 70
    sput-object p0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    .line 71
    return-void
.end method

.method public static startTracing(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;Z)V

    .line 75
    return-void
.end method

.method public static startTracing(Ljava/lang/String;Z)V
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "customName"    # Z

    .prologue
    const/4 v9, 0x0

    .line 79
    :try_start_0
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->disabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/newrelic/agent/android/harvest/Harvest;->shouldCollectActivityTraces()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 84
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 88
    :cond_2
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 89
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    new-instance v5, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/newrelic/agent/android/tracing/TraceMachine$TraceStack;-><init>(Lcom/newrelic/agent/android/tracing/TraceMachine$1;)V

    invoke-virtual {v4, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 92
    new-instance v3, Lcom/newrelic/agent/android/tracing/Trace;

    invoke-direct {v3}, Lcom/newrelic/agent/android/tracing/Trace;-><init>()V

    .line 93
    .local v3, "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    if-eqz p1, :cond_4

    .line 94
    iput-object p0, v3, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    .line 100
    :goto_1
    iget-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->metricName:Ljava/lang/String;

    .line 101
    iget-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-static {v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityBackgroundMetricName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->metricBackgroundName:Ljava/lang/String;

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    .line 105
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v4}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    .line 106
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Started trace of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 108
    :cond_3
    new-instance v4, Lcom/newrelic/agent/android/tracing/TraceMachine;

    invoke-direct {v4, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;-><init>(Lcom/newrelic/agent/android/tracing/Trace;)V

    sput-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 109
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iput-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 112
    invoke-static {v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->pushTraceContext(Lcom/newrelic/agent/android/tracing/Trace;)V

    .line 115
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v4, v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->getLastActivitySighting()Lcom/newrelic/agent/android/harvest/ActivitySighting;

    move-result-object v5

    iput-object v5, v4, Lcom/newrelic/agent/android/tracing/ActivityTrace;->previousActivity:Lcom/newrelic/agent/android/harvest/ActivitySighting;

    .line 116
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityHistory:Ljava/util/List;

    new-instance v5, Lcom/newrelic/agent/android/harvest/ActivitySighting;

    iget-wide v6, v3, Lcom/newrelic/agent/android/tracing/Trace;->entryTimestamp:J

    iget-object v8, v3, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/newrelic/agent/android/harvest/ActivitySighting;-><init>(JLjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 119
    .local v2, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v4, v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-interface {v2, v4}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onTraceStart(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 121
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    .end local v3    # "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Caught error while initializing TraceMachine, shutting it down"

    invoke-interface {v4, v5, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 124
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    .line 126
    sput-object v9, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 127
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 128
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    goto/16 :goto_0

    .line 96
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "rootTrace":Lcom/newrelic/agent/android/tracing/Trace;
    :cond_4
    :try_start_1
    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->formatActivityDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/newrelic/agent/android/tracing/Trace;->displayName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static unloadTraceContext(Ljava/lang/Object;)V
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    .line 420
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 445
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    if-eqz v3, :cond_2

    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachineInterface:Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;

    invoke-interface {v3}, Lcom/newrelic/agent/android/api/v2/TraceMachineInterface;->isUIThread()Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    :cond_2
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 427
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    invoke-interface {v3}, Lcom/newrelic/agent/android/logging/AgentLog;->getLevel()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_3

    .line 428
    sget-object v4, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trace "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/tracing/Trace;

    iget-object v3, v3, Lcom/newrelic/agent/android/tracing/Trace;->myUUID:Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is now inactive"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 430
    :cond_3
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTrace:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 431
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->threadLocalTraceStack:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 435
    :try_start_1
    move-object v0, p0

    check-cast v0, Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;

    move-object v2, v0

    .line 436
    .local v2, "tfi":Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;->_nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 437
    .end local v2    # "tfi":Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string v3, "TraceFieldInterface"

    invoke-static {v1, v3}, Lcom/newrelic/agent/android/util/ExceptionHelper;->recordSupportabilityMetric(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 439
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not a TraceFieldInterface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 441
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v1

    .line 442
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Caught error while calling unloadTraceContext()"

    invoke-interface {v3, v4, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 443
    invoke-static {v1}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public completeActivityTrace()V
    .locals 4

    .prologue
    .line 202
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    :goto_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 206
    .local v0, "finishedMachine":Lcom/newrelic/agent/android/tracing/TraceMachine;
    const/4 v3, 0x0

    sput-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    .line 208
    iget-object v3, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->complete()V

    .line 209
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->endLastActivitySighting()V

    .line 211
    sget-object v3, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceListeners:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;

    .line 212
    .local v2, "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    iget-object v3, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;->onTraceComplete(Lcom/newrelic/agent/android/tracing/ActivityTrace;)V

    goto :goto_1

    .line 216
    .end local v2    # "listener":Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;
    :cond_1
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/Harvest;->removeHarvestListener(Lcom/newrelic/agent/android/harvest/HarvestLifecycleAware;)V

    goto :goto_0
.end method

.method public onHarvestBefore()V
    .locals 8

    .prologue
    .line 594
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingActive()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 596
    .local v0, "currentTime":J
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v4, v6, Lcom/newrelic/agent/android/tracing/ActivityTrace;->lastUpdatedAt:J

    .line 597
    .local v4, "lastUpdatedAt":J
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    iget-wide v2, v6, Lcom/newrelic/agent/android/tracing/ActivityTrace;->startedAt:J

    .line 599
    .local v2, "inception":J
    const-wide/16 v6, 0x1f4

    add-long/2addr v6, v4

    cmp-long v6, v6, v0

    if-gez v6, :cond_1

    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v6, v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->hasMissingChildren()Z

    move-result v6

    if-nez v6, :cond_1

    .line 600
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Completing activity trace after hitting healthy timeout (500ms)"

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 602
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v6

    const-string v7, "Supportability/AgentHealth/HealthyActivityTraces"

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    .line 615
    .end local v0    # "currentTime":J
    .end local v2    # "inception":J
    .end local v4    # "lastUpdatedAt":J
    :cond_0
    :goto_0
    return-void

    .line 606
    .restart local v0    # "currentTime":J
    .restart local v2    # "inception":J
    .restart local v4    # "lastUpdatedAt":J
    :cond_1
    const-wide/32 v6, 0xea60

    add-long/2addr v6, v2

    cmp-long v6, v6, v0

    if-gez v6, :cond_0

    .line 607
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Completing activity trace after hitting unhealthy timeout (60000ms)"

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 608
    invoke-virtual {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->completeActivityTrace()V

    .line 609
    invoke-static {}, Lcom/newrelic/agent/android/stats/StatsEngine;->get()Lcom/newrelic/agent/android/stats/StatsEngine;

    move-result-object v6

    const-string v7, "Supportability/AgentHealth/UnhealthyActivityTraces"

    invoke-virtual {v6, v7}, Lcom/newrelic/agent/android/stats/StatsEngine;->inc(Ljava/lang/String;)V

    goto :goto_0

    .line 613
    .end local v0    # "currentTime":J
    .end local v2    # "inception":J
    .end local v4    # "lastUpdatedAt":J
    :cond_2
    sget-object v6, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "TraceMachine is inactive"

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onHarvestSendFailed()V
    .locals 1

    .prologue
    .line 620
    :try_start_0
    sget-object v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->traceMachine:Lcom/newrelic/agent/android/tracing/TraceMachine;

    iget-object v0, v0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->incrementReportAttemptCount()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 621
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public storeCompletedTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 3
    .param p1, "trace"    # Lcom/newrelic/agent/android/tracing/Trace;

    .prologue
    .line 542
    :try_start_0
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->isTracingInactive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 543
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Attempted to store a completed trace with no trace machine!"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/tracing/TraceMachine;->activityTrace:Lcom/newrelic/agent/android/tracing/ActivityTrace;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/tracing/ActivityTrace;->addCompletedTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 548
    :catch_0
    move-exception v0

    .line 549
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/newrelic/agent/android/tracing/TraceMachine;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Caught error while calling storeCompletedTrace()"

    invoke-interface {v1, v2, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 550
    invoke-static {v0}, Lcom/newrelic/agent/android/harvest/AgentHealth;->noticeException(Ljava/lang/Exception;)V

    goto :goto_0
.end method
