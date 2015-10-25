.class public Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;
.super Ljava/lang/Object;
.source "SharedPrefsAnalyticAttributeStore.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;


# static fields
.field private static final STORE_FILE:Ljava/lang/String; = "NRAnalyticAttributeStore"

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->context:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    .line 79
    sget-object v1, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "SharedPrefsAnalyticAttributeStore.clear - flushing stored attributes"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 80
    monitor-enter p0

    .line 81
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->context:Landroid/content/Context;

    const-string v2, "NRAnalyticAttributeStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 82
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 83
    monitor-exit p0

    .line 84
    return-void

    .line 83
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public count()I
    .locals 5

    .prologue
    .line 71
    iget-object v2, p0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->context:Landroid/content/Context;

    const-string v3, "NRAnalyticAttributeStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 72
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    .line 73
    .local v1, "size":I
    sget-object v2, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedPrefsAnalyticAttributeStore.count - returning "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 74
    return v1
.end method

.method public delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V
    .locals 4
    .param p1, "attribute"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    sget-object v1, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SharedPrefsAnalyticAttributeStore.delete - deleting attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->context:Landroid/content/Context;

    const-string v2, "NRAnalyticAttributeStore"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 91
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    monitor-exit p0

    .line 93
    return-void

    .line 92
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public fetchAll()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 50
    sget-object v5, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v6, "SharedPrefsAnalyticAttributeStore.fetchAll invoked."

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 51
    iget-object v5, p0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->context:Landroid/content/Context;

    const-string v6, "NRAnalyticAttributeStore"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 52
    .local v3, "preferences":Landroid/content/SharedPreferences;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, "analyticAttributeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    const/4 v4, 0x0

    .line 54
    .local v4, "storedAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v4

    .line 56
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 59
    .local v1, "entry":Ljava/util/Map$Entry;
    sget-object v5, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SharedPrefsAnalyticAttributeStore.fetchAll - found analytic attribute "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 60
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 61
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 63
    .restart local v1    # "entry":Ljava/util/Map$Entry;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v5, v6, v7, v8}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_1
    return-object v0
.end method

.method public store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z
    .locals 5
    .param p1, "attribute"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    const/4 v2, 0x0

    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 33
    iget-object v2, p0, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->context:Landroid/content/Context;

    const-string v3, "NRAnalyticAttributeStore"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 34
    .local v1, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 35
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isStringAttribute()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    sget-object v2, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedPrefsAnalyticAttributeStore.store - storing analytic attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 42
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    monitor-exit p0

    .line 44
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :goto_1
    return v2

    .line 39
    .restart local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "preferences":Landroid/content/SharedPreferences;
    :cond_0
    sget-object v2, Lcom/newrelic/agent/android/util/SharedPrefsAnalyticAttributeStore;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SharedPrefsAnalyticAttributeStore.store - storing analytic attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 45
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 44
    :cond_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
