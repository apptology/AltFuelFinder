.class public Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;
.super Ljava/lang/Object;
.source "BaseMeasurementProducer.java"

# interfaces
.implements Lcom/newrelic/agent/android/measurement/producer/MeasurementProducer;


# instance fields
.field private final producedMeasurementType:Lcom/newrelic/agent/android/measurement/MeasurementType;

.field private final producedMeasurements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/newrelic/agent/android/measurement/Measurement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/newrelic/agent/android/measurement/MeasurementType;)V
    .locals 1
    .param p1, "measurementType"    # Lcom/newrelic/agent/android/measurement/MeasurementType;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    .line 19
    iput-object p1, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurementType:Lcom/newrelic/agent/android/measurement/MeasurementType;

    .line 20
    return-void
.end method


# virtual methods
.method public drainMeasurements()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/measurement/Measurement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v2, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    monitor-enter v2

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 51
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    monitor-exit v2

    .line 54
    :goto_0
    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 53
    .local v0, "measurements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/measurement/Measurement;>;"
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 54
    monitor-exit v2

    goto :goto_0

    .line 55
    .end local v0    # "measurements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/measurement/Measurement;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMeasurementType()Lcom/newrelic/agent/android/measurement/MeasurementType;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurementType:Lcom/newrelic/agent/android/measurement/MeasurementType;

    return-object v0
.end method

.method public produceMeasurement(Lcom/newrelic/agent/android/measurement/Measurement;)V
    .locals 2
    .param p1, "measurement"    # Lcom/newrelic/agent/android/measurement/Measurement;

    .prologue
    .line 29
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    monitor-enter v1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_0
    monitor-exit v1

    .line 34
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public produceMeasurements(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/newrelic/agent/android/measurement/Measurement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "measurements":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/newrelic/agent/android/measurement/Measurement;>;"
    iget-object v1, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    monitor-enter v1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/measurement/producer/BaseMeasurementProducer;->producedMeasurements:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    :cond_1
    monitor-exit v1

    .line 45
    return-void

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
