.class public Lcom/google/android/gms/internal/dk;
.super Ljava/lang/Object;


# instance fields
.field private final li:Ljava/lang/Object;

.field private final qL:Ljava/lang/String;

.field private qQ:I

.field private qR:J

.field private qS:J

.field private qT:I

.field private qU:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/dk;->li:Ljava/lang/Object;

    iput v1, p0, Lcom/google/android/gms/internal/dk;->qQ:I

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->qR:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->qS:J

    iput v1, p0, Lcom/google/android/gms/internal/dk;->qT:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/dk;->qU:I

    iput-object p1, p0, Lcom/google/android/gms/internal/dk;->qL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/internal/ah;J)V
    .locals 6

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->li:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->qS:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    iput-wide p2, p0, Lcom/google/android/gms/internal/dk;->qS:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/dk;->qS:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/dk;->qR:J

    :goto_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/gms/internal/ah;->extras:Landroid/os/Bundle;

    const-string v2, "gw"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    monitor-exit v1

    :goto_1
    return-void

    :cond_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/dk;->qR:J

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/google/android/gms/internal/dk;->qU:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/dk;->qU:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public bk()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->li:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/dk;->qT:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/dk;->qT:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bl()V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->li:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/dk;->qQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/dk;->qQ:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bw()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/dk;->qS:J

    return-wide v0
.end method

.method public q(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    iget-object v1, p0, Lcom/google/android/gms/internal/dk;->li:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/dk;->qL:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->qS:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lcom/google/android/gms/internal/dk;->qR:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "preqs"

    iget v3, p0, Lcom/google/android/gms/internal/dk;->qU:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pclick"

    iget v3, p0, Lcom/google/android/gms/internal/dk;->qQ:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pimp"

    iget v3, p0, Lcom/google/android/gms/internal/dk;->qT:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
