.class public Lcom/biznessapps/api/AppHandlers;
.super Ljava/lang/Object;
.source "AppHandlers.java"


# static fields
.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 33
    const-class v0, Lcom/biznessapps/api/AppHandlers;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/biznessapps/api/AppHandlers;->uiHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getUiHandler()Landroid/os/Handler;
    .locals 2

    .prologue
    .line 21
    const-class v1, Lcom/biznessapps/api/AppHandlers;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/biznessapps/api/AppHandlers;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/biznessapps/api/AppHandlers;->uiHandler:Landroid/os/Handler;

    .line 24
    :cond_0
    sget-object v0, Lcom/biznessapps/api/AppHandlers;->uiHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
