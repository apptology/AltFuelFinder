.class public Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
.super Ljava/lang/Object;
.source "AnalyticsControllerImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/AnalyticsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;
    }
.end annotation


# static fields
.field private static final MAX_ATTRIBUTES:I = 0x40

.field private static final NEW_RELIC_PREFIX:Ljava/lang/String; = "newRelic"

.field private static final NR_PREFIX:Ljava/lang/String; = "nr."

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

.field static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final reservedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

.field private agentImpl:Lcom/newrelic/agent/android/AgentImpl;

.field private eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

.field private isEnabled:Z

.field private listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

.field private systemAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private userAttributes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 39
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    .line 125
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    .line 127
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    .line 129
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 584
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.clear - clearing out attributes and events"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 586
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 587
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->empty()V

    .line 588
    return-void
.end method

.method public static getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .locals 1

    .prologue
    .line 543
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    return-object v0
.end method

.method private getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 562
    const/4 v0, 0x0

    .line 563
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 564
    .local v2, "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 565
    move-object v0, v2

    .line 569
    .end local v2    # "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    return-object v0
.end method

.method private getUserAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 573
    const/4 v0, 0x0

    .line 574
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 575
    .local v2, "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    move-object v0, v2

    .line 580
    .end local v2    # "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    return-object v0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V
    .locals 3
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;
    .param p1, "agentImpl"    # Lcom/newrelic/agent/android/AgentImpl;

    .prologue
    .line 83
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.initialize invoked."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl has already been initialized.  Bypassing.."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->clear()V

    .line 91
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "eventType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "category"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "accountId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "appName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "sessionId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osMajorVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "deviceManufacturer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "deviceModel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "memUsageMb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "carrier"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "newRelicVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "interactionDuration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reinitialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V

    .line 112
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v0, v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 113
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Analytics Controller started."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isNameReserved(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 614
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 616
    .local v0, "isReserved":Z
    if-eqz v0, :cond_0

    .line 617
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in the reserved names list."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    move v1, v0

    .line 634
    .end local v0    # "isReserved":Z
    .local v1, "isReserved":I
    :goto_0
    return v1

    .line 621
    .end local v1    # "isReserved":I
    .restart local v0    # "isReserved":Z
    :cond_0
    if-nez v0, :cond_1

    const-string v4, "newRelic"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move v0, v3

    .line 623
    :goto_1
    if-eqz v0, :cond_3

    .line 624
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " starts with reserved prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "newRelic"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    move v1, v0

    .line 625
    .restart local v1    # "isReserved":I
    goto :goto_0

    .end local v1    # "isReserved":I
    :cond_2
    move v0, v2

    .line 621
    goto :goto_1

    .line 628
    :cond_3
    if-nez v0, :cond_4

    const-string v4, "nr."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_4
    move v0, v3

    .line 630
    :goto_2
    if-eqz v0, :cond_5

    .line 631
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " starts with reserved prefix "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nr."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    :cond_5
    move v1, v0

    .line 634
    .restart local v1    # "isReserved":I
    goto :goto_0

    .end local v1    # "isReserved":I
    :cond_6
    move v0, v2

    .line 628
    goto :goto_2
.end method

.method private isNameValid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x100

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 591
    if-eqz p1, :cond_1

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v4, :cond_1

    move v0, v1

    .line 592
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_2

    .line 593
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null, empty, or exceeds the maximum length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " characters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 602
    :cond_0
    :goto_1
    return v0

    .end local v0    # "valid":Z
    :cond_1
    move v0, v2

    .line 591
    goto :goto_0

    .line 596
    .restart local v0    # "valid":Z
    :cond_2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameReserved(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 597
    :goto_2
    if-nez v0, :cond_0

    .line 598
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is reserved for internal use and will be ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v0, v2

    .line 596
    goto :goto_2
.end method

.method private isStringValueValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1000

    .line 606
    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, v4, :cond_1

    const/4 v0, 0x1

    .line 607
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 608
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute value for name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null, empty, or exceeds the maximum length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 610
    :cond_0
    return v0

    .line 606
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 3

    .prologue
    .line 118
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v0, v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 119
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 120
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->shutdown()V

    .line 121
    return-void
.end method


# virtual methods
.method public addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 5
    .param p1, "event"    # Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    .prologue
    const/4 v1, 0x0

    .line 497
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 498
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Analytics controller is not initialized!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 510
    :goto_0
    return v1

    .line 501
    :cond_0
    iget-boolean v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v2, :cond_1

    .line 502
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Analytics controller is not enabled!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 507
    .local v0, "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v2, "timeSinceLoad"

    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    invoke-interface {v3}, Lcom/newrelic/agent/android/AgentImpl;->getSessionDurationMillis()J

    move-result-wide v3

    long-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-direct {v1, v2, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 508
    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->addAttributes(Ljava/util/Set;)V

    .line 510
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v1, p1}, Lcom/newrelic/agent/android/analytics/EventManager;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eventCategory"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .param p3, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "eventAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    const/4 v4, 0x0

    .line 472
    sget-object v5, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 473
    sget-object v5, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Analytics controller is not initialized!"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 492
    :goto_0
    return v4

    .line 476
    :cond_0
    iget-boolean v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v5, :cond_1

    .line 477
    sget-object v5, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Analytics controller is not enabled!"

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 480
    :cond_1
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AnalyticsControllerImpl.addEvent - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": category="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", eventType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", eventAttributes:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 482
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 484
    .local v3, "validatedAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 485
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 490
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_3
    invoke-static {p1, p2, p3, v3}, Lcom/newrelic/agent/android/analytics/AnalyticsEventFactory;->createEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object v1

    .line 492
    .local v1, "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public addEvent(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 467
    .local p2, "eventAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Mobile"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 186
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.getAttribute - retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 187
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 188
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v0, :cond_0

    .line 189
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 191
    :cond_0
    return-object v0
.end method

.method public getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    return-object v0
.end method

.method public getMaxEventBufferTime()I
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->getMaxEventBufferTime()I

    move-result v0

    return v0
.end method

.method public getMaxEventPoolSize()I
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->getMaxEventPoolSize()I

    move-result v0

    return v0
.end method

.method public getSessionAttributeCount()I
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSessionAttributes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributeCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 220
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 221
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 222
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getSystemAttributeCount()I
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getSystemAttributes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 198
    .local v1, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 200
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public getUserAttributeCount()I
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public getUserAttributes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 208
    new-instance v1, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 209
    .local v1, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 211
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 213
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    return-object v3
.end method

.method public incrementAttribute(Ljava/lang/String;F)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 365
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.incrementAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public incrementAttribute(Ljava/lang/String;FZ)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "persistent"    # Z

    .prologue
    const/4 v1, 0x0

    .line 371
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.incrementAttribute - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_1

    const-string v2, " (persistent)"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 373
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 374
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Analytics controller is not initialized!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 422
    :cond_0
    :goto_1
    return v1

    .line 371
    :cond_1
    const-string v2, " (transient)"

    goto :goto_0

    .line 377
    :cond_2
    iget-boolean v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v2, :cond_3

    .line 378
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Analytics controller is not enabled!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 381
    :cond_3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 385
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isStringAttribute()Z

    move-result v2

    if-nez v2, :cond_4

    .line 387
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v2

    add-float/2addr v2, p2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    .line 388
    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 389
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 390
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    .line 391
    .local v1, "stored":Z
    if-nez v1, :cond_6

    .line 392
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to attribute store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 399
    .end local v1    # "stored":Z
    :cond_4
    if-nez v0, :cond_7

    .line 400
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v3, 0x40

    if-ge v2, v3, :cond_6

    .line 401
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-direct {v0, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    .line 402
    .restart local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 403
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 404
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    .line 405
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    .line 406
    .restart local v1    # "stored":Z
    if-nez v1, :cond_6

    .line 407
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to attribute store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 411
    .end local v1    # "stored":Z
    :cond_5
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 422
    :cond_6
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 418
    :cond_7
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot increment attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": the attribute is already defined as a String value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method loadPersistentAttributes()V
    .locals 6

    .prologue
    .line 552
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "AnalyticsControllerImpl.loadPersistentAttributes - loading userAttributes from the attribute store..."

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 554
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v3}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v3

    invoke-interface {v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->fetchAll()Ljava/util/List;

    move-result-object v2

    .line 555
    .local v2, "storedAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalyticsControllerImpl.loadPersistentAttributes - found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userAttributes in the attribute store..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 556
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 557
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_0
    return-void
.end method

.method public recordEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
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
    .local p2, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 639
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AnalyticsControllerImpl.recordEvent - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attributes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 640
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 642
    .local v0, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 643
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    .line 645
    .local v4, "value":Ljava/lang/Object;
    :try_start_1
    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 646
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/lang/String;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-direct {v6, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 665
    :catch_0
    move-exception v1

    .line 666
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Error casting attribute [%s] to String or Float: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 669
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 670
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Error occurred while recording event [%s]: "

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v5, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v6, "Mobile"

    invoke-virtual {p0, p1, v5, v6, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    :goto_1
    return v5

    .line 647
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_3
    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_2

    .line 648
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/lang/Float;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 649
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v6, v4, Ljava/lang/Double;

    if-eqz v6, :cond_3

    .line 650
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/lang/Double;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Double;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 651
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v6, v4, Ljava/lang/Integer;

    if-eqz v6, :cond_4

    .line 652
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/lang/Integer;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 653
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v6, v4, Ljava/lang/Short;

    if-eqz v6, :cond_5

    .line 654
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/lang/Short;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 655
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_6

    .line 656
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/lang/Long;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    long-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 657
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v6, v4, Ljava/math/BigDecimal;

    if-eqz v6, :cond_7

    .line 658
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/math/BigDecimal;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/math/BigDecimal;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 659
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v6, v4, Ljava/math/BigInteger;

    if-eqz v6, :cond_8

    .line 660
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast v4, Ljava/math/BigInteger;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/math/BigInteger;->floatValue()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, v3, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 662
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_8
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported event attribute type for key ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1
.end method

.method reinitialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V
    .locals 10
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;
    .param p2, "agentImpl"    # Lcom/newrelic/agent/android/AgentImpl;

    .prologue
    .line 132
    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    .line 133
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    .line 134
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v5}, Lcom/newrelic/agent/android/analytics/EventManager;->initialize()V

    .line 135
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v5

    iput-boolean v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    .line 136
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->loadPersistentAttributes()V

    .line 140
    const-string v5, "sessionDuration"

    invoke-virtual {p0, v5}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->removeAttribute(Ljava/lang/String;)Z

    .line 155
    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v0

    .line 156
    .local v0, "deviceInformation":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v4

    .line 159
    .local v4, "osVersion":Ljava/lang/String;
    const-string v5, " "

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 162
    const-string v5, "[.:-]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "osMajorVersionArr":[Ljava/lang/String;
    array-length v5, v3

    if-lez v5, :cond_0

    .line 165
    const/4 v5, 0x0

    aget-object v2, v3, v5

    .line 170
    .local v2, "osMajorVersion":Ljava/lang/String;
    :goto_0
    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    move-result-object v1

    .line 172
    .local v1, "environmentInformation":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "osName"

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "osVersion"

    invoke-direct {v6, v7, v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "osMajorVersion"

    invoke-direct {v6, v7, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "deviceManufacturer"

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "deviceModel"

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "uuid"

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "carrier"

    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getNetworkCarrier()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "newRelicVersion"

    invoke-virtual {v0}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "memUsageMb"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->getMemoryUsage()J

    move-result-wide v8

    long-to-float v8, v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v5, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/Set;

    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v7, "sessionId"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 182
    return-void

    .line 167
    .end local v1    # "environmentInformation":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    .end local v2    # "osMajorVersion":Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .restart local v2    # "osMajorVersion":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public removeAllAttributes()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.removeAttributes - "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 451
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 452
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Analytics controller is not initialized!"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 462
    :goto_0
    return v2

    .line 455
    :cond_0
    iget-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v0, :cond_1

    .line 456
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Analytics controller is not enabled!"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->clear()V

    .line 460
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 427
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.removeAttribute - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 429
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 430
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Analytics controller is not initialized!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 444
    :goto_0
    return v1

    .line 433
    :cond_0
    iget-boolean v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v2, :cond_1

    .line 434
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Analytics controller is not enabled!"

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    :cond_1
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 438
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_2

    .line 439
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 440
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v1}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 444
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;F)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 303
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;FZ)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "persistent"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 309
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_1

    const-string v4, " (persistent)"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 310
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    .line 311
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Analytics controller is not initialized!"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_1
    return v3

    .line 309
    :cond_1
    const-string v4, " (transient)"

    goto :goto_0

    .line 314
    :cond_2
    iget-boolean v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v4, :cond_3

    .line 315
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Analytics controller is not enabled!"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 318
    :cond_3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 321
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v1

    .line 322
    .local v1, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v1, :cond_6

    .line 324
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v6, 0x40

    if-ge v4, v6, :cond_4

    .line 326
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .end local v1    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-direct {v1, p1, p2, v5}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    .line 327
    .restart local v1    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    if-eqz p3, :cond_8

    .line 329
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    .line 330
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v3

    .line 331
    .local v3, "stored":Z
    if-nez v3, :cond_8

    .line 332
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to store attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to attribute store."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 339
    .end local v3    # "stored":Z
    :cond_4
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Attribute limit exceeded: at most 64 are allowed."

    invoke-interface {v4, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 340
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Currently defined attributes:"

    invoke-interface {v4, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 342
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isStringAttribute()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_3

    .line 347
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    .line 348
    invoke-virtual {v1, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 349
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 350
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v3

    .line 351
    .restart local v3    # "stored":Z
    if-nez v3, :cond_8

    .line 352
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to store attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to attribute store."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 357
    .end local v3    # "stored":Z
    :cond_7
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    :cond_8
    move v3, v5

    .line 360
    goto/16 :goto_1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 242
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 248
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_1

    const-string v4, " (persistent)"

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 249
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_2

    .line 250
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Analytics controller is not initialized!"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 298
    :cond_0
    :goto_1
    return v3

    .line 248
    :cond_1
    const-string v4, " (transient)"

    goto :goto_0

    .line 253
    :cond_2
    iget-boolean v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Z

    if-nez v4, :cond_3

    .line 254
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v5, "Analytics controller is not enabled!"

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 257
    :cond_3
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isStringValueValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v1

    .line 261
    .local v1, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v1, :cond_6

    .line 263
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    const/16 v6, 0x40

    if-ge v4, v6, :cond_4

    .line 265
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .end local v1    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-direct {v1, p1, p2, v5}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 266
    .restart local v1    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    if-eqz p3, :cond_8

    .line 268
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v3

    .line 269
    .local v3, "stored":Z
    if-nez v3, :cond_8

    .line 270
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to store attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to attribute store."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 277
    .end local v3    # "stored":Z
    :cond_4
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Attribute limit exceeded: at most 64 are allowed."

    invoke-interface {v4, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 278
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "Currently defined attributes:"

    invoke-interface {v4, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 279
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 280
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\t"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ": "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isStringAttribute()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v4

    :goto_3
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    goto :goto_3

    .line 285
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setStringValue(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 287
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 288
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v3

    .line 289
    .restart local v3    # "stored":Z
    if-nez v3, :cond_8

    .line 290
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to store attribute "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to attribute store."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 295
    .end local v3    # "stored":Z
    :cond_7
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentConfiguration:Lcom/newrelic/agent/android/AgentConfiguration;

    invoke-virtual {v4}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    :cond_8
    move v3, v5

    .line 298
    goto/16 :goto_1
.end method

.method public setMaxEventBufferTime(I)V
    .locals 1
    .param p1, "maxBufferTimeInSec"    # I

    .prologue
    .line 525
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManager;->setMaxEventBufferTime(I)V

    .line 526
    return-void
.end method

.method public setMaxEventPoolSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManager;

    invoke-interface {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManager;->setMaxEventPoolSize(I)V

    .line 521
    return-void
.end method
