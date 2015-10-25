.class public Lcom/newrelic/agent/android/analytics/EventManagerImpl;
.super Ljava/lang/Object;
.source "EventManagerImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/EventManager;


# static fields
.field public static DEFAULT_MAX_EVENT_BUFFER_SIZE:I

.field public static DEFAULT_MAX_EVENT_BUFFER_TIME:I

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private events:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private eventsEjected:Ljava/util/concurrent/atomic/AtomicInteger;

.field private eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

.field private firstEventTimestamp:J

.field private initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private maxBufferTimeInSec:I

.field private maxEventPoolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 19
    const/16 v0, 0x258

    sput v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->DEFAULT_MAX_EVENT_BUFFER_TIME:I

    .line 20
    const/16 v0, 0x3e8

    sput v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->DEFAULT_MAX_EVENT_BUFFER_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    sget v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->DEFAULT_MAX_EVENT_BUFFER_SIZE:I

    sget v1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->DEFAULT_MAX_EVENT_BUFFER_TIME:I

    invoke-direct {p0, v0, v1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;-><init>(II)V

    .line 33
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "maxEventPoolSize"    # I
    .param p2, "maxBufferTimeInSec"    # I

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEjected:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    .line 37
    iput p2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    .line 38
    iput p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    .line 40
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 41
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEjected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 6
    .param p1, "event"    # Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    .prologue
    .line 84
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 85
    .local v0, "eventsRecorded":I
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 86
    sget-object v2, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EventManagerImpl.addEvent - Queue is currently empty, setting to first event timestamp to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    if-lt v2, v3, :cond_2

    .line 90
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEjected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 96
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    int-to-double v4, v0

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 97
    .local v1, "index":I
    iget v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    if-lt v1, v2, :cond_1

    .line 99
    const/4 v2, 0x1

    .line 106
    .end local v1    # "index":I
    :goto_0
    return v2

    .line 103
    .restart local v1    # "index":I
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 106
    .end local v1    # "index":I
    :cond_2
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public empty()V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 71
    return-void
.end method

.method public getEventsEjected()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEjected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getEventsRecorded()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getMaxEventBufferTime()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    return v0
.end method

.method public getMaxEventPoolSize()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    return v0
.end method

.method public getQueuedEvents()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "EventManagerImpl has already been initialized.  Bypassing..."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    .line 52
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsRecorded:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 53
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->eventsEjected:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 55
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->empty()V

    goto :goto_0
.end method

.method public isMaxEventBufferTimeExceeded()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 121
    sget-object v1, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EventManagerImpl.isMaxEventBufferTimeExceeded invoked.  maxBufferTimeInSec: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", firstEventTimestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", current timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delta: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 122
    iget-wide v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->firstEventTimestamp:J

    sub-long/2addr v1, v3

    iget v3, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 126
    :cond_0
    return v0
.end method

.method public isMaxEventPoolSizeExceeded()Z
    .locals 3

    .prologue
    .line 132
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventManagerImpl.isMaxEventBufferSizeExceeded invoked.  maxEventPoolSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", current pool size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransmitRequired()Z
    .locals 3

    .prologue
    .line 77
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventManagerImpl.isTransmitRequired: initialized: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EventManagerImpl.isTransmitRequired: buffer size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isMaxEventBufferTimeExceeded()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxEventBufferTime(I)V
    .locals 0
    .param p1, "maxBufferTimeInSec"    # I

    .prologue
    .line 148
    iput p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxBufferTimeInSec:I

    .line 149
    return-void
.end method

.method public setMaxEventPoolSize(I)V
    .locals 0
    .param p1, "maxSize"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->maxEventPoolSize:I

    .line 144
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->events:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
