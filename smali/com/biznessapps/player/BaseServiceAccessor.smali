.class public abstract Lcom/biznessapps/player/BaseServiceAccessor;
.super Ljava/lang/Object;
.source "BaseServiceAccessor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UNBIND_SERVICE_ERROR:Ljava/lang/String; = "Cann\'t unbind service"


# instance fields
.field private context:Landroid/content/Context;

.field protected service:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected serviceConnection:Landroid/content/ServiceConnection;

.field private serviceIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/biznessapps/player/BaseServiceAccessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/player/BaseServiceAccessor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor;, "Lcom/biznessapps/player/BaseServiceAccessor<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->serviceIntent:Landroid/content/Intent;

    .line 63
    iput-object p1, p0, Lcom/biznessapps/player/BaseServiceAccessor;->context:Landroid/content/Context;

    .line 64
    invoke-virtual {p0}, Lcom/biznessapps/player/BaseServiceAccessor;->onCreate()V

    .line 65
    return-void
.end method


# virtual methods
.method protected abstract createServiceStub(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public getService()Landroid/os/IInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor;, "Lcom/biznessapps/player/BaseServiceAccessor<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->service:Landroid/os/IInterface;

    return-object v0
.end method

.method protected abstract getServiceClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end method

.method protected getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor;, "Lcom/biznessapps/player/BaseServiceAccessor<TT;>;"
    iget-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->serviceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/biznessapps/player/BaseServiceAccessor$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/player/BaseServiceAccessor$1;-><init>(Lcom/biznessapps/player/BaseServiceAccessor;)V

    iput-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->serviceConnection:Landroid/content/ServiceConnection;

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 71
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor;, "Lcom/biznessapps/player/BaseServiceAccessor<TT;>;"
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/biznessapps/player/BaseServiceAccessor;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/biznessapps/player/BaseServiceAccessor;->getServiceClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->serviceIntent:Landroid/content/Intent;

    .line 72
    iget-object v0, p0, Lcom/biznessapps/player/BaseServiceAccessor;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/biznessapps/player/BaseServiceAccessor;->serviceIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/player/BaseServiceAccessor;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 73
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 80
    .local p0, "this":Lcom/biznessapps/player/BaseServiceAccessor;, "Lcom/biznessapps/player/BaseServiceAccessor<TT;>;"
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/player/BaseServiceAccessor;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/biznessapps/player/BaseServiceAccessor;->getServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/biznessapps/player/BaseServiceAccessor;->TAG:Ljava/lang/String;

    const-string v2, "Cann\'t unbind service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
